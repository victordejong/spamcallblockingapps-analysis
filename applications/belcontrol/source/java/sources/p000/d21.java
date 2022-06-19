package p000;

import com.flexaspect.android.everycallcontrol.ui.fragments.settings.callerid.CallerIdFragment;
/* renamed from: d21 */
/* loaded from: classes-dex2jar.jar:d21.class */
public final /* synthetic */ class d21 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ CallerIdFragment f5744a;

    /* renamed from: b */
    public final /* synthetic */ kq0 f5745b;

    public /* synthetic */ d21(CallerIdFragment callerIdFragment, kq0 kq0Var) {
        this.f5744a = callerIdFragment;
        this.f5745b = kq0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5744a.w0(this.f5745b);
    }
}
