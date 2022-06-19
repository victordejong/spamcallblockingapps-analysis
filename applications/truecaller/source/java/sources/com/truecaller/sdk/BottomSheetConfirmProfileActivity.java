package com.truecaller.sdk;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.amazon.device.ads.MraidExpandCommand;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior$d;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.clients.CustomDataBundle;
import java.util.Arrays;
import java.util.regex.Matcher;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.g0.b;
import p1727n3.p1789g0.AbstractC26214m;
import p1727n3.p1789g0.C26191c;
import p1727n3.p1789g0.C26221p;
import p1727n3.p1789g0.C26222q;
import p1727n3.p1789g0.C26225s;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1315v4.AbstractC21030g;
import p193e.p194a.p1315v4.AbstractC21067q;
import p193e.p194a.p1315v4.p1320r0.C21071b;
import p193e.p194a.p1315v4.p1320r0.C21073d;
import p193e.p194a.p1315v4.p1333w0.AbstractC21158a;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bc\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J7\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\"\u0010\u0013J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J!\u0010*\u001a\u00020\u00062\b\u0010(\u001a\u0004\u0018\u00010'2\u0006\u0010)\u001a\u00020\u0010H\u0016¢\u0006\u0004\b*\u0010+J+\u0010/\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00102\b\u0010-\u001a\u0004\u0018\u00010\u00102\b\u0010.\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0014H\u0016¢\u0006\u0004\b2\u0010\u0019J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\nJ\u0019\u00106\u001a\u00020\u00102\b\b\u0001\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J!\u0010;\u001a\u00020\u00062\u0006\u00108\u001a\u0002042\b\u0010:\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010\nJ\u000f\u0010>\u001a\u00020\u0006H\u0014¢\u0006\u0004\b>\u0010\nJ\u0017\u0010@\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u0004H\u0014¢\u0006\u0004\b@\u0010\bJ\u000f\u0010A\u001a\u00020\u0006H\u0016¢\u0006\u0004\bA\u0010\nJ\u0017\u0010D\u001a\u00020\u00062\u0006\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\u0006H\u0016¢\u0006\u0004\bF\u0010\nJ\u0017\u0010I\u001a\u00020\u00062\u0006\u0010H\u001a\u00020GH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0006H\u0014¢\u0006\u0004\bK\u0010\nR(\u0010T\u001a\u00020L8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\bM\u0010N\u0012\u0004\bS\u0010\n\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u001d\u0010Z\u001a\u00020U8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\"\u0010b\u001a\u00020[8��@��X\u0081.¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010a¨\u0006d"}, d2 = {"Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;", "Ln3/b/a/h;", "Le/a/v4/w0/a;", "Landroid/view/View$OnClickListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "r4", "()V", "g0", "Landroid/text/SpannableStringBuilder;", "brandingText", "B", "(Landroid/text/SpannableStringBuilder;)V", "", "text", "R1", "(Ljava/lang/String;)V", "", "U8", "()Z", MraidExpandCommand.NAME, "M5", "(Z)V", "phoneNumber", "partnerAppName", "fullName", "partnerIntentText", "isExpanded", "g8", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "avatarUrl", "U2", "Le/a/v4/q0/a;", "trueProfileCustomData", "S8", "(Le/a/v4/q0/a;)V", "Lcom/truecaller/android/sdk/clients/CustomDataBundle;", "customDataBundle", "numberWithoutExtension", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "(Lcom/truecaller/android/sdk/clients/CustomDataBundle;Ljava/lang/String;)V", "legalTextValue", "privacyPolicyUrl", "termsOfServiceUrl", "u7", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "rectangleShapeRequested", "a4", "V1", "", "resId", "Q", "(I)Ljava/lang/String;", "resultCode", "Landroid/content/Intent;", "result", "U1", "(ILandroid/content/Intent;)V", "M3", "onDestroy", "outState", "onSaveInstanceState", "onBackPressed", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "S1", "Lcom/truecaller/android/sdk/TrueProfile;", "trueProfile", "o3", "(Lcom/truecaller/android/sdk/TrueProfile;)V", "onStop", "Le/a/p5/h0;", "f", "Le/a/p5/h0;", "getThemedResourceProvider", "()Le/a/p5/h0;", "setThemedResourceProvider", "(Le/a/p5/h0;)V", "getThemedResourceProvider$annotations", "themedResourceProvider", "Le/a/v4/r0/b;", "e", "Ls1/g;", "pa", "()Le/a/v4/r0/b;", "binding", "Le/a/v4/g;", "d", "Le/a/v4/g;", "getMPresenter$sdk_internal_release", "()Le/a/v4/g;", "setMPresenter$sdk_internal_release", "(Le/a/v4/g;)V", "mPresenter", "<init>", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/BottomSheetConfirmProfileActivity.class */
public final class BottomSheetConfirmProfileActivity extends AbstractC21067q implements AbstractC21158a, View.OnClickListener {

    /* renamed from: g */
    public static final /* synthetic */ int f14509g = 0;
    @Inject

    /* renamed from: d */
    public AbstractC21030g f14510d;

    /* renamed from: e */
    public final g f14511e = C25225a.m3982O1(h.c, new C4410b(this));
    @Inject

    /* renamed from: f */
    public AbstractC19233h0 f14512f;

    /* renamed from: com.truecaller.sdk.BottomSheetConfirmProfileActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/sdk/BottomSheetConfirmProfileActivity$a.class */
    public static final class C4409a implements Linkify.TransformFilter {

        /* renamed from: a */
        public final /* synthetic */ int f14513a;

        /* renamed from: b */
        public final /* synthetic */ Object f14514b;

        public C4409a(int i, Object obj) {
            this.f14513a = i;
            this.f14514b = obj;
        }

        @Override // android.text.util.Linkify.TransformFilter
        public final String transformUrl(Matcher matcher, String str) {
            int i = this.f14513a;
            if (i != 0 && i != 1) {
                throw null;
            }
            return (String) this.f14514b;
        }
    }

    /* renamed from: com.truecaller.sdk.BottomSheetConfirmProfileActivity$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/BottomSheetConfirmProfileActivity$b.class */
    public static final class C4410b extends m implements a<C21071b> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f14515b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4410b(n3.b.a.h hVar) {
            super(0);
            this.f14515b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f14515b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            CoordinatorLayout inflate = layoutInflater.inflate(C4417R.layout.activity_confirm_profile_bottomsheet, (ViewGroup) null, false);
            int i = C4417R.C4419id.consent_layout;
            View findViewById = inflate.findViewById(i);
            if (findViewById != null) {
                int i2 = C4417R.C4419id.confirm;
                TextView textView = (TextView) findViewById.findViewById(i2);
                if (textView != null) {
                    i2 = C4417R.C4419id.confirmProgressBar;
                    ProgressBar progressBar = (ProgressBar) findViewById.findViewById(i2);
                    if (progressBar != null) {
                        i2 = C4417R.C4419id.continueWithDifferentNumber;
                        TextView textView2 = (TextView) findViewById.findViewById(i2);
                        if (textView2 != null) {
                            i2 = C4417R.C4419id.ctaContainer;
                            LinearLayout linearLayout = (LinearLayout) findViewById.findViewById(i2);
                            if (linearLayout != null) {
                                i2 = C4417R.C4419id.emailAddressDivider;
                                View findViewById2 = findViewById.findViewById(i2);
                                if (findViewById2 != null) {
                                    i2 = C4417R.C4419id.expandLegalTextIcon;
                                    ImageView imageView = (ImageView) findViewById.findViewById(i2);
                                    if (imageView != null) {
                                        i2 = C4417R.C4419id.infoAddress;
                                        TextView textView3 = (TextView) findViewById.findViewById(i2);
                                        if (textView3 != null) {
                                            i2 = C4417R.C4419id.infoContainer;
                                            LinearLayout linearLayout2 = (LinearLayout) findViewById.findViewById(i2);
                                            if (linearLayout2 != null) {
                                                i2 = C4417R.C4419id.infoEmail;
                                                TextView textView4 = (TextView) findViewById.findViewById(i2);
                                                if (textView4 != null) {
                                                    i2 = C4417R.C4419id.infoName;
                                                    TextView textView5 = (TextView) findViewById.findViewById(i2);
                                                    if (textView5 != null) {
                                                        i2 = C4417R.C4419id.infoNumber;
                                                        TextView textView6 = (TextView) findViewById.findViewById(i2);
                                                        if (textView6 != null) {
                                                            i2 = C4417R.C4419id.legalText;
                                                            TextView textView7 = (TextView) findViewById.findViewById(i2);
                                                            if (textView7 != null) {
                                                                i2 = C4417R.C4419id.legalTextDivider;
                                                                View findViewById3 = findViewById.findViewById(i2);
                                                                if (findViewById3 != null) {
                                                                    i2 = C4417R.C4419id.loginText;
                                                                    TextView textView8 = (TextView) findViewById.findViewById(i2);
                                                                    if (textView8 != null) {
                                                                        LinearLayout linearLayout3 = (LinearLayout) findViewById;
                                                                        i2 = C4417R.C4419id.tcBrandingText;
                                                                        TextView textView9 = (TextView) findViewById.findViewById(i2);
                                                                        if (textView9 != null) {
                                                                            i2 = C4417R.C4419id.userName;
                                                                            TextView textView10 = (TextView) findViewById.findViewById(i2);
                                                                            if (textView10 != null) {
                                                                                return new C21071b(inflate, new C21073d(linearLayout3, textView, progressBar, textView2, linearLayout, findViewById2, imageView, textView3, linearLayout2, textView4, textView5, textView6, textView7, findViewById3, textView8, linearLayout3, textView9, textView10));
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(findViewById.getResources().getResourceName(i2)));
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.sdk.BottomSheetConfirmProfileActivity$c */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/BottomSheetConfirmProfileActivity$c.class */
    public static final class C4411c extends BottomSheetBehavior$d {
        public C4411c() {
            BottomSheetConfirmProfileActivity.this = r4;
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
        /* renamed from: a */
        public void mo24294a(View view, float f) {
            l.e(view, "bottomSheet");
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
        /* renamed from: b */
        public void mo24293b(View view, int i) {
            l.e(view, "bottomSheet");
            if (i == 5) {
                BottomSheetConfirmProfileActivity.this.onBackPressed();
            }
        }
    }

    /* renamed from: com.truecaller.sdk.BottomSheetConfirmProfileActivity$d */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/BottomSheetConfirmProfileActivity$d.class */
    public static final class C4412d extends C26221p {

        /* renamed from: b */
        public final /* synthetic */ boolean f14518b;

        public C4412d(boolean z) {
            BottomSheetConfirmProfileActivity.this = r4;
            this.f14518b = z;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            l.e(abstractC26214m, "transition");
            BottomSheetConfirmProfileActivity bottomSheetConfirmProfileActivity = BottomSheetConfirmProfileActivity.this;
            int i = BottomSheetConfirmProfileActivity.f14509g;
            bottomSheetConfirmProfileActivity.m34782pa().f59104b.f59120g.setImageResource(this.f14518b ? C4417R.C4418drawable.ic_sdk_arrow_up : C4417R.C4418drawable.ic_sdk_arrow_down);
        }
    }

    /* renamed from: com.truecaller.sdk.BottomSheetConfirmProfileActivity$e */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/BottomSheetConfirmProfileActivity$e.class */
    public static final class C4413e extends C26221p {
        public C4413e() {
            BottomSheetConfirmProfileActivity.this = r4;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            l.e(abstractC26214m, "transition");
            AbstractC21030g abstractC21030g = BottomSheetConfirmProfileActivity.this.f14510d;
            if (abstractC21030g != null) {
                abstractC21030g.mo10399l();
            } else {
                l.l("mPresenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: B */
    public void mo10207B(SpannableStringBuilder spannableStringBuilder) {
        l.e(spannableStringBuilder, "brandingText");
        TextView textView = m34782pa().f59104b.f59130q;
        l.d(textView, "binding.consentLayout.tcBrandingText");
        textView.setText(spannableStringBuilder);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: M3 */
    public void mo10206M3() {
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10382m();
        } else {
            l.l("mPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: M5 */
    public void mo10205M5(boolean z) {
        C21073d c21073d = m34782pa().f59104b;
        l.d(c21073d, "binding.consentLayout");
        LinearLayout linearLayout = c21073d.f59114a;
        C26225s c26225s = new C26225s();
        C26191c c26191c = new C26191c();
        c26191c.f73086f.add(m34782pa().f59104b.f59122i);
        c26191c.mo2506a(new C4412d(z));
        c26225s.m2510M(c26191c);
        c26225s.m2508O(300);
        C26222q.m2523a(linearLayout, c26225s);
        LinearLayout linearLayout2 = m34782pa().f59104b.f59122i;
        l.d(linearLayout2, "binding.consentLayout.infoContainer");
        linearLayout2.setVisibility(z ? 0 : 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: Q */
    public String mo10204Q(int i) {
        String string = getString(i);
        l.d(string, "getString(resId)");
        return string;
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: R1 */
    public void mo10203R1(String str) {
        View view = m34782pa().f59104b.f59127n;
        l.d(view, "binding.consentLayout.legalTextDivider");
        view.setVisibility(0);
        TextView textView = m34782pa().f59104b.f59117d;
        l.d(textView, "binding.consentLayout.continueWithDifferentNumber");
        textView.setText(str);
        TextView textView2 = m34782pa().f59104b.f59117d;
        l.d(textView2, "binding.consentLayout.continueWithDifferentNumber");
        textView2.setVisibility(0);
        m34782pa().f59104b.f59117d.setOnClickListener(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: S1 */
    public void mo10202S1() {
        C21073d c21073d = m34782pa().f59104b;
        l.d(c21073d, "binding.consentLayout");
        C26222q.m2523a(c21073d.f59114a, new b().m2511L(new C4413e()));
        TextView textView = m34782pa().f59104b.f59115b;
        l.d(textView, "binding.consentLayout.confirm");
        textView.setText(getString(C4417R.string.SDKPleaseWaitLoaderMsg));
        TextView textView2 = m34782pa().f59104b.f59115b;
        l.d(textView2, "binding.consentLayout.confirm");
        textView2.setEnabled(false);
        m34782pa().f59104b.f59115b.setOnClickListener(null);
        TextView textView3 = m34782pa().f59104b.f59128o;
        l.d(textView3, "binding.consentLayout.loginText");
        textView3.setVisibility(8);
        ProgressBar progressBar = m34782pa().f59104b.f59116c;
        l.d(progressBar, "binding.consentLayout.confirmProgressBar");
        progressBar.setVisibility(0);
        LinearLayout linearLayout = m34782pa().f59104b.f59118e;
        l.d(linearLayout, "binding.consentLayout.ctaContainer");
        linearLayout.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00bb, code lost:
        if (s1.f0.r.p(r0) != false) goto L16;
     */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21158a
    /* renamed from: S8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10211S8(p193e.p194a.p1315v4.p1319q0.C21068a r4) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.sdk.BottomSheetConfirmProfileActivity.mo10211S8(e.a.v4.q0.a):void");
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21158a
    /* renamed from: T */
    public void mo10210T(CustomDataBundle customDataBundle, String str) {
        l.e(str, "numberWithoutExtension");
        if (customDataBundle != null) {
            if (customDataBundle.f9995a != 0) {
                TextView textView = m34782pa().f59104b.f59115b;
                l.d(textView, "binding.consentLayout.confirm");
                textView.getBackground().setTint(customDataBundle.f9995a);
            } else {
                TextView textView2 = m34782pa().f59104b.f59115b;
                l.d(textView2, "binding.consentLayout.confirm");
                Drawable background = textView2.getBackground();
                AbstractC19233h0 abstractC19233h0 = this.f14512f;
                if (abstractC19233h0 == null) {
                    l.l("themedResourceProvider");
                    throw null;
                }
                background.setTint(abstractC19233h0.mo13769a(C4417R.color.primary_dark));
            }
            if (customDataBundle.f9996b != 0) {
                m34782pa().f59104b.f59115b.setTextColor(customDataBundle.f9996b);
            } else {
                TextView textView3 = m34782pa().f59104b.f59115b;
                AbstractC19233h0 abstractC19233h02 = this.f14512f;
                if (abstractC19233h02 == null) {
                    l.l("themedResourceProvider");
                    throw null;
                }
                textView3.setTextColor(abstractC19233h02.mo13769a(17170443));
            }
            TextView textView4 = m34782pa().f59104b.f59128o;
            l.d(textView4, "binding.consentLayout.loginText");
            textView4.setText(C19231g0.m13813D(", ", getResources().getStringArray(C4417R.array.SdkPartnerLoginPrefixOptionsArray)[customDataBundle.f9999e], getResources().getStringArray(C4417R.array.SdkPartnerLoginSuffixOptionsArray)[customDataBundle.f10000f]));
            TextView textView5 = m34782pa().f59104b.f59115b;
            l.d(textView5, "binding.consentLayout.confirm");
            String str2 = getResources().getStringArray(C4417R.array.SdkPartnerCTAPrefixOptionsArray)[customDataBundle.f10001g];
            l.d(str2, "resources.getStringArray…)[it.ctaTextPrefixOption]");
            String format = String.format(str2, Arrays.copyOf(new Object[]{str}, 1));
            l.d(format, "java.lang.String.format(format, *args)");
            textView5.setText(format);
        }
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
        l.e(str, "avatarUrl");
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

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21158a
    /* renamed from: a4 */
    public void mo10209a4(boolean z) {
        if (z) {
            m34782pa().f59104b.f59115b.setBackgroundResource(C4417R.C4418drawable.background_confirm_button);
        } else {
            m34782pa().f59104b.f59115b.setBackgroundResource(C4417R.C4418drawable.background_rounded_confirm_button);
        }
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: g0 */
    public void mo10197g0() {
        TextView textView = m34782pa().f59104b.f59115b;
        l.d(textView, "binding.consentLayout.confirm");
        textView.setEnabled(true);
        m34782pa().f59104b.f59115b.setOnClickListener(this);
        m34782pa().f59104b.f59120g.setOnClickListener(this);
        BottomSheetBehavior H = BottomSheetBehavior.H(m34782pa().f59104b.f59129p);
        l.d(H, "BottomSheetBehavior.from…g.consentLayout.rootView)");
        C4411c c4411c = new C4411c();
        if (!H.P.contains(c4411c)) {
            H.P.add(c4411c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: g8 */
    public void mo10196g8(String str, String str2, String str3, String str4, boolean z) {
        l.e(str, "phoneNumber");
        l.e(str2, "partnerAppName");
        l.e(str3, "fullName");
        l.e(str4, "partnerIntentText");
        TextView textView = m34782pa().f59104b.f59126m;
        l.d(textView, "binding.consentLayout.legalText");
        String string = getString(C4417R.string.SdkProfileShareTerms, new Object[]{str2});
        l.d(string, "getString(string.SdkProf…areTerms, partnerAppName)");
        String format = String.format(string, Arrays.copyOf(new Object[0], 0));
        l.d(format, "java.lang.String.format(format, *args)");
        textView.setText(format);
        TextView textView2 = m34782pa().f59104b.f59115b;
        l.d(textView2, "binding.consentLayout.confirm");
        String str5 = getResources().getStringArray(C4417R.array.SdkPartnerCTAPrefixOptionsArray)[0];
        l.d(str5, "resources.getStringArray…CTAPrefixOptionsArray)[0]");
        String format2 = String.format(str5, Arrays.copyOf(new Object[]{str}, 1));
        l.d(format2, "java.lang.String.format(format, *args)");
        textView2.setText(format2);
        TextView textView3 = m34782pa().f59104b.f59117d;
        l.d(textView3, "binding.consentLayout.continueWithDifferentNumber");
        textView3.setText(getString(C4417R.string.SdkContinueWithDifferentNumber));
        TextView textView4 = m34782pa().f59104b.f59131r;
        l.d(textView4, "binding.consentLayout.userName");
        String string2 = getString(C4417R.string.SdkProfileHeaderText);
        l.d(string2, "getString(string.SdkProfileHeaderText)");
        String format3 = String.format(string2, Arrays.copyOf(new Object[]{str3}, 1));
        l.d(format3, "java.lang.String.format(format, *args)");
        textView4.setText(format3);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: o3 */
    public void mo10195o3(TrueProfile trueProfile) {
        l.e(trueProfile, "trueProfile");
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10407c(trueProfile);
        } else {
            l.l("mPresenter");
            throw null;
        }
    }

    public void onBackPressed() {
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10406d();
        } else {
            l.l("mPresenter");
            throw null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        if (l.a(view, m34782pa().f59104b.f59115b)) {
            AbstractC21030g abstractC21030g = this.f14510d;
            if (abstractC21030g != null) {
                abstractC21030g.mo10402i();
            } else {
                l.l("mPresenter");
                throw null;
            }
        } else if (l.a(view, m34782pa().f59104b.f59117d)) {
            AbstractC21030g abstractC21030g2 = this.f14510d;
            if (abstractC21030g2 != null) {
                abstractC21030g2.mo10405e();
            } else {
                l.l("mPresenter");
                throw null;
            }
        } else if (!l.a(view, m34782pa().f59104b.f59120g)) {
        } else {
            AbstractC21030g abstractC21030g3 = this.f14510d;
            if (abstractC21030g3 != null) {
                abstractC21030g3.mo10383g();
            } else {
                l.l("mPresenter");
                throw null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        BottomSheetConfirmProfileActivity.super.onCreate(bundle);
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
        C21071b m34782pa = m34782pa();
        l.d(m34782pa, "binding");
        setContentView(m34782pa.f59103a);
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g == null) {
            l.l("mPresenter");
            throw null;
        } else if (!abstractC21030g.mo10404f(bundle)) {
            finish();
        } else {
            AbstractC21030g abstractC21030g2 = this.f14510d;
            if (abstractC21030g2 != null) {
                abstractC21030g2.mo10314a(this);
            } else {
                l.l("mPresenter");
                throw null;
            }
        }
    }

    public void onDestroy() {
        BottomSheetConfirmProfileActivity.super.onDestroy();
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10313b();
        } else {
            l.l("mPresenter");
            throw null;
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        BottomSheetConfirmProfileActivity.super.onSaveInstanceState(bundle);
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10401j(bundle);
        } else {
            l.l("mPresenter");
            throw null;
        }
    }

    public void onStop() {
        BottomSheetConfirmProfileActivity.super.onStop();
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10400k();
        } else {
            l.l("mPresenter");
            throw null;
        }
    }

    /* renamed from: pa */
    public final C21071b m34782pa() {
        return (C21071b) this.f14511e.getValue();
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: r4 */
    public void mo10194r4() {
        AbstractC21030g abstractC21030g = this.f14510d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10403h();
        } else {
            l.l("mPresenter");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0076, code lost:
        if (s1.f0.r.p(r9) != false) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21158a
    /* renamed from: u7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10208u7(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "legalTextValue"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            e.a.v4.r0.b r0 = r0.m34782pa()
            e.a.v4.r0.d r0 = r0.f59104b
            android.widget.TextView r0 = r0.f59126m
            r10 = r0
            r0 = r10
            java.lang.String r1 = "binding.consentLayout.legalText"
            s1.z.c.l.d(r0, r1)
            r0 = 0
            r11 = r0
            r0 = r10
            r1 = r7
            r2 = 0
            android.text.Spanned r1 = android.support.p001v4.media.session.MediaSessionCompat.m43246d0(r1, r2)
            r0.setText(r1)
            r0 = r8
            if (r0 == 0) goto L3c
            r0 = r8
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L36
            goto L3c
        L36:
            r0 = 0
            r12 = r0
            goto L3f
        L3c:
            r0 = 1
            r12 = r0
        L3f:
            r0 = r12
            if (r0 != 0) goto L6a
            r0 = r6
            int r1 = com.truecaller.sdk.C4417R.string.SdkProfilePp
            java.lang.String r0 = r0.getString(r1)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r7 = r0
            com.truecaller.sdk.BottomSheetConfirmProfileActivity$a r0 = new com.truecaller.sdk.BottomSheetConfirmProfileActivity$a
            r1 = r0
            r2 = 0
            r3 = r8
            r1.<init>(r2, r3)
            r8 = r0
            r0 = r6
            e.a.v4.r0.b r0 = r0.m34782pa()
            e.a.v4.r0.d r0 = r0.f59104b
            android.widget.TextView r0 = r0.f59126m
            r1 = r7
            r2 = 0
            r3 = 0
            r4 = r8
            p1727n3.p1807k.p1818g.p1819f.C26548b.m1699b(r0, r1, r2, r3, r4)
        L6a:
            r0 = r9
            if (r0 == 0) goto L79
            r0 = r11
            r12 = r0
            r0 = r9
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L7c
        L79:
            r0 = 1
            r12 = r0
        L7c:
            r0 = r12
            if (r0 != 0) goto La7
            r0 = r6
            int r1 = com.truecaller.sdk.C4417R.string.SdkProfileTos
            java.lang.String r0 = r0.getString(r1)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r7 = r0
            com.truecaller.sdk.BottomSheetConfirmProfileActivity$a r0 = new com.truecaller.sdk.BottomSheetConfirmProfileActivity$a
            r1 = r0
            r2 = 1
            r3 = r9
            r1.<init>(r2, r3)
            r8 = r0
            r0 = r6
            e.a.v4.r0.b r0 = r0.m34782pa()
            e.a.v4.r0.d r0 = r0.f59104b
            android.widget.TextView r0 = r0.f59126m
            r1 = r7
            r2 = 0
            r3 = 0
            r4 = r8
            p1727n3.p1807k.p1818g.p1819f.C26548b.m1699b(r0, r1, r2, r3, r4)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.sdk.BottomSheetConfirmProfileActivity.mo10208u7(java.lang.String, java.lang.String, java.lang.String):void");
    }
}
