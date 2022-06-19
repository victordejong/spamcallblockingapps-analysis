package p071d6;

import java.lang.ref.WeakReference;
import p071d6.C2478a;
import p191o6.EnumC3901d;
/* renamed from: d6.b */
/* loaded from: classes-dex2jar.jar:d6/b.class */
public abstract class AbstractC2481b implements C2478a.AbstractC2480b {
    private final WeakReference<C2478a.AbstractC2480b> appStateCallback;
    private final C2478a appStateMonitor;
    private EnumC3901d currentAppState;
    private boolean isRegisteredForAppState;

    public AbstractC2481b() {
        this(C2478a.m3524a());
    }

    public AbstractC2481b(C2478a c2478a) {
        this.isRegisteredForAppState = false;
        this.currentAppState = EnumC3901d.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.appStateMonitor = c2478a;
        this.appStateCallback = new WeakReference<>(this);
    }

    public EnumC3901d getAppState() {
        return this.currentAppState;
    }

    public void incrementTsnsCount(int i) {
        this.appStateMonitor.f8720f.addAndGet(i);
    }

    @Override // p071d6.C2478a.AbstractC2480b
    public void onUpdateAppState(EnumC3901d enumC3901d) {
        EnumC3901d enumC3901d2 = this.currentAppState;
        EnumC3901d enumC3901d3 = EnumC3901d.APPLICATION_PROCESS_STATE_UNKNOWN;
        if (enumC3901d2 == enumC3901d3) {
            this.currentAppState = enumC3901d;
        } else if (enumC3901d2 == enumC3901d || enumC3901d == enumC3901d3) {
        } else {
            this.currentAppState = EnumC3901d.FOREGROUND_BACKGROUND;
        }
    }

    public void registerForAppState() {
        if (this.isRegisteredForAppState) {
            return;
        }
        C2478a c2478a = this.appStateMonitor;
        this.currentAppState = c2478a.f8727m;
        WeakReference<C2478a.AbstractC2480b> weakReference = this.appStateCallback;
        synchronized (c2478a.f8718d) {
            c2478a.f8718d.add(weakReference);
        }
        this.isRegisteredForAppState = true;
    }

    public void unregisterForAppState() {
        if (!this.isRegisteredForAppState) {
            return;
        }
        C2478a c2478a = this.appStateMonitor;
        WeakReference<C2478a.AbstractC2480b> weakReference = this.appStateCallback;
        synchronized (c2478a.f8718d) {
            c2478a.f8718d.remove(weakReference);
        }
        this.isRegisteredForAppState = false;
    }
}
