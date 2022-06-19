package com.truecaller.messaging.linkpreviews;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/linkpreviews/LinkMetaData.class */
public final class LinkMetaData {

    /* renamed from: a */
    public final String f13534a;

    /* renamed from: b */
    public final String f13535b;

    /* renamed from: c */
    public final String f13536c;

    /* renamed from: d */
    public final String f13537d;

    /* renamed from: e */
    public final Type f13538e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;", "", "<init>", "(Ljava/lang/String;I)V", "DEFAULT", "MEDIA", "PLAYABLE", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/linkpreviews/LinkMetaData$Type.class */
    public enum Type {
        DEFAULT,
        MEDIA,
        PLAYABLE
    }

    public LinkMetaData(String str, String str2, String str3, String str4, Type type) {
        l.e(str, "url");
        l.e(str2, "title");
        l.e(str3, "description");
        l.e(type, "type");
        this.f13534a = str;
        this.f13535b = str2;
        this.f13536c = str3;
        this.f13537d = str4;
        this.f13538e = type;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof LinkMetaData)) {
                return false;
            }
            LinkMetaData linkMetaData = (LinkMetaData) obj;
            return l.a(this.f13534a, linkMetaData.f13534a) && l.a(this.f13535b, linkMetaData.f13535b) && l.a(this.f13536c, linkMetaData.f13536c) && l.a(this.f13537d, linkMetaData.f13537d) && l.a(this.f13538e, linkMetaData.f13538e);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f13534a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13535b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f13536c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f13537d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        Type type = this.f13538e;
        if (type != null) {
            i = type.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LinkMetaData(url=");
        m8728C.append(this.f13534a);
        m8728C.append(", title=");
        m8728C.append(this.f13535b);
        m8728C.append(", description=");
        m8728C.append(this.f13536c);
        m8728C.append(", imageUrl=");
        m8728C.append(this.f13537d);
        m8728C.append(", type=");
        m8728C.append(this.f13538e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
