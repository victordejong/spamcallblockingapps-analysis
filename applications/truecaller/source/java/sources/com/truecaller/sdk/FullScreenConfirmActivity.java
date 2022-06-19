package com.truecaller.sdk;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.MraidExpandCommand;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.g0.f;
import p1727n3.p1789g0.C26191c;
import p1727n3.p1789g0.C26222q;
import p1727n3.p1789g0.C26225s;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1315v4.AbstractC21030g;
import p193e.p194a.p1315v4.AbstractC21135u;
import p193e.p194a.p1315v4.C21038k;
import p193e.p194a.p1315v4.p1316o0.C21054e;
import p193e.p194a.p1315v4.p1316o0.C21055f;
import p193e.p194a.p1315v4.p1320r0.C21072c;
import p193e.p194a.p1315v4.p1320r0.C21075f;
import p193e.p194a.p1315v4.p1320r0.C21076g;
import p193e.p194a.p1315v4.p1333w0.AbstractC21160c;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bh\u0010\u000fJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u000fJ\u0017\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001d\u0010\u000fJ7\u0010#\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0019H\u0017¢\u0006\u0004\b#\u0010$J\u001d\u0010(\u001a\u00020\u000b2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u0004H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b.\u0010,J\u0017\u00101\u001a\u00020\u000b2\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u000b2\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u0019H\u0016¢\u0006\u0004\b8\u0010\u001cJ\u0017\u0010:\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u0019H\u0016¢\u0006\u0004\b:\u0010\u001cJ\u000f\u0010;\u001a\u00020\u0019H\u0016¢\u0006\u0004\b;\u0010<J!\u0010@\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u00102\b\u0010?\u001a\u0004\u0018\u00010>H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u000bH\u0016¢\u0006\u0004\bB\u0010\u000fJ\u0017\u0010D\u001a\u00020\u00042\u0006\u0010C\u001a\u00020\u0010H\u0016¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\u000bH\u0014¢\u0006\u0004\bF\u0010\u000fJ\u0017\u0010H\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\tH\u0014¢\u0006\u0004\bH\u0010\rJ\u000f\u0010I\u001a\u00020\u000bH\u0016¢\u0006\u0004\bI\u0010\u000fJ\u000f\u0010J\u001a\u00020\u000bH\u0014¢\u0006\u0004\bJ\u0010\u000fJ\u0019\u0010K\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\bK\u0010,J\u000f\u0010L\u001a\u00020\u000bH\u0016¢\u0006\u0004\bL\u0010\u000fJ\u0017\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020MH\u0016¢\u0006\u0004\bO\u0010PR\"\u0010X\u001a\u00020Q8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u001d\u0010^\u001a\u00020Y8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R(\u0010g\u001a\u00020_8��@��X\u0081.¢\u0006\u0018\n\u0004\b`\u0010a\u0012\u0004\bf\u0010\u000f\u001a\u0004\bb\u0010c\"\u0004\bd\u0010e¨\u0006i"}, d2 = {"Lcom/truecaller/sdk/FullScreenConfirmActivity;", "Ln3/b/a/h;", "Le/a/v4/w0/c;", "Landroid/view/View$OnClickListener;", "", "text", "Landroid/text/Spanned;", "qa", "(Ljava/lang/String;)Landroid/text/Spanned;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "r4", "()V", "", "theme", "r", "(I)V", "g0", "Landroid/text/SpannableStringBuilder;", "brandingText", "B", "(Landroid/text/SpannableStringBuilder;)V", "", RemoteMessageConst.Notification.VISIBILITY, "T1", "(Z)V", "M3", "phoneNumber", "partnerAppName", "fullName", "partnerIntentText", "isExpanded", "g8", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "", "Le/a/v4/o0/e;", "profileInfoList", "p", "(Ljava/util/List;)V", "avatarUrl", "U2", "(Ljava/lang/String;)V", "avatarLetter", "n", "Landroid/graphics/drawable/Drawable;", "partnerAppIcon", "T5", "(Landroid/graphics/drawable/Drawable;)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", MraidExpandCommand.NAME, "M5", "visible", "m4", "U8", "()Z", "resultCode", "Landroid/content/Intent;", "result", "U1", "(ILandroid/content/Intent;)V", "V1", "resId", "Q", "(I)Ljava/lang/String;", "onDestroy", "outState", "onSaveInstanceState", "onBackPressed", "onStop", "R1", "S1", "Lcom/truecaller/android/sdk/TrueProfile;", "trueProfile", "o3", "(Lcom/truecaller/android/sdk/TrueProfile;)V", "Le/a/v4/k;", "f", "Le/a/v4/k;", "getAvatarXPresenter", "()Le/a/v4/k;", "setAvatarXPresenter", "(Le/a/v4/k;)V", "avatarXPresenter", "Le/a/v4/r0/c;", "e", "Ls1/g;", "pa", "()Le/a/v4/r0/c;", "binding", "Le/a/v4/g;", "d", "Le/a/v4/g;", "getPresenter$sdk_internal_release", "()Le/a/v4/g;", "setPresenter$sdk_internal_release", "(Le/a/v4/g;)V", "getPresenter$sdk_internal_release$annotations", "presenter", "<init>", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/FullScreenConfirmActivity.class */
public final class FullScreenConfirmActivity extends AbstractC21135u implements AbstractC21160c, View.OnClickListener {
    @Inject

