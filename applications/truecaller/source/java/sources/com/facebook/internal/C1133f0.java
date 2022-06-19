package com.facebook.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.internal.p037u0.p040m.C1220a;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018�� \u00072\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/facebook/internal/InstagramCustomTab;", "Lcom/facebook/internal/CustomTab;", "action", "", "parameters", "Landroid/os/Bundle;", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.f0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/f0.class */
public final class C1133f0 extends C1196u {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1133f0(String str, Bundle bundle) {
        super(str, bundle);
        Uri uri;
        l.e(str, "action");
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        l.e(str, "action");
        if (l.a(str, "oauth")) {
            C1161o0 c1161o0 = C1161o0.f3173a;
            uri = C1168q0.m41681b(C1161o0.m41706c(), "oauth/authorize", bundle2);
        } else {
            C1161o0 c1161o02 = C1161o0.f3173a;
            String m41706c = C1161o0.m41706c();
            StringBuilder sb = new StringBuilder();
            C23228f0 c23228f0 = C23228f0.f64291a;
            sb.append(C23228f0.m7349f());
            sb.append("/dialog/");
            sb.append(str);
            uri = C1168q0.m41681b(m41706c, sb.toString(), bundle2);
        }
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(uri, "<set-?>");
            this.f3257a = uri;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
