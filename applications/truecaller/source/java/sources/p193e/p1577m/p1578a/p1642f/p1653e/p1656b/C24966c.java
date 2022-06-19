package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.zag;
/* renamed from: e.m.a.f.e.b.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/c.class */
public final class C24966c extends zag {

    /* renamed from: a */
    public final /* synthetic */ Intent f69909a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f69910b;

    /* renamed from: c */
    public final /* synthetic */ int f69911c;

    public C24966c(Intent intent, Fragment fragment, int i) {
        this.f69909a = intent;
        this.f69910b = fragment;
        this.f69911c = i;
    }

    @Override // com.google.android.gms.common.internal.zag
    /* renamed from: a */
    public final void mo4257a() {
        Intent intent = this.f69909a;
        if (intent != null) {
            this.f69910b.startActivityForResult(intent, this.f69911c);
        }
    }
}