    /* renamed from: d */
    public AbstractC21030g f14534d;

    /* renamed from: e */
    public final g f14535e = C25225a.m3982O1(h.c, new C4416a(this));
    @Inject

    /* renamed from: f */
    public C21038k f14536f;

    /* renamed from: com.truecaller.sdk.FullScreenConfirmActivity$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/FullScreenConfirmActivity$a.class */
    public static final class C4416a extends m implements a<C21072c> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f14537b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4416a(n3.b.a.h hVar) {
            super(0);
            this.f14537b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f14537b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4417R.layout.activity_confirm_profile_full, (ViewGroup) null, false);
            int i = C4417R.C4419id.containerLayoutGroup;
            Group group = (Group) inflate.findViewById(i);
            if (group != null) {
                i = C4417R.C4419id.footerContainer;
                View findViewById = inflate.findViewById(i);
                if (findViewById != null) {
                    int i2 = C4417R.C4419id.confirmText;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById.findViewById(i2);
                    if (appCompatTextView != null) {
                        i2 = C4417R.C4419id.continueWithDifferentNumber;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) findViewById.findViewById(i2);
                        if (appCompatTextView2 != null) {
                            i2 = C4417R.C4419id.legalText;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) findViewById.findViewById(i2);
                            if (appCompatTextView3 != null) {
                                i2 = C4417R.C4419id.profileToFooterDivider;
                                View findViewById2 = findViewById.findViewById(i2);
                                if (findViewById2 != null) {
                                    C21075f c21075f = new C21075f((ConstraintLayout) findViewById, appCompatTextView, appCompatTextView2, appCompatTextView3, findViewById2);
                                    i = C4417R.C4419id.partnerLoginIntentText;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) inflate.findViewById(i);
                                    if (appCompatTextView4 != null) {
                                        i = C4417R.C4419id.partnerSecondaryText;
                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) inflate.findViewById(i);
                                        if (appCompatTextView5 != null) {
                                            i = C4417R.C4419id.progressBar;
                                            ProgressBar progressBar = (ProgressBar) inflate.findViewById(i);
                                            if (progressBar != null) {
                                                ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                                                i = C4417R.C4419id.tcBrandingText;
                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) inflate.findViewById(i);
                                                if (appCompatTextView6 != null) {
                                                    i = C4417R.C4419id.topDivider;
                                                    View findViewById3 = inflate.findViewById(i);
                                                    if (findViewById3 != null) {
                                                        i = C4417R.C4419id.userInfoContainer;
                                                        View findViewById4 = inflate.findViewById(i);
                                                        if (findViewById4 != null) {
                                                            int i3 = C4417R.C4419id.collapsableContentDivider;
                                                            View findViewById5 = findViewById4.findViewById(i3);
                                                            if (findViewById5 != null) {
                                                                i3 = C4417R.C4419id.directionImage;
                                                                AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById4.findViewById(i3);
                                                                if (appCompatImageView != null) {
                                                                    i3 = C4417R.C4419id.expander;
                                                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) findViewById4.findViewById(i3);
                                                                    if (appCompatImageView2 != null) {
                                                                        i3 = C4417R.C4419id.partnerAppImage;
                                                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) findViewById4.findViewById(i3);
                                                                        if (appCompatImageView3 != null) {
                                                                            i3 = C4417R.C4419id.profileImage;
                                                                            AvatarXView avatarXView = (AvatarXView) findViewById4.findViewById(i3);
                                                                            if (avatarXView != null) {
                                                                                i3 = C4417R.C4419id.profileInfoListView;
                                                                                RecyclerView recyclerView = (RecyclerView) findViewById4.findViewById(i3);
                                                                                if (recyclerView != null) {
                                                                                    i3 = C4417R.C4419id.userName;
                                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) findViewById4.findViewById(i3);
                                                                                    if (appCompatTextView7 != null) {
                                                                                        i3 = C4417R.C4419id.userPhone;
                                                                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) findViewById4.findViewById(i3);
                                                                                        if (appCompatTextView8 != null) {
                                                                                            return new C21072c(constraintLayout, group, c21075f, appCompatTextView4, appCompatTextView5, progressBar, constraintLayout, appCompatTextView6, findViewById3, new C21076g((ConstraintLayout) findViewById4, findViewById5, appCompatImageView, appCompatImageView2, appCompatImageView3, avatarXView, recyclerView, appCompatTextView7, appCompatTextView8));
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            throw new NullPointerException("Missing required view with ID: ".concat(findViewById4.getResources().getResourceName(i3)));
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
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: B */
    public void mo10207B(SpannableStringBuilder spannableStringBuilder) {
        l.e(spannableStringBuilder, "brandingText");
        AppCompatTextView appCompatTextView = m34781pa().f59111g;
        l.d(appCompatTextView, "binding.tcBrandingText");
        appCompatTextView.setText(spannableStringBuilder);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: M3 */
    public void mo10206M3() {
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g == null) {
            l.l("presenter");
            throw null;
        }
        abstractC21030g.mo10382m();
        Group group = m34781pa().f59106b;
        l.d(group, "binding.containerLayoutGroup");
        group.setVisibility(0);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: M5 */
    public void mo10205M5(boolean z) {
        C21072c m34781pa = m34781pa();
        l.d(m34781pa, "binding");
        ConstraintLayout constraintLayout = m34781pa.f59105a;
        C26225s c26225s = new C26225s();
        c26225s.m2510M(new f(1));
        f fVar = new f(2);
        fVar.f73083c = 0L;
        c26225s.m2510M(fVar);
        c26225s.m2510M(new C26191c());
        C26222q.m2523a(constraintLayout, c26225s);
        RecyclerView recyclerView = m34781pa().f59113i.f59148e;
        l.d(recyclerView, "binding.userInfoContainer.profileInfoListView");
        recyclerView.setVisibility(z ? 0 : 8);
        View view = m34781pa().f59113i.f59144a;
        l.d(view, "binding.userInfoContaine…collapsableContentDivider");
        view.setVisibility(z ? 0 : 8);
        AppCompatImageView appCompatImageView = m34781pa().f59113i.f59145b;
        l.d(appCompatImageView, "binding.userInfoContainer.expander");
        appCompatImageView.setRotation(z ? 180.0f : 0.0f);
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
        AppCompatTextView appCompatTextView = m34781pa().f59107c.f59141c;
        l.d(appCompatTextView, "binding.footerContainer.…ntinueWithDifferentNumber");
        appCompatTextView.setText(str);
        AppCompatTextView appCompatTextView2 = m34781pa().f59107c.f59141c;
        l.d(appCompatTextView2, "binding.footerContainer.…ntinueWithDifferentNumber");
        appCompatTextView2.setVisibility(0);
        m34781pa().f59107c.f59141c.setOnClickListener(this);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: S1 */
    public void mo10202S1() {
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21160c
    /* renamed from: T1 */
    public void mo10193T1(boolean z) {
        if (!z) {
            ProgressBar progressBar = m34781pa().f59110f;
            l.d(progressBar, "binding.progressBar");
            progressBar.setVisibility(8);
            C21075f c21075f = m34781pa().f59107c;
            l.d(c21075f, "binding.footerContainer");
            ConstraintLayout constraintLayout = c21075f.f59139a;
            l.d(constraintLayout, "binding.footerContainer.root");
            constraintLayout.setVisibility(0);
            return;
        }
        ProgressBar progressBar2 = m34781pa().f59110f;
        l.d(progressBar2, "binding.progressBar");
        progressBar2.setVisibility(0);
        C21075f c21075f2 = m34781pa().f59107c;
        l.d(c21075f2, "binding.footerContainer");
        ConstraintLayout constraintLayout2 = c21075f2.f59139a;
        l.d(constraintLayout2, "binding.footerContainer.root");
        constraintLayout2.setVisibility(4);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21160c
    /* renamed from: T5 */
    public void mo10192T5(Drawable drawable) {
        l.e(drawable, "partnerAppIcon");
        m34781pa().f59113i.f59146c.setImageDrawable(drawable);
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
        AvatarXView avatarXView = m34781pa().f59113i.f59147d;
        Uri parse = Uri.parse(str);
        l.d(parse, "Uri.parse(avatarUrl)");
        avatarXView.mo28717F(parse);
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
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: g0 */
    public void mo10197g0() {
        AvatarXView avatarXView = m34781pa().f59113i.f59147d;
        C21038k c21038k = this.f14536f;
        if (c21038k == null) {
            l.l("avatarXPresenter");
            throw null;
        }
        avatarXView.setPresenter(c21038k);
        m34781pa().f59113i.f59145b.setOnClickListener(this);
        m34781pa().f59107c.f59140b.setOnClickListener(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: g8 */
    public void mo10196g8(String str, String str2, String str3, String str4, boolean z) {
        l.e(str, "phoneNumber");
        l.e(str2, "partnerAppName");
        l.e(str3, "fullName");
        l.e(str4, "partnerIntentText");
        AppCompatTextView appCompatTextView = m34781pa().f59108d;
        l.d(appCompatTextView, "binding.partnerLoginIntentText");
        appCompatTextView.setText(str4);
        AppCompatTextView appCompatTextView2 = m34781pa().f59109e;
        l.d(appCompatTextView2, "binding.partnerSecondaryText");
        String string = getString(C4417R.string.SdkSecondaryTitleText, new Object[]{str2});
        l.d(string, "getString(R.string.SdkSe…itleText, partnerAppName)");
        appCompatTextView2.setText(m34780qa(string));
        AppCompatTextView appCompatTextView3 = m34781pa().f59113i.f59149f;
        l.d(appCompatTextView3, "binding.userInfoContainer.userName");
        appCompatTextView3.setText(str3);
        AppCompatTextView appCompatTextView4 = m34781pa().f59113i.f59150g;
        l.d(appCompatTextView4, "binding.userInfoContainer.userPhone");
        appCompatTextView4.setText(str);
        AppCompatTextView appCompatTextView5 = m34781pa().f59107c.f59142d;
        l.d(appCompatTextView5, "binding.footerContainer.legalText");
        String string2 = getString(C4417R.string.SdkProfileShareTerms, new Object[]{str2});
        l.d(string2, "getString(R.string.SdkPr…areTerms, partnerAppName)");
        appCompatTextView5.setText(m34780qa(string2));
        m34781pa().f59107c.f59142d.setCompoundDrawablesWithIntrinsicBounds(C19291g.m13535l0(this, C4417R.C4418drawable.ic_sdk_terms, C4417R.attr.tcx_textSecondary), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21160c
    /* renamed from: m4 */
    public void mo10191m4(boolean z) {
        AppCompatTextView appCompatTextView = m34781pa().f59107c.f59141c;
        l.d(appCompatTextView, "binding.footerContainer.…ntinueWithDifferentNumber");
        appCompatTextView.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21160c
    /* renamed from: n */
    public void mo10190n(String str) {
        l.e(str, "avatarLetter");
        C21038k c21038k = this.f14536f;
        if (c21038k != null) {
            c21038k.f25433e = str;
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: o3 */
    public void mo10195o3(TrueProfile trueProfile) {
        l.e(trueProfile, "trueProfile");
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10407c(trueProfile);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onBackPressed() {
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10406d();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        if (l.a(view, m34781pa().f59107c.f59140b)) {
            AbstractC21030g abstractC21030g = this.f14534d;
            if (abstractC21030g != null) {
                abstractC21030g.mo10402i();
            } else {
                l.l("presenter");
                throw null;
            }
        } else if (l.a(view, m34781pa().f59113i.f59145b)) {
            AbstractC21030g abstractC21030g2 = this.f14534d;
            if (abstractC21030g2 != null) {
                abstractC21030g2.mo10383g();
            } else {
                l.l("presenter");
                throw null;
            }
        } else if (!l.a(view, m34781pa().f59107c.f59141c)) {
        } else {
            AbstractC21030g abstractC21030g3 = this.f14534d;
            if (abstractC21030g3 != null) {
                abstractC21030g3.mo10406d();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        FullScreenConfirmActivity.super.onCreate(bundle);
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g == null) {
            l.l("presenter");
            throw null;
        } else if (!abstractC21030g.mo10404f(bundle)) {
            finish();
        } else {
            AbstractC21030g abstractC21030g2 = this.f14534d;
            if (abstractC21030g2 != null) {
                abstractC21030g2.mo10314a(this);
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    public void onDestroy() {
        FullScreenConfirmActivity.super.onDestroy();
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10313b();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        FullScreenConfirmActivity.super.onSaveInstanceState(bundle);
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10401j(bundle);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        FullScreenConfirmActivity.super.onStop();
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10400k();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21160c
    /* renamed from: p */
    public void mo10189p(List<? extends C21054e> list) {
        l.e(list, "profileInfoList");
        C21055f c21055f = new C21055f(this, list);
        RecyclerView recyclerView = m34781pa().f59113i.f59148e;
        l.d(recyclerView, "binding.userInfoContainer.profileInfoListView");
        recyclerView.setAdapter(c21055f);
    }

    /* renamed from: pa */
    public final C21072c m34781pa() {
        return (C21072c) this.f14535e.getValue();
    }

    /* renamed from: qa */
    public final Spanned m34780qa(String str) {
        Spanned spanned;
        if (Build.VERSION.SDK_INT >= 24) {
            spanned = Html.fromHtml(str, 0);
            l.d(spanned, "Html.fromHtml(text, Html.FROM_HTML_MODE_LEGACY)");
        } else {
            spanned = Html.fromHtml(str);
            l.d(spanned, "Html.fromHtml(text)");
        }
        return spanned;
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21160c
    /* renamed from: r */
    public void mo10188r(int i) {
        setTheme(i == 1 ? C4417R.style.TrueCaller_Base_Dark : C4417R.style.TrueCaller_Base_Light);
        C21072c m34781pa = m34781pa();
        l.d(m34781pa, "binding");
        setContentView(m34781pa.f59105a);
    }

    @Override // p193e.p194a.p1315v4.p1333w0.AbstractC21159b
    /* renamed from: r4 */
    public void mo10194r4() {
        AbstractC21030g abstractC21030g = this.f14534d;
        if (abstractC21030g != null) {
            abstractC21030g.mo10403h();
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
