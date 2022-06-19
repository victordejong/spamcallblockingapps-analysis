package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
import androidx.p010a.p011a.p012a.C0098a;
import androidx.p010a.p011a.p013b.C0104a;
import androidx.p010a.p011a.p013b.C0105b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistry.class */
public class LifecycleRegistry extends AbstractC1253j {
    private int mAddingObserverCounter;
    private final boolean mEnforceMainThread;
    private boolean mHandlingEvent;
    private final WeakReference<AbstractC1263p> mLifecycleOwner;
    private boolean mNewEventOccurred;
    private C0104a<AbstractC1262o, C1219a> mObserverMap;
    private ArrayList<AbstractC1253j.EnumC1256b> mParentStates;
    private AbstractC1253j.EnumC1256b mState;

    /* renamed from: androidx.lifecycle.LifecycleRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleRegistry$a.class */
    public static final class C1219a {

        /* renamed from: a */
        AbstractC1253j.EnumC1256b f4773a;

        /* renamed from: b */
        AbstractC1261n f4774b;

        C1219a(AbstractC1262o abstractC1262o, AbstractC1253j.EnumC1256b enumC1256b) {
            this.f4774b = C1265r.m43292a(abstractC1262o);
            this.f4773a = enumC1256b;
        }

        /* renamed from: a */
        final void m43337a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
            AbstractC1253j.EnumC1256b targetState = enumC1255a.getTargetState();
            this.f4773a = LifecycleRegistry.min(this.f4773a, targetState);
            this.f4774b.mo39588a(abstractC1263p, enumC1255a);
            this.f4773a = targetState;
        }
    }

    public LifecycleRegistry(AbstractC1263p abstractC1263p) {
        this(abstractC1263p, true);
    }

    private LifecycleRegistry(AbstractC1263p abstractC1263p, boolean z) {
        this.mObserverMap = new C0104a<>();
        this.mAddingObserverCounter = 0;
        this.mHandlingEvent = false;
        this.mNewEventOccurred = false;
        this.mParentStates = new ArrayList<>();
        this.mLifecycleOwner = new WeakReference<>(abstractC1263p);
        this.mState = AbstractC1253j.EnumC1256b.INITIALIZED;
        this.mEnforceMainThread = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void backwardPass(AbstractC1263p abstractC1263p) {
        C0104a<AbstractC1262o, C1219a> c0104a = this.mObserverMap;
        C0105b.C0107b c0107b = new C0105b.C0107b(c0104a.f206c, c0104a.f205b);
        c0104a.f207d.put(c0107b, Boolean.FALSE);
        while (c0107b.hasNext() && !this.mNewEventOccurred) {
            Map.Entry next = c0107b.next();
            C1219a c1219a = (C1219a) next.getValue();
            while (c1219a.f4773a.compareTo(this.mState) > 0 && !this.mNewEventOccurred && this.mObserverMap.m46405c(next.getKey())) {
                AbstractC1253j.EnumC1255a downFrom = AbstractC1253j.EnumC1255a.downFrom(c1219a.f4773a);
                if (downFrom == null) {
                    throw new IllegalStateException("no event down from " + c1219a.f4773a);
                }
                pushParentState(downFrom.getTargetState());
                c1219a.m43337a(abstractC1263p, downFrom);
                popParentState();
            }
        }
    }

    private AbstractC1253j.EnumC1256b calculateTargetState(AbstractC1262o abstractC1262o) {
        C0104a<AbstractC1262o, C1219a> c0104a = this.mObserverMap;
        AbstractC1253j.EnumC1256b enumC1256b = null;
        C0105b.C0108c<AbstractC1262o, C1219a> c0108c = c0104a.m46405c(abstractC1262o) ? c0104a.f204a.get(abstractC1262o).f212d : null;
        AbstractC1253j.EnumC1256b enumC1256b2 = c0108c != null ? c0108c.getValue().f4773a : null;
        if (!this.mParentStates.isEmpty()) {
            ArrayList<AbstractC1253j.EnumC1256b> arrayList = this.mParentStates;
            enumC1256b = arrayList.get(arrayList.size() - 1);
        }
        return min(min(this.mState, enumC1256b2), enumC1256b);
    }

    public static LifecycleRegistry createUnsafe(AbstractC1263p abstractC1263p) {
        return new LifecycleRegistry(abstractC1263p, false);
    }

    private void enforceMainThreadIfNeeded(String str) {
        if (!this.mEnforceMainThread || C0098a.m46411a().f197a.mo46406c()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void forwardPass(AbstractC1263p abstractC1263p) {
        C0105b<AbstractC1262o, C1219a>.C0109d a = this.mObserverMap.m46404a();
        while (a.hasNext() && !this.mNewEventOccurred) {
            Map.Entry next = a.next();
            C1219a c1219a = (C1219a) next.getValue();
            while (c1219a.f4773a.compareTo(this.mState) < 0 && !this.mNewEventOccurred && this.mObserverMap.m46405c(next.getKey())) {
                pushParentState(c1219a.f4773a);
                AbstractC1253j.EnumC1255a upFrom = AbstractC1253j.EnumC1255a.upFrom(c1219a.f4773a);
                if (upFrom == null) {
                    throw new IllegalStateException("no event up from " + c1219a.f4773a);
                }
                c1219a.m43337a(abstractC1263p, upFrom);
                popParentState();
            }
        }
    }

    private boolean isSynced() {
        if (this.mObserverMap.f208e == 0) {
            return true;
        }
        AbstractC1253j.EnumC1256b enumC1256b = this.mObserverMap.f205b.getValue().f4773a;
        AbstractC1253j.EnumC1256b enumC1256b2 = this.mObserverMap.f206c.getValue().f4773a;
        return enumC1256b == enumC1256b2 && this.mState == enumC1256b2;
    }

    static AbstractC1253j.EnumC1256b min(AbstractC1253j.EnumC1256b enumC1256b, AbstractC1253j.EnumC1256b enumC1256b2) {
        return (enumC1256b2 == null || enumC1256b2.compareTo(enumC1256b) >= 0) ? enumC1256b : enumC1256b2;
    }

    private void moveToState(AbstractC1253j.EnumC1256b enumC1256b) {
        if (this.mState == enumC1256b) {
            return;
        }
        this.mState = enumC1256b;
        if (this.mHandlingEvent || this.mAddingObserverCounter != 0) {
            this.mNewEventOccurred = true;
            return;
        }
        this.mHandlingEvent = true;
        sync();
        this.mHandlingEvent = false;
    }

    private void popParentState() {
        ArrayList<AbstractC1253j.EnumC1256b> arrayList = this.mParentStates;
        arrayList.remove(arrayList.size() - 1);
    }

    private void pushParentState(AbstractC1253j.EnumC1256b enumC1256b) {
        this.mParentStates.add(enumC1256b);
    }

    private void sync() {
        AbstractC1263p abstractC1263p = this.mLifecycleOwner.get();
        if (abstractC1263p != null) {
            while (!isSynced()) {
                this.mNewEventOccurred = false;
                if (this.mState.compareTo(this.mObserverMap.f205b.getValue().f4773a) < 0) {
                    backwardPass(abstractC1263p);
                }
                C0105b.C0108c<AbstractC1262o, C1219a> c0108c = this.mObserverMap.f206c;
                if (!this.mNewEventOccurred && c0108c != null && this.mState.compareTo(c0108c.getValue().f4773a) > 0) {
                    forwardPass(abstractC1263p);
                }
            }
            this.mNewEventOccurred = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    @Override // androidx.lifecycle.AbstractC1253j
    public void addObserver(AbstractC1262o abstractC1262o) {
        AbstractC1263p abstractC1263p;
        enforceMainThreadIfNeeded("addObserver");
        C1219a c1219a = new C1219a(abstractC1262o, this.mState == AbstractC1253j.EnumC1256b.DESTROYED ? AbstractC1253j.EnumC1256b.DESTROYED : AbstractC1253j.EnumC1256b.INITIALIZED);
        if (this.mObserverMap.mo46402a(abstractC1262o, c1219a) == null && (abstractC1263p = this.mLifecycleOwner.get()) != null) {
            boolean z = this.mAddingObserverCounter != 0 || this.mHandlingEvent;
            AbstractC1253j.EnumC1256b calculateTargetState = calculateTargetState(abstractC1262o);
            this.mAddingObserverCounter++;
            while (c1219a.f4773a.compareTo(calculateTargetState) < 0 && this.mObserverMap.m46405c(abstractC1262o)) {
                pushParentState(c1219a.f4773a);
                AbstractC1253j.EnumC1255a upFrom = AbstractC1253j.EnumC1255a.upFrom(c1219a.f4773a);
                if (upFrom == null) {
                    throw new IllegalStateException("no event up from " + c1219a.f4773a);
                }
                c1219a.m43337a(abstractC1263p, upFrom);
                popParentState();
                calculateTargetState = calculateTargetState(abstractC1262o);
            }
            if (!z) {
                sync();
            }
            this.mAddingObserverCounter--;
        }
    }

    @Override // androidx.lifecycle.AbstractC1253j
    public AbstractC1253j.EnumC1256b getCurrentState() {
        return this.mState;
    }

    public int getObserverCount() {
        enforceMainThreadIfNeeded("getObserverCount");
        return this.mObserverMap.f208e;
    }

    public void handleLifecycleEvent(AbstractC1253j.EnumC1255a enumC1255a) {
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(enumC1255a.getTargetState());
    }

    @Deprecated
    public void markState(AbstractC1253j.EnumC1256b enumC1256b) {
        enforceMainThreadIfNeeded("markState");
        setCurrentState(enumC1256b);
    }

    @Override // androidx.lifecycle.AbstractC1253j
    public void removeObserver(AbstractC1262o abstractC1262o) {
        enforceMainThreadIfNeeded("removeObserver");
        this.mObserverMap.mo46401b(abstractC1262o);
    }

    public void setCurrentState(AbstractC1253j.EnumC1256b enumC1256b) {
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(enumC1256b);
    }
}
