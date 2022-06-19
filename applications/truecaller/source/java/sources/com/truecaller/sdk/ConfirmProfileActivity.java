package com.truecaller.sdk;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import n3.g0.b;
import p1727n3.p1789g0.AbstractC26214m;
import p1727n3.p1789g0.C26191c;
import p1727n3.p1789g0.C26221p;
import p1727n3.p1789g0.C26222q;
import p1727n3.p1789g0.C26225s;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1315v4.AbstractC21030g;
import p193e.p194a.p1315v4.AbstractC21079s;
import p193e.p194a.p1315v4.C21038k;
import p193e.p194a.p1315v4.p1316o0.AbstractC21049c;
import p193e.p194a.p1315v4.p1316o0.C21047a;
import p193e.p194a.p1315v4.p1316o0.C21050d;
import p193e.p194a.p1315v4.p1333w0.AbstractC21161d;
import s1.u.i;
import s1.z.c.l;
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/ConfirmProfileActivity.class */
public class ConfirmProfileActivity extends AbstractC21079s implements AbstractC21161d, View.OnClickListener {

    /* renamed from: n */
    public static final /* synthetic */ int f14520n = 0;

    /* renamed from: d */
    public RecyclerView f14521d;

    /* renamed from: e */
    public AppCompatTextView f14522e;

    /* renamed from: f */
    public AppCompatTextView f14523f;

    /* renamed from: g */
    public AppCompatTextView f14524g;

    /* renamed from: h */
    public AvatarXView f14525h;
    @Inject

    /* renamed from: i */
    public AbstractC21030g f14526i;
    @Inject

    /* renamed from: j */
    public C21038k f14527j;
    @Inject

    /* renamed from: k */
    public AbstractC19233h0 f14528k;

    /* renamed from: l */
    public Drawable f14529l;

    /* renamed from: m */
    public Drawable f14530m;

    /* renamed from: com.truecaller.sdk.ConfirmProfileActivity$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/ConfirmProfileActivity$a.class */
    public class C4414a extends C26221p {

        /* renamed from: a */
        public final /* synthetic */ boolean f14531a;

