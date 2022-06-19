package p000;

import com.flexaspect.android.everycallcontrol.ui.base.BaseSettingFragment;
/* renamed from: ev0 */
/* loaded from: classes-dex2jar.jar:ev0.class */
public final /* synthetic */ class ev0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BaseSettingFragment f6447a;

    /* renamed from: b */
    public final /* synthetic */ int f6448b;

    /* renamed from: c */
    public final /* synthetic */ kq0 f6449c;

    public /* synthetic */ ev0(BaseSettingFragment baseSettingFragment, int i, kq0 kq0Var) {
        this.f6447a = baseSettingFragment;
        this.f6448b = i;
        this.f6449c = kq0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6447a.L(this.f6448b, this.f6449c);
    }
}
