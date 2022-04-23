package androidx.lifecycle;

import androidx.a.a.b.b;
import androidx.lifecycle.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistry.class */
public class LifecycleRegistry extends j {
    private int mAddingObserverCounter;
    private final boolean mEnforceMainThread;
    private boolean mHandlingEvent;
    private final WeakReference<p> mLifecycleOwner;
    private boolean mNewEventOccurred;
    private androidx.a.a.b.a<o, a> mObserverMap;
    private ArrayList<j.b> mParentStates;
    private j.b mState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistry$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        j.b f2531a;

        /* renamed from: b  reason: collision with root package name */
        n f2532b;

        a(o oVar, j.b bVar) {
            this.f2532b = r.a(oVar);
            this.f2531a = bVar;
        }

        final void a(p pVar, j.a aVar) {
            j.b targetState = aVar.getTargetState();
            this.f2531a = LifecycleRegistry.min(this.f2531a, targetState);
            this.f2532b.a(pVar, aVar);
            this.f2531a = targetState;
        }
    }

    public LifecycleRegistry(p pVar) {
        this(pVar, true);
    }

    private LifecycleRegistry(p pVar, boolean z) {
        this.mObserverMap = new androidx.a.a.b.a<>();
        this.mAddingObserverCounter = 0;
        this.mHandlingEvent = false;
        this.mNewEventOccurred = false;
        this.mParentStates = new ArrayList<>();
        this.mLifecycleOwner = new WeakReference<>(pVar);
        this.mState = j.b.INITIALIZED;
        this.mEnforceMainThread = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void backwardPass(p pVar) {
        androidx.a.a.b.a<o, a> aVar = this.mObserverMap;
        b.C0014b bVar = new b.C0014b(aVar.f499c, aVar.f498b);
        aVar.f500d.put(bVar, Boolean.FALSE);
        while (bVar.hasNext() && !this.mNewEventOccurred) {
            Map.Entry next = bVar.next();
            a aVar2 = (a) next.getValue();
            while (aVar2.f2531a.compareTo(this.mState) > 0 && !this.mNewEventOccurred && this.mObserverMap.c(next.getKey())) {
                j.a downFrom = j.a.downFrom(aVar2.f2531a);
                if (downFrom != null) {
                    pushParentState(downFrom.getTargetState());
                    aVar2.a(pVar, downFrom);
                    popParentState();
                } else {
                    throw new IllegalStateException("no event down from " + aVar2.f2531a);
                }
            }
        }
    }

    private j.b calculateTargetState(o oVar) {
        androidx.a.a.b.a<o, a> aVar = this.mObserverMap;
        j.b bVar = null;
        b.c<o, a> cVar = aVar.c(oVar) ? aVar.f497a.get(oVar).f504d : null;
        j.b bVar2 = cVar != null ? cVar.getValue().f2531a : null;
        if (!this.mParentStates.isEmpty()) {
            ArrayList<j.b> arrayList = this.mParentStates;
            bVar = arrayList.get(arrayList.size() - 1);
        }
        return min(min(this.mState, bVar2), bVar);
    }

    public static LifecycleRegistry createUnsafe(p pVar) {
        return new LifecycleRegistry(pVar, false);
    }

    private void enforceMainThreadIfNeeded(String str) {
        if (this.mEnforceMainThread && !androidx.a.a.a.a.a().f490a.c()) {
            throw new IllegalStateException("Method " + str + " must be called on the main thread");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void forwardPass(p pVar) {
        b<o, a>.d a2 = this.mObserverMap.a();
        while (a2.hasNext() && !this.mNewEventOccurred) {
            Map.Entry next = a2.next();
            a aVar = (a) next.getValue();
            while (aVar.f2531a.compareTo(this.mState) < 0 && !this.mNewEventOccurred && this.mObserverMap.c(next.getKey())) {
                pushParentState(aVar.f2531a);
                j.a upFrom = j.a.upFrom(aVar.f2531a);
                if (upFrom != null) {
                    aVar.a(pVar, upFrom);
                    popParentState();
                } else {
                    throw new IllegalStateException("no event up from " + aVar.f2531a);
                }
            }
        }
    }

    private boolean isSynced() {
        if (this.mObserverMap.e == 0) {
            return true;
        }
        j.b bVar = this.mObserverMap.f498b.getValue().f2531a;
        j.b bVar2 = this.mObserverMap.f499c.getValue().f2531a;
        return bVar == bVar2 && this.mState == bVar2;
    }

    static j.b min(j.b bVar, j.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    private void moveToState(j.b bVar) {
        if (this.mState != bVar) {
            this.mState = bVar;
            if (this.mHandlingEvent || this.mAddingObserverCounter != 0) {
                this.mNewEventOccurred = true;
                return;
            }
            this.mHandlingEvent = true;
            sync();
            this.mHandlingEvent = false;
        }
    }

    private void popParentState() {
        ArrayList<j.b> arrayList = this.mParentStates;
        arrayList.remove(arrayList.size() - 1);
    }

    private void pushParentState(j.b bVar) {
        this.mParentStates.add(bVar);
    }

    private void sync() {
        p pVar = this.mLifecycleOwner.get();
        if (pVar != null) {
            while (!isSynced()) {
                this.mNewEventOccurred = false;
                if (this.mState.compareTo(this.mObserverMap.f498b.getValue().f2531a) < 0) {
                    backwardPass(pVar);
                }
                b.c<o, a> cVar = this.mObserverMap.f499c;
                if (!this.mNewEventOccurred && cVar != null && this.mState.compareTo(cVar.getValue().f2531a) > 0) {
                    forwardPass(pVar);
                }
            }
            this.mNewEventOccurred = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    @Override // androidx.lifecycle.j
    public void addObserver(o oVar) {
        p pVar;
        enforceMainThreadIfNeeded("addObserver");
        a aVar = new a(oVar, this.mState == j.b.DESTROYED ? j.b.DESTROYED : j.b.INITIALIZED);
        if (this.mObserverMap.a(oVar, aVar) == null && (pVar = this.mLifecycleOwner.get()) != null) {
            boolean z = this.mAddingObserverCounter != 0 || this.mHandlingEvent;
            j.b calculateTargetState = calculateTargetState(oVar);
            this.mAddingObserverCounter++;
            while (aVar.f2531a.compareTo(calculateTargetState) < 0 && this.mObserverMap.c(oVar)) {
                pushParentState(aVar.f2531a);
                j.a upFrom = j.a.upFrom(aVar.f2531a);
                if (upFrom != null) {
                    aVar.a(pVar, upFrom);
                    popParentState();
                    calculateTargetState = calculateTargetState(oVar);
                } else {
                    throw new IllegalStateException("no event up from " + aVar.f2531a);
                }
            }
            if (!z) {
                sync();
            }
            this.mAddingObserverCounter--;
        }
    }

    @Override // androidx.lifecycle.j
    public j.b getCurrentState() {
        return this.mState;
    }

    public int getObserverCount() {
        enforceMainThreadIfNeeded("getObserverCount");
        return this.mObserverMap.e;
    }

    public void handleLifecycleEvent(j.a aVar) {
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(aVar.getTargetState());
    }

    @Deprecated
    public void markState(j.b bVar) {
        enforceMainThreadIfNeeded("markState");
        setCurrentState(bVar);
    }

    @Override // androidx.lifecycle.j
    public void removeObserver(o oVar) {
        enforceMainThreadIfNeeded("removeObserver");
        this.mObserverMap.b(oVar);
    }

    public void setCurrentState(j.b bVar) {
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(bVar);
    }
}
