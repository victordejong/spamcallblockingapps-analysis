package p193e.p194a.p1114o5;

import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p195a.AbstractC6392i0;
import s1.z.c.l;
/* renamed from: e.a.o5.m1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/m1.class */
public final class C19059m1 implements AbstractC19056l1 {

    /* renamed from: a */
    public final String f53225a = "/raw/tc_message_tone";

    /* renamed from: b */
    public final String f53226b = "/2131821070";

    /* renamed from: c */
    public final String f53227c = "/2131821073";

    /* renamed from: d */
    public final AbstractC6392i0 f53228d;

    /* renamed from: e */
    public final AbstractC19230g f53229e;

    /* renamed from: f */
    public final AbstractC19091q0 f53230f;

    @Inject
    public C19059m1(Context context, AbstractC6392i0 abstractC6392i0, AbstractC19230g abstractC19230g, AbstractC19091q0 abstractC19091q0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19091q0, "mediaHelper");
        this.f53228d = abstractC6392i0;
        this.f53229e = abstractC19230g;
        this.f53230f = abstractC19091q0;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19056l1
    /* renamed from: a */
    public long[] mo14185a() {
        return new long[]{0, 1000, 600, 1000, 600, 1000, 2200, 1000, 600, 1000, 600, 1000, 2200, 1000, 600, 1000, 600, 1000, 2200, 1000, 600, 1000, 600, 1000, 2200, 1000, 600, 1000, 600, 1000, 2200};
    }

    @Override // p193e.p194a.p1114o5.AbstractC19056l1
    /* renamed from: b */
    public Uri mo14184b() {
        StringBuilder m8728C = C22128a.m8728C("android.resource://");
        m8728C.append(this.f53229e.getPackageName());
        m8728C.append(this.f53227c);
        Uri parse = Uri.parse(m8728C.toString());
        l.d(parse, "Uri.parse(\"android.resou…URGENT_MESSAGE_TONE_URI\")");
        return parse;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19056l1
    /* renamed from: c */
    public Uri mo14183c() {
        StringBuilder m8728C = C22128a.m8728C("android.resource://");
        m8728C.append(this.f53229e.getPackageName());
        m8728C.append(this.f53226b);
        Uri parse = Uri.parse(m8728C.toString());
        l.d(parse, "Uri.parse(\"android.resou…eName()}$FLASH_TONE_URI\")");
        return parse;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19056l1
    /* renamed from: d */
    public Uri mo14182d() {
        return this.f53228d.mo31089d0() ? m14178h(this.f53228d.mo31052j1()) : mo14181e();
    }

    @Override // p193e.p194a.p1114o5.AbstractC19056l1
    /* renamed from: e */
    public Uri mo14181e() {
        StringBuilder m8728C = C22128a.m8728C("android.resource://");
        m8728C.append(this.f53229e.getPackageName());
        m8728C.append(this.f53225a);
        Uri parse = Uri.parse(m8728C.toString());
        l.d(parse, "Uri.parse(\"android.resou…ame()}$MESSAGE_TONE_URI\")");
        return parse;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19056l1
    /* renamed from: f */
    public boolean mo14180f() {
        return this.f53228d.mo31195I2();
    }

    @Override // p193e.p194a.p1114o5.AbstractC19056l1
    /* renamed from: g */
    public Uri mo14179g() {
        if (!this.f53228d.mo31072g() && this.f53228d.mo31089d0()) {
            AbstractC6392i0 abstractC6392i0 = this.f53228d;
            abstractC6392i0.mo31079e4(abstractC6392i0.mo31052j1());
        }
        return this.f53228d.mo31072g() ? m14178h(this.f53228d.mo31056i3()) : mo14181e();
    }

    /* renamed from: h */
    public final Uri m14178h(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Uri parse = Uri.parse(str);
        Boolean mo11831c = this.f53230f.mo14129e(C25225a.m3962T1(parse)).mo11831c();
        if (mo11831c == null) {
            mo11831c = Boolean.FALSE;
        }
        l.d(mo11831c, "mediaHelper.verifyFilesE…stOf(uri)).get() ?: false");
        return mo11831c.booleanValue() ? parse : mo14181e();
    }
}