        public C4414a(boolean z) {
            ConfirmProfileActivity.this = r4;
            this.f14531a = z;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            ConfirmProfileActivity confirmProfileActivity = ConfirmProfileActivity.this;
            confirmProfileActivity.f14522e.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.f14531a ? confirmProfileActivity.f14530m : confirmProfileActivity.f14529l, (Drawable) null);
        }
    }

    /* renamed from: com.truecaller.sdk.ConfirmProfileActivity$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/ConfirmProfileActivity$b.class */
    public class C4415b extends C26221p {
        public C4415b() {
            ConfirmProfileActivity.this = r4;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            ConfirmProfileActivity.this.f14526i.mo10399l();
        }
    }

    @Keep
    @DeepLink({"truecallersdk://truesdk/mweb_verify"})
    public static Intent getLaunchIntent(Context context, Bundle bundle) {
        Intent intent = new Intent(context, ConfirmProfileActivity.class);
        intent.addFlags(268468224);
        intent.putExtras(bundle);
        return intent;
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: B */
    public void mo10207B(SpannableStringBuilder spannableStringBuilder) {
        ((TextView) findViewById(C4417R.C4419id.tcBrandingText)).setText(spannableStringBuilder);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: M3 */
    public void mo10206M3() {
        this.f14526i.mo10382m();
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: M5 */
    public void mo10205M5(boolean z) {
        C21050d c21050d = (C21050d) this.f14521d.getAdapter();
        int i = 2;
        if (z) {
            c21050d.notifyItemRangeInserted(2, c21050d.f59054b.size() - 2);
            i = c21050d.f59054b.size();
        } else {
            c21050d.notifyItemRangeRemoved(2, c21050d.f59054b.size() - 2);
        }
        c21050d.f59056d = i;
        ViewGroup viewGroup = (ViewGroup) findViewById(C4417R.C4419id.rootView);
        C26225s c26225s = new C26225s();
        C26191c c26191c = new C26191c();
        c26191c.mo2505b(C4417R.C4419id.ctaContainer);
        c26191c.mo2505b(C4417R.C4419id.containerView);
        c26191c.mo2506a(new C4414a(z));
        c26225s.m2510M(c26191c);
        c26225s.m2508O(300L);
        C26222q.m2523a(viewGroup, c26225s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: Q */
    public String mo10204Q(int i) {
        return getString(i);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: R1 */
    public void mo10203R1(String str) {
        findViewById(C4417R.C4419id.legalTextDivider).setVisibility(0);
        this.f14523f.setText(str);
        this.f14523f.setVisibility(0);
        this.f14523f.setOnClickListener(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: S1 */
    public void mo10202S1() {
        C26222q.m2523a((ViewGroup) findViewById(C4417R.C4419id.rootView), new b().m2511L(new C4415b()));
        findViewById(C4417R.C4419id.inProgressIndicator).setVisibility(0);
        findViewById(C4417R.C4419id.ctaContainer).setVisibility(8);
        C21050d c21050d = (C21050d) this.f14521d.getAdapter();
        String string = getString(C4417R.string.sdkLoggingYouIn);
        Objects.requireNonNull(c21050d);
        l.e(string, "inProgressText");
        List<? extends AbstractC21049c> T = i.T(new AbstractC21049c[]{c21050d.f59054b.get(0), new C21047a(string)});
        c21050d.f59054b = T;
        c21050d.f59056d = T.size();
        c21050d.notifyDataSetChanged();
        findViewById(C4417R.C4419id.topContainer).setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: U1 */
    public void mo10201U1(int i, Intent intent) {
        setResult(i, intent);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: U2 */
    public void mo10200U2(String str) {
        this.f14525h.mo28717F(Uri.parse(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: U8 */
    public boolean mo10199U8() {
        return C26467a.m1801a(this, "android.permission.READ_PHONE_STATE") == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: V1 */
    public void mo10198V1() {
        finish();
        overridePendingTransition(0, 0);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: g0 */
    public void mo10197g0() {
        this.f14521d = (RecyclerView) findViewById(C4417R.C4419id.profileInfo);
        this.f14522e = (AppCompatTextView) findViewById(C4417R.C4419id.legalText);
        this.f14523f = (AppCompatTextView) findViewById(C4417R.C4419id.continueWithDifferentNumber);
        this.f14524g = (AppCompatTextView) findViewById(C4417R.C4419id.confirm);
        AvatarXView avatarXView = (AvatarXView) findViewById(C4417R.C4419id.profileImage);
        this.f14525h = avatarXView;
        avatarXView.setPresenter(this.f14527j);
        this.f14524g.setOnClickListener(this);
        AbstractC19233h0 abstractC19233h0 = this.f14528k;
        int i = C4417R.C4418drawable.ic_sdk_arrow_down;
        int i2 = C4417R.attr.tcx_textPrimary;
        this.f14529l = abstractC19233h0.mo13764f(i, i2);
        this.f14530m = this.f14528k.mo13764f(C4417R.C4418drawable.ic_sdk_arrow_up, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: g8 */
    public void mo10196g8(String str, String str2, String str3, String str4, boolean z) {
        this.f14522e.setText(Html.fromHtml(getString(C4417R.string.SdkProfileShareTerms, new Object[]{str2})));
        ((TextView) findViewById(C4417R.C4419id.partnerLoginIntentText)).setText(str4);
        this.f14524g.setText(getString(C4417R.string.SdkProfileContinue));
        this.f14523f.setText(getString(C4417R.string.SdkContinueWithDifferentNumber));
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21161d
    /* renamed from: h1 */
    public void mo10187h1() {
        this.f14522e.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.f14529l, (Drawable) null);
        this.f14522e.setOnClickListener(this);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21161d
    /* renamed from: n */
    public void mo10186n(String str) {
        this.f14527j.f25433e = str;
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: o3 */
    public void mo10195o3(TrueProfile trueProfile) {
        this.f14526i.mo10407c(trueProfile);
    }

    public void onBackPressed() {
        this.f14526i.mo10406d();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == C4417R.C4419id.confirm) {
            this.f14526i.mo10402i();
        } else if (id == C4417R.C4419id.continueWithDifferentNumber) {
            this.f14526i.mo10405e();
        } else if (id != C4417R.C4419id.legalText) {
        } else {
            this.f14526i.mo10383g();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        ConfirmProfileActivity.super.onCreate(bundle);
        if (this.f14526i.mo10404f(bundle)) {
            this.f14526i.mo10314a(this);
        } else {
            finish();
        }
    }

    public void onDestroy() {
        ConfirmProfileActivity.super.onDestroy();
        this.f14526i.mo10313b();
    }

    public void onSaveInstanceState(Bundle bundle) {
        ConfirmProfileActivity.super.onSaveInstanceState(bundle);
        this.f14526i.mo10401j(bundle);
    }

    public void onStop() {
        ConfirmProfileActivity.super.onStop();
        this.f14526i.mo10400k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21161d
    /* renamed from: p */
    public void mo10185p(List<? extends AbstractC21049c> list) {
        C21050d c21050d = new C21050d(this, list, this.f14528k);
        this.f14521d.setItemAnimator(null);
        this.f14521d.setAdapter(c21050d);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21161d
    /* renamed from: r */
    public void mo10184r(int i) {
        setTheme(i == 1 ? C4417R.style.TrueCaller_Base_Popup_Dark : C4417R.style.TrueCaller_Base_Popup_Light);
        setContentView(C4417R.layout.activity_confirm_profile);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: r4 */
    public void mo10194r4() {
        this.f14526i.mo10403h();
    }
}
