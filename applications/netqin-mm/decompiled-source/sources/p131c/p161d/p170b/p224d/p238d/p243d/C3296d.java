package p131c.p161d.p170b.p224d.p238d.p243d;

import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.zad;
/* renamed from: c.d.b.d.d.d.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/d.class */
public final class C3296d extends zad {

    /* renamed from: a */
    public final /* synthetic */ Intent f12014a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f12015b;

    /* renamed from: c */
    public final /* synthetic */ int f12016c;

    public C3296d(Intent intent, Fragment fragment, int i) {
        this.f12014a = intent;
        this.f12015b = fragment;
        this.f12016c = i;
    }

    @Override // com.google.android.gms.common.internal.zad
    /* renamed from: a */
    public final void mo17196a() {
        Intent intent = this.f12014a;
        if (intent != null) {
            this.f12015b.startActivityForResult(intent, this.f12016c);
        }
    }
}
