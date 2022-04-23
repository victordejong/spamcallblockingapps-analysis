package p459j.p460a.p572v0.p573c;

import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import kotlin.Metadata;
import p626l.C14976h;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018�� \u00072\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/urlscan/data/UrlRating;", "", "(Ljava/lang/String;I)V", "UNRATED", "SAFE", "SUSPICIOUS", "MALICIOUS", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.v0.c.k */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/k.class */
public enum EnumC13715k {
    UNRATED,
    SAFE,
    SUSPICIOUS,
    MALICIOUS;
    

    /* renamed from: f */
    public static final C13716a f30799f = new C13716a(null);

    /* renamed from: j.a.v0.c.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/c/k$a.class */
    public static final class C13716a {
        public C13716a() {
        }

        public /* synthetic */ C13716a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m3613a(EnumC13715k kVar) {
            C15149k.m377b(kVar, SmsUrlScanResultRealmObject.RATING);
            int i = C13714j.f30793a[kVar.ordinal()];
            int i2 = 3;
            if (i == 1) {
                i2 = 0;
            } else if (i != 2) {
                if (i == 3) {
                    i2 = 2;
                } else if (i == 4) {
                    i2 = 1;
                } else {
                    throw new C14976h();
                }
            }
            return i2;
        }
    }
}
