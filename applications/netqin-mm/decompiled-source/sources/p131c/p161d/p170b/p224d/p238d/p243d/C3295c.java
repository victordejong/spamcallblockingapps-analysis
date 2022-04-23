package p131c.p161d.p170b.p224d.p238d.p243d;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.internal.zad;
/* renamed from: c.d.b.d.d.d.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/c.class */
public final class C3295c extends zad {

    /* renamed from: a */
    public final /* synthetic */ Intent f12011a;

    /* renamed from: b */
    public final /* synthetic */ LifecycleFragment f12012b;

    /* renamed from: c */
    public final /* synthetic */ int f12013c;

    public C3295c(Intent intent, LifecycleFragment lifecycleFragment, int i) {
        this.f12011a = intent;
        this.f12012b = lifecycleFragment;
        this.f12013c = i;
    }

    @Override // com.google.android.gms.common.internal.zad
    /* renamed from: a */
    public final void mo17196a() {
        Intent intent = this.f12011a;
        if (intent != null) {
            this.f12012b.startActivityForResult(intent, this.f12013c);
        }
    }
}
