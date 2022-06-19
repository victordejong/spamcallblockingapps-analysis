package com.facebook.appevents.p031m0;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\b��\u0018�� \r2\u00020\u0001:\u0002\r\u000eB\u0019\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u0003H\u0016J\u0006\u0010\u000b\u001a\u00020\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/internal/SourceApplicationInfo;", "", "callingApplicationPackage", "", "isOpenedByAppLink", "", "(Ljava/lang/String;Z)V", "getCallingApplicationPackage", "()Ljava/lang/String;", "()Z", "toString", "writeSourceApplicationInfoToDisk", "", "Companion", "Factory", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.n */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/n.class */
public final class C1046n {

    /* renamed from: a */
    public final String f2887a;

    /* renamed from: b */
    public final boolean f2888b;

    public C1046n(String str, boolean z, f fVar) {
        this.f2887a = str;
        this.f2888b = z;
    }

    public String toString() {
        String str = this.f2888b ? "Applink" : "Unclassified";
        String str2 = str;
        if (this.f2887a != null) {
            StringBuilder m8724D = C22128a.m8724D(str, '(');
            m8724D.append((Object) this.f2887a);
            m8724D.append(')');
            str2 = m8724D.toString();
        }
        return str2;
    }
}
