package p193e.p194a.p1080o.p1097b;

import com.google.common.base.CharMatcher;
import com.truecaller.contextcall.C3771R;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.FeatureType;
import com.truecaller.data.entity.MessageType;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.b.c */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/c.class */
public final class C18702c implements AbstractC18700b {

    /* renamed from: a */
    public final g f52568a = C25225a.m3978P1(new C18703a());

    /* renamed from: b */
    public final AbstractC19223c0 f52569b;

    /* renamed from: c */
    public final AbstractC8621z f52570c;

    /* renamed from: e.a.o.b.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/c$a.class */
    public static final class C18703a extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18703a() {
            super(0);
            C18702c.this = r4;
        }

        public Object invoke() {
            return Integer.valueOf(C18702c.this.f52569b.mo13762h(C3771R.integer.context_call_custom_message_max_length));
        }
    }

    @Inject
    public C18702c(AbstractC19223c0 abstractC19223c0, AbstractC8621z abstractC8621z) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC8621z, "phoneNumberHelper");
        this.f52569b = abstractC19223c0;
        this.f52570c = abstractC8621z;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18700b
    /* renamed from: a */
    public String mo14621a(String str) {
        l.e(str, "message");
        CharMatcher.JavaIsoControl javaIsoControl = CharMatcher.JavaIsoControl.INSTANCE;
        Objects.requireNonNull(javaIsoControl);
        String charSequence = str.toString();
        int indexIn = javaIsoControl.indexIn(charSequence);
        if (indexIn != -1) {
            char[] charArray = charSequence.toCharArray();
            int i = 1;
            loop0: while (true) {
                while (true) {
                    indexIn++;
                    if (indexIn == charArray.length) {
                        break loop0;
                    } else if (javaIsoControl.matches(charArray[indexIn])) {
                        break;
                    } else {
                        charArray[indexIn - i] = charArray[indexIn];
                    }
                }
                i++;
            }
            charSequence = new String(charArray, 0, indexIn - i);
        }
        l.d(charSequence, "CharMatcher\n            …     .removeFrom(message)");
        String obj = v.g0(charSequence).toString();
        if (!r.p(obj) && obj.length() <= ((Number) this.f52568a.getValue()).intValue()) {
            return obj;
        }
        return null;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18700b
    /* renamed from: b */
    public CallContextMessage mo14620b(String str, String str2, String str3, FeatureType featureType, MessageType messageType, String str4) {
        String mo28181j;
        l.e(str3, "message");
        l.e(featureType, "featureType");
        l.e(messageType, "messageType");
        if (!(messageType instanceof MessageType.Preset)) {
            str3 = mo14621a(str3);
        }
        if (str3 == null) {
            return null;
        }
        if ((str2 == null || r.p(str2)) || (mo28181j = this.f52570c.mo28181j(str2)) == null) {
            return null;
        }
        if (str == null) {
            str = C22128a.m8627e2("UUID.randomUUID().toString()");
        }
        return new CallContextMessage(str, mo28181j, str3, featureType, messageType, str4, false, 64);
    }
}
