package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.p121d.C2284a;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.nj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nj.class */
public final class C3356nj extends C3366nt {

    /* renamed from: a */
    private final Map<String, String> f17010a;

    /* renamed from: b */
    private final Context f17011b;

    public C3356nj(act actVar, Map<String, String> map) {
        super(actVar, "storePicture");
        this.f17010a = map;
        this.f17011b = actVar.mo13444f();
    }

    /* renamed from: a */
    public final void m7419a() {
        if (this.f17011b == null) {
            m7398a("Activity context is not available");
            return;
        }
        C2341q.m14744c();
        if (!C3567ve.m6957e(this.f17011b).m7901c()) {
            m7398a("Feature is not supported by the device.");
            return;
        }
        String str = this.f17010a.get("iurl");
        if (TextUtils.isEmpty(str)) {
            m7398a("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            m7398a(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
        } else {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            C2341q.m14744c();
            if (!C3567ve.m6970b(lastPathSegment)) {
                String valueOf2 = String.valueOf(lastPathSegment);
                m7398a(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                return;
            }
            Resources m7089d = C2341q.m14740g().m7089d();
            C2341q.m14744c();
            AlertDialog.Builder m6961d = C3567ve.m6961d(this.f17011b);
            m6961d.setTitle(m7089d != null ? m7089d.getString(C2284a.C2285a.f6592s1) : "Save image");
            m6961d.setMessage(m7089d != null ? m7089d.getString(C2284a.C2285a.f6593s2) : "Allow Ad to store image in Picture gallery?");
            m6961d.setPositiveButton(m7089d != null ? m7089d.getString(C2284a.C2285a.f6594s3) : "Accept", new DialogInterface$OnClickListenerC3359nm(this, str, lastPathSegment));
            m6961d.setNegativeButton(m7089d != null ? m7089d.getString(C2284a.C2285a.f6595s4) : "Decline", new DialogInterface$OnClickListenerC3358nl(this));
            m6961d.create().show();
        }
    }
}
