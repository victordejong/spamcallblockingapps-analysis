package p185o0;

import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputContentInfo;
import p163m0.C3563c;
import p163m0.C3589v;
/* renamed from: o0.d */
/* loaded from: classes-dex2jar.jar:o0/d.class */
public class C3809d implements AbstractC3810e {

    /* renamed from: a */
    public final /* synthetic */ View f12285a;

    public C3809d(View view) {
        this.f12285a = view;
    }

    /* renamed from: a */
    public boolean m1782a(C3811f c3811f, int i, Bundle bundle) {
        boolean z = false;
        Bundle bundle2 = bundle;
        if (Build.VERSION.SDK_INT >= 25) {
            bundle2 = bundle;
            if ((i & 1) != 0) {
                try {
                    c3811f.f12286a.mo1779c();
                    InputContentInfo inputContentInfo = (InputContentInfo) c3811f.f12286a.mo1781a();
                    Bundle bundle3 = bundle == null ? new Bundle() : new Bundle(bundle);
                    bundle3.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo);
                    bundle2 = bundle3;
                } catch (Exception e) {
                    Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                    return false;
                }
            }
        }
        ClipData clipData = new ClipData(c3811f.f12286a.getDescription(), new ClipData.Item(c3811f.f12286a.mo1780b()));
        C3563c.C3564a c3564a = Build.VERSION.SDK_INT >= 31 ? new C3563c.C3564a(clipData, 2) : new C3563c.C3566c(clipData, 2);
        c3564a.mo2149a(c3811f.f12286a.mo1778d());
        c3564a.setExtras(bundle2);
        if (C3589v.m2107q(this.f12285a, c3564a.build()) == null) {
            z = true;
        }
        return z;
    }
}
