package p193e.p194a.p195a.p200c;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.messaging.conversation.draft.DraftMode;
import com.truecaller.messaging.conversation.draft.DraftUri;
import com.truecaller.messaging.conversation.draft.UriTypeHint;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.AbstractC19108u0;
import p193e.p194a.p1114o5.AbstractC19109u1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p200c.AbstractC5776u5;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import w3.c.a.a.a.a;
/* renamed from: e.a.a.c.v5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/v5.class */
public class C5787v5 extends AbstractC5776u5 {

    /* renamed from: b */
    public final boolean f19375b;

    /* renamed from: c */
    public final AbstractC19108u0 f19376c;

    /* renamed from: d */
    public final AbstractC19462a f19377d;

    /* renamed from: e */
    public final AbstractC19109u1 f19378e;

    /* renamed from: f */
    public final AbstractC19219a0 f19379f;

    /* renamed from: g */
    public final AbstractC8571b f19380g;

    /* renamed from: h */
    public Uri f19381h;

    /* renamed from: i */
    public boolean f19382i;

    /* renamed from: j */
    public int f19383j = 3;

    /* renamed from: k */
    public AbstractC5776u5.AbstractC5777a f19384k;

    @Inject
    public C5787v5(@Named("IsBubbleIntent") boolean z, AbstractC19108u0 abstractC19108u0, AbstractC19462a abstractC19462a, AbstractC19109u1 abstractC19109u1, AbstractC19219a0 abstractC19219a0, AbstractC8571b abstractC8571b) {
        this.f19375b = z;
        this.f19376c = abstractC19108u0;
        this.f19377d = abstractC19462a;
        this.f19378e = abstractC19109u1;
        this.f19379f = abstractC19219a0;
        this.f19380g = abstractC8571b;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    /* renamed from: Hj */
    public String[] mo32599Hj() {
        return this.f19375b ? new String[0] : (String[]) a.b(Entity.f13303f, Entity.f13302e);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    /* renamed from: Ij */
    public void mo32598Ij(AbstractC5776u5.AbstractC5777a abstractC5777a) {
        this.f19384k = abstractC5777a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    /* renamed from: Jj */
    public void mo32597Jj(int i) {
        this.f19383j = i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    /* renamed from: Kj */
    public void mo32596Kj() {
        this.f19384k = null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    /* renamed from: Lj */
    public void mo32595Lj(LinkMetaData linkMetaData) {
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        if (linkMetaData == null || this.f19383j != 2) {
            ((AbstractC5797w5) pv).mo32439n1();
            return;
        }
        String str = linkMetaData.f13537d;
        ((AbstractC5797w5) this.f57683a).mo32513P4(linkMetaData.f13535b, linkMetaData.f13536c, str != null ? Uri.parse(str) : null);
    }

    /* renamed from: Mj */
    public final void m32594Mj(boolean z) {
        Intent intent;
        if (this.f57683a == 0) {
            return;
        }
        Uri uri = this.f19381h;
        if (uri != null) {
            this.f19378e.mo14084b(uri);
            this.f19381h = null;
        }
        boolean z2 = true;
        if (z) {
            Intent intent2 = new Intent("android.media.action.VIDEO_CAPTURE");
            long mo14088d = this.f19376c.mo14088d(this.f19383j);
            if (this.f19383j != 2) {
                intent2.putExtra("android.intent.extra.videoQuality", 0);
                intent2.putExtra(TokenResponseDto.METHOD_SMS, true);
                intent = intent2;
                if (mo14088d > 0) {
                    intent2.putExtra("android.intent.extra.sizeLimit", mo14088d);
                    intent = intent2;
                }
            } else {
                intent2.putExtra("android.intent.extra.durationLimit", (int) TimeUnit.MINUTES.toSeconds(TimeUnit.SECONDS.toMinutes(this.f19376c.mo14089c(mo14088d))));
                intent = intent2;
            }
        } else {
            intent = new Intent("android.media.action.IMAGE_CAPTURE");
        }
        this.f19382i = z;
        if (!this.f19379f.mo13825h("android.permission.CAMERA")) {
            if (((AbstractC5797w5) this.f57683a).mo32451k("android.permission.CAMERA")) {
                ((AbstractC5797w5) this.f57683a).mo32408va();
            } else {
                ((AbstractC5797w5) this.f57683a).mo32495Te(4);
            }
            z2 = false;
        }
        if (z2) {
            Uri mo28369b = this.f19380g.mo28369b();
            this.f19381h = mo28369b;
            intent.putExtra("output", mo28369b);
            if (!(z ? ((AbstractC5797w5) this.f57683a).mo32554Dj(intent, 101) : ((AbstractC5797w5) this.f57683a).mo32554Dj(intent, 100))) {
                ((AbstractC5797w5) this.f57683a).mo32353a(2131887863);
                this.f19378e.mo14084b(this.f19381h);
            }
        }
        AbstractC19462a abstractC19462a = this.f19377d;
        LinkedHashMap m8655X = C22128a.m8655X("ConversationPickerClick", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str = z ? "video" : "photo";
        C22128a.m8553x0(C22128a.m8560v1("type", AnalyticsConstants.NAME, str, "value", m8655X, "type", str, "ConversationPickerClick", linkedHashMap), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    /* renamed from: hh */
    public void mo32593hh(Bundle bundle) {
        if (bundle != null) {
            this.f19381h = (Uri) bundle.getParcelable("output_uri");
            this.f19383j = bundle.getInt("transport_type");
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    /* renamed from: m2 */
    public void mo32592m2(Bundle bundle) {
        bundle.putParcelable("output_uri", this.f19381h);
        bundle.putInt("transport_type", this.f19383j);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri uri;
        if ((i == 100 || i == 101) && (uri = this.f19381h) != null) {
            if (i2 == -1) {
                boolean z = i == 100;
                if (this.f19384k != null) {
                    this.f19384k.mo32625dc(z ? DraftMode.CAPTURE_PHOTO : DraftMode.CAPTURE_VIDEO, Collections.singletonList(new DraftUri(uri, z ? UriTypeHint.IMAGE : UriTypeHint.VIDEO, true)), Collections.emptyList(), null, false, -1L, 0);
                } else {
                    this.f19378e.mo14084b(uri);
                }
            } else {
                this.f19378e.mo14084b(uri);
            }
            this.f19381h = null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 4 || !this.f19379f.mo13826g(strArr, iArr, "android.permission.CAMERA")) {
            return;
        }
        m32594Mj(this.f19382i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5
    public void onStop() {
    }
}
