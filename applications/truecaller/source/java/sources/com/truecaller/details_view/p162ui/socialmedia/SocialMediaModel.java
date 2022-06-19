package com.truecaller.details_view.p162ui.socialmedia;

import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: com.truecaller.details_view.ui.socialmedia.SocialMediaModel */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/socialmedia/SocialMediaModel.class */
public final class SocialMediaModel {

    /* renamed from: a */
    public final Type f11787a;

    /* renamed from: b */
    public final String f11788b;

    /* renamed from: c */
    public final int f11789c;

    /* renamed from: d */
    public final a<s> f11790d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;", "", "", RemoteMessageConst.Notification.PRIORITY, "I", "getPriority", "()I", "<init>", "(Ljava/lang/String;II)V", "WEBSITE", "FACEBOOK", "INSTAGRAM", "GOOGLE_PLAY_STORE", "TWITTER", "details-view_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.details_view.ui.socialmedia.SocialMediaModel$Type */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type.class */
    public enum Type {
        WEBSITE(1),
        FACEBOOK(2),
        INSTAGRAM(3),
        GOOGLE_PLAY_STORE(4),
        TWITTER(5);
        
        private final int priority;

        Type(int i) {
            this.priority = i;
        }

        public final int getPriority() {
            return this.priority;
        }
    }

    public SocialMediaModel(Type type, String str, int i, a<s> aVar) {
        l.e(type, "type");
        l.e(str, "text");
        l.e(aVar, "onClick");
        this.f11787a = type;
        this.f11788b = str;
        this.f11789c = i;
        this.f11790d = aVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SocialMediaModel)) {
                return false;
            }
            SocialMediaModel socialMediaModel = (SocialMediaModel) obj;
            return l.a(this.f11787a, socialMediaModel.f11787a) && l.a(this.f11788b, socialMediaModel.f11788b) && this.f11789c == socialMediaModel.f11789c && l.a(this.f11790d, socialMediaModel.f11790d);
        }
        return true;
    }

    public int hashCode() {
        Type type = this.f11787a;
        int i = 0;
        int hashCode = type != null ? type.hashCode() : 0;
        String str = this.f11788b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int i2 = this.f11789c;
        a<s> aVar = this.f11790d;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SocialMediaModel(type=");
        m8728C.append(this.f11787a);
        m8728C.append(", text=");
        m8728C.append(this.f11788b);
        m8728C.append(", icon=");
        m8728C.append(this.f11789c);
        m8728C.append(", onClick=");
        m8728C.append(this.f11790d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
