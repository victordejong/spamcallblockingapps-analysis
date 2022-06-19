package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.internal.zag;
/* renamed from: e.m.a.f.e.b.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/d.class */
public final class C24967d extends zag {

    /* renamed from: a */
    public final /* synthetic */ Intent f69912a;

    /* renamed from: b */
    public final /* synthetic */ LifecycleFragment f69913b;

    public C24967d(Intent intent, LifecycleFragment lifecycleFragment) {
        this.f69912a = intent;
        this.f69913b = lifecycleFragment;
    }

    @Override // com.google.android.gms.common.internal.zag
    /* renamed from: a */
    public final void mo4257a() {
        Intent intent = this.f69912a;
        if (intent != null) {
            this.f69913b.startActivityForResult(intent, 2);
        }
    }
}
