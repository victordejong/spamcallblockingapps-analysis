package p000;

import com.flexaspect.android.everycallcontrol.ui.fragments.settings.callerid.CallerIdFragment;
/* renamed from: e21 */
/* loaded from: classes-dex2jar.jar:e21.class */
public final /* synthetic */ class e21 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ CallerIdFragment f6235a;

    /* renamed from: b */
    public final /* synthetic */ int f6236b;

    /* renamed from: c */
    public final /* synthetic */ kq0 f6237c;

    public /* synthetic */ e21(CallerIdFragment callerIdFragment, int i, kq0 kq0Var) {
        this.f6235a = callerIdFragment;
        this.f6236b = i;
        this.f6237c = kq0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6235a.o0(this.f6236b, this.f6237c);
    }
}
