package com.facebook.internal;

import android.net.Uri;
import android.os.Bundle;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018�� \u00122\u00020\u0001:\u0001\u0012B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003R\u001a\u0010\u0007\u001a\u00020\bX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/CustomTab;", "", "action", "", "parameters", "Landroid/os/Bundle;", "(Ljava/lang/String;Landroid/os/Bundle;)V", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "openCustomTab", "", "activity", "Landroid/app/Activity;", "packageName", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u.class */
public class C1196u {

    /* renamed from: a */
    public Uri f3257a;

    public C1196u(String str, Bundle bundle) {
        l.e(str, "action");
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        l.e(str, "action");
        C1161o0 c1161o0 = C1161o0.f3173a;
        String m41708a = C1161o0.m41708a();
        StringBuilder sb = new StringBuilder();
        C23228f0 c23228f0 = C23228f0.f64291a;
        sb.append(C23228f0.m7349f());
        sb.append("/dialog/");
        sb.append(str);
        this.f3257a = C1168q0.m41681b(m41708a, sb.toString(), bundle2);
    }
}
