package com.truecaller.sdk.oAuth.view.consentScreen;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior$d;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import com.google.android.material.textfield.TextInputLayout;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.sdk.C4417R;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import com.truecaller.sdk.oAuth.networking.data.ScopeInfo;
import com.truecaller.sdk.oAuth.view.dialog.AdditionalPartnerInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.g0.b;
import p1727n3.p1789g0.AbstractC26214m;
import p1727n3.p1789g0.C26221p;
import p1727n3.p1789g0.C26222q;
import p1727n3.p1807k.p1818g.p1819f.C26548b;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1315v4.C21038k;
import p193e.p194a.p1315v4.p1320r0.C21070a;
import p193e.p194a.p1315v4.p1320r0.C21078i;
import p193e.p194a.p1315v4.p1321s0.AbstractC21090h;
import p193e.p194a.p1315v4.p1321s0.C21080a;
import p193e.p194a.p1315v4.p1321s0.C21091i;
import p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21118c;
import p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d;
import p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f;
import p193e.p194a.p1315v4.p1321s0.p1326m.p1328b.C21127e;
import p193e.p194a.p372b0.p417k.C8494c;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\bv\u0010\u000bJ\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001d\u0010\u0019J\u0017\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001f\u0010\u0019J\u0017\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010\u000bJ\u0017\u0010'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020%H\u0016¢\u0006\u0004\b*\u0010(J\u0017\u0010+\u001a\u00020\u00072\u0006\u0010)\u001a\u00020%H\u0016¢\u0006\u0004\b+\u0010(J\u0017\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0016H\u0016¢\u0006\u0004\b-\u0010\u0019J\u001d\u00101\u001a\u00020\u00072\f\u00100\u001a\b\u0012\u0004\u0012\u00020/0.H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000eH\u0016¢\u0006\u0004\b4\u0010\u0011J\u0011\u00106\u001a\u00020\u0007*\u000205¢\u0006\u0004\b6\u00107J\u0011\u00108\u001a\u00020\u0007*\u000205¢\u0006\u0004\b8\u00107J'\u0010<\u001a\u00020\u00072\u0006\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020%2\u0006\u0010;\u001a\u00020\u0016H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u00072\u0006\u0010>\u001a\u00020%H\u0016¢\u0006\u0004\b?\u0010(J\u0017\u0010A\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u0016H\u0016¢\u0006\u0004\bA\u0010\u0019J\u0017\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0016H\u0016¢\u0006\u0004\bC\u0010\u0019J\u0017\u0010E\u001a\u00020\u00072\u0006\u0010D\u001a\u00020\u0016H\u0016¢\u0006\u0004\bE\u0010\u0019J\u0017\u0010G\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u0016H\u0016¢\u0006\u0004\bG\u0010\u0019J\u0017\u0010J\u001a\u00020\u00072\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\u0007H\u0016¢\u0006\u0004\bL\u0010\u000bJ\u0017\u0010N\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0016H\u0016¢\u0006\u0004\bN\u0010\u0019J\u000f\u0010O\u001a\u00020\u0007H\u0016¢\u0006\u0004\bO\u0010\u000bJ\u0017\u0010Q\u001a\u00020\u00072\u0006\u0010P\u001a\u000205H\u0016¢\u0006\u0004\bQ\u00107J\u000f\u0010R\u001a\u00020\u0007H\u0016¢\u0006\u0004\bR\u0010\u000bJ\u000f\u0010S\u001a\u00020\u0007H\u0016¢\u0006\u0004\bS\u0010\u000bJ!\u0010W\u001a\u00020\u00072\u0006\u0010T\u001a\u00020%2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bW\u0010XJ\u0017\u0010Z\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020\u0005H\u0014¢\u0006\u0004\bZ\u0010\tJ\u000f\u0010[\u001a\u00020\u0007H\u0014¢\u0006\u0004\b[\u0010\u000bJ\u000f\u0010\\\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\\\u0010\u000bJ\u0017\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020]H\u0016¢\u0006\u0004\b_\u0010`R\u001d\u0010f\u001a\u00020a8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010m\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\"\u0010u\u001a\u00020n8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010t¨\u0006w"}, d2 = {"Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;", "Ln3/b/a/h;", "Le/a/v4/s0/m/a/f;", "Landroid/view/View$OnClickListener;", "Le/a/v4/s0/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "r4", "g0", "", "visible", "T1", "(Z)V", "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;", "partnerDetails", "l6", "(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;)V", "", "partnerIntentText", "X9", "(Ljava/lang/String;)V", "fullName", "i6", "numberWithoutExtension", "t9", "partnerAvatarLetter", "g6", "Landroid/net/Uri;", "logoUri", "p4", "(Landroid/net/Uri;)V", "N5", "", "backgroundColor", "Q1", "(I)V", "avatarColor", "X3", "z1", "text", "R1", "", "Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;", "scopes", "C6", "(Ljava/util/List;)V", "isChecked", "X7", "Landroid/view/View;", "enable", "(Landroid/view/View;)V", "disable", "buttonColor", "buttonTextColor", "buttonText", "P6", "(IILjava/lang/String;)V", "resourceId", "V3", "loginText", "E6", "privacyPolicyUrl", "y8", "termsOfServiceUrl", "q9", "url", C22021b.f61237c, "Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;", "additionalPartnerInfo", "U6", "(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;)V", "t6", "languageName", "n6", "S1", ViewAction.VIEW, "onClick", "onBackPressed", "V1", "resultCode", "Landroid/content/Intent;", "result", "U1", "(ILandroid/content/Intent;)V", "outState", "onSaveInstanceState", "onStop", "onDestroy", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Le/a/v4/r0/a;", "d", "Ls1/g;", "pa", "()Le/a/v4/r0/a;", "binding", "Le/a/v4/s0/m/a/d;", "f", "Le/a/v4/s0/m/a/d;", "presenter", "e", "I", "selectedScopesCount", "Le/a/v4/k;", "g", "Le/a/v4/k;", "getAvatarXPresenter", "()Le/a/v4/k;", "setAvatarXPresenter", "(Le/a/v4/k;)V", "avatarXPresenter", "<init>", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity.class */
public final class BottomSheetOAuthActivity extends AbstractC21118c implements AbstractC21121f, View.OnClickListener, AbstractC21090h {

    /* renamed from: d */
    public final g f14560d = C25225a.m3982O1(h.c, new C4425a(this));

    /* renamed from: e */
    public int f14561e;
    @Inject

    /* renamed from: f */
    public AbstractC21119d f14562f;
    @Inject

    /* renamed from: g */
    public C21038k f14563g;

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$a.class */
    public static final class C4425a extends m implements a<C21070a> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f14564b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4425a(n3.b.a.h hVar) {
            super(0);
            this.f14564b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f14564b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            CoordinatorLayout inflate = layoutInflater.inflate(C4417R.layout.activity_bottom_sheet_o_auth, (ViewGroup) null, false);
            int i = C4417R.C4419id.oauth_layout;
            View findViewById = inflate.findViewById(i);
            if (findViewById != null) {
                int i2 = C4417R.C4419id.atv_language;
                MaterialAutoCompleteTextView findViewById2 = findViewById.findViewById(i2);
                if (findViewById2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) findViewById;
                    i2 = C4417R.C4419id.fl_primary_cta;
                    FrameLayout frameLayout = (FrameLayout) findViewById.findViewById(i2);
                    if (frameLayout != null) {
                        i2 = C4417R.C4419id.iv_info;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById.findViewById(i2);
                        if (appCompatImageView != null) {
                            i2 = C4417R.C4419id.iv_partner;
                            AvatarXView avatarXView = (AvatarXView) findViewById.findViewById(i2);
                            if (avatarXView != null) {
                                LinearLayout linearLayout = (LinearLayout) findViewById.findViewById(C4417R.C4419id.ll_buttons);
                                i2 = C4417R.C4419id.ll_info_container;
                                LinearLayout linearLayout2 = (LinearLayout) findViewById.findViewById(i2);
                                if (linearLayout2 != null) {
                                    i2 = C4417R.C4419id.ll_oauthView;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById.findViewById(i2);
                                    if (constraintLayout2 != null) {
                                        i2 = C4417R.C4419id.pb_confirm;
                                        ProgressBar progressBar = (ProgressBar) findViewById.findViewById(i2);
                                        if (progressBar != null) {
                                            i2 = C4417R.C4419id.pb_loader;
                                            ProgressBar progressBar2 = (ProgressBar) findViewById.findViewById(i2);
                                            if (progressBar2 != null) {
                                                i2 = C4417R.C4419id.rv_scopes;
                                                RecyclerView recyclerView = (RecyclerView) findViewById.findViewById(i2);
                                                if (recyclerView != null) {
                                                    Space space = (Space) findViewById.findViewById(C4417R.C4419id.space_btn_divider);
                                                    i2 = C4417R.C4419id.til_language;
                                                    TextInputLayout textInputLayout = (TextInputLayout) findViewById.findViewById(i2);
                                                    if (textInputLayout != null) {
                                                        i2 = C4417R.C4419id.top_container;
                                                        ConstraintLayout constraintLayout3 = (ConstraintLayout) findViewById.findViewById(i2);
                                                        if (constraintLayout3 != null) {
                                                            i2 = C4417R.C4419id.tv_confirm;
                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById.findViewById(i2);
                                                            if (appCompatTextView != null) {
                                                                i2 = C4417R.C4419id.tv_continueWithDifferentNumber;
                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) findViewById.findViewById(i2);
                                                                if (appCompatTextView2 != null) {
                                                                    i2 = C4417R.C4419id.tv_login;
                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) findViewById.findViewById(i2);
                                                                    if (appCompatTextView3 != null) {
                                                                        i2 = C4417R.C4419id.tv_partner_name;
                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) findViewById.findViewById(i2);
                                                                        if (appCompatTextView4 != null) {
                                                                            i2 = C4417R.C4419id.tv_privacy;
                                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) findViewById.findViewById(i2);
                                                                            if (appCompatTextView5 != null) {
                                                                                i2 = C4417R.C4419id.tv_terms;
                                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) findViewById.findViewById(i2);
                                                                                if (appCompatTextView6 != null) {
                                                                                    i2 = C4417R.C4419id.tv_user_name;
                                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) findViewById.findViewById(i2);
                                                                                    if (appCompatTextView7 != null) {
                                                                                        i2 = C4417R.C4419id.tv_user_number;
                                                                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) findViewById.findViewById(i2);
                                                                                        if (appCompatTextView8 != null) {
                                                                                            return new C21070a(inflate, new C21078i(constraintLayout, findViewById2, constraintLayout, frameLayout, appCompatImageView, avatarXView, linearLayout, linearLayout2, constraintLayout2, progressBar, progressBar2, recyclerView, space, textInputLayout, constraintLayout3, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8));
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
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(findViewById.getResources().getResourceName(i2)));
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$b.class */
    public static final class RunnableC4426b implements Runnable {
        public RunnableC4426b() {
            BottomSheetOAuthActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C21038k c21038k = BottomSheetOAuthActivity.this.f14563g;
            if (c21038k != null) {
                c21038k.m28738pk(false);
            } else {
                l.l("avatarXPresenter");
                throw null;
            }
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$c */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$c.class */
    public static final class C4427c extends BottomSheetBehavior$d {
        public C4427c() {
            BottomSheetOAuthActivity.this = r4;
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
                BottomSheetOAuthActivity.this.onBackPressed();
            }
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$d */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$d.class */
    public static final class C4428d implements AdapterView.OnItemClickListener {
        public C4428d() {
            BottomSheetOAuthActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            C21080a c21080a = C21080a.f59179c;
            C8494c c8494c = C21080a.f59178b.get(i);
            AbstractC21119d abstractC21119d = BottomSheetOAuthActivity.this.f14562f;
            if (abstractC21119d != null) {
                abstractC21119d.mo10312c(c8494c.f26267b);
            }
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$e */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$e.class */
    public static final class View$OnClickListenerC4429e implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f14569b;

        public View$OnClickListenerC4429e(String str) {
            BottomSheetOAuthActivity.this = r4;
            this.f14569b = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC21119d abstractC21119d = BottomSheetOAuthActivity.this.f14562f;
            if (abstractC21119d != null) {
                abstractC21119d.mo10300o("pp_clicked", this.f14569b);
            }
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$f */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$f.class */
    public static final class C4430f implements Linkify.TransformFilter {

        /* renamed from: a */
        public final /* synthetic */ String f14570a;

        public C4430f(String str) {
            this.f14570a = str;
        }

        @Override // android.text.util.Linkify.TransformFilter
        public final String transformUrl(Matcher matcher, String str) {
            return this.f14570a;
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$g */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g.class */
    public static final class View$OnClickListenerC4431g implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f14572b;

        public View$OnClickListenerC4431g(String str) {
            BottomSheetOAuthActivity.this = r4;
            this.f14572b = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC21119d abstractC21119d = BottomSheetOAuthActivity.this.f14562f;
            if (abstractC21119d != null) {
                abstractC21119d.mo10300o("tos_clicked", this.f14572b);
            }
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$h */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$h.class */
    public static final class C4432h implements Linkify.TransformFilter {

        /* renamed from: a */
        public final /* synthetic */ String f14573a;

        public C4432h(String str) {
            this.f14573a = str;
        }

        @Override // android.text.util.Linkify.TransformFilter
        public final String transformUrl(Matcher matcher, String str) {
            return this.f14573a;
        }
    }

    /* renamed from: com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity$i */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$i.class */
    public static final class C4433i extends C26221p {
        public C4433i() {
            BottomSheetOAuthActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.truecaller.sdk.oAuth.view.consentScreen.BottomSheetOAuthActivity, android.app.Activity] */
        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            AbstractC21119d abstractC21119d;
            l.e(abstractC26214m, "transition");
            if (BottomSheetOAuthActivity.this.isFinishing() || (abstractC21119d = BottomSheetOAuthActivity.this.f14562f) == null) {
                return;
            }
            abstractC21119d.mo10301n();
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: C6 */
    public void mo10298C6(List<ScopeInfo> list) {
        l.e(list, "scopes");
        this.f14561e = list.size();
        RecyclerView recyclerView = m34779pa().f59102b.f59164k;
        l.d(recyclerView, "binding.oauthLayout.rvScopes");
        recyclerView.setAdapter(new C21091i(list, this));
        m34779pa().f59102b.f59164k.setHasFixedSize(true);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: E6 */
    public void mo10297E6(String str) {
        l.e(str, "loginText");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59168o;
        l.d(appCompatTextView, "binding.oauthLayout.tvLogin");
        appCompatTextView.setText(MediaSessionCompat.m43246d0(str, 0));
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: N5 */
    public void mo10296N5() {
        m34779pa().f59102b.f59158e.postDelayed(new RunnableC4426b(), 1500L);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: P6 */
    public void mo10295P6(int i, int i2, String str) {
        l.e(str, "buttonText");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59166m;
        ColorStateList valueOf = ColorStateList.valueOf(i);
        AtomicInteger atomicInteger = C26614s.f74505a;
        appCompatTextView.setBackgroundTintList(valueOf);
        m34779pa().f59102b.f59166m.setTextColor(i2);
        AppCompatTextView appCompatTextView2 = m34779pa().f59102b.f59166m;
        l.d(appCompatTextView2, "binding.oauthLayout.tvConfirm");
        appCompatTextView2.setText(str);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: Q1 */
    public void mo10294Q1(int i) {
        C21038k c21038k = this.f14563g;
        if (c21038k != null) {
            c21038k.f25434f = Integer.valueOf(i);
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: R1 */
    public void mo10293R1(String str) {
        l.e(str, "text");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59167n;
        l.d(appCompatTextView, "binding.oauthLayout.tvContinueWithDifferentNumber");
        appCompatTextView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: S1 */
    public void mo10292S1() {
        C26222q.m2523a(m34779pa().f59102b.f59155b, new b().m2511L(new C4433i()));
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59166m;
        l.d(appCompatTextView, "binding.oauthLayout.tvConfirm");
        appCompatTextView.setText(getString(C4417R.string.SDKPleaseWaitLoaderMsg));
        AppCompatTextView appCompatTextView2 = m34779pa().f59102b.f59166m;
        l.d(appCompatTextView2, "binding.oauthLayout.tvConfirm");
        disable(appCompatTextView2);
        ProgressBar progressBar = m34779pa().f59102b.f59162i;
        l.d(progressBar, "binding.oauthLayout.pbConfirm");
        progressBar.setVisibility(0);
        AppCompatTextView appCompatTextView3 = m34779pa().f59102b.f59168o;
        l.d(appCompatTextView3, "binding.oauthLayout.tvLogin");
        appCompatTextView3.setVisibility(8);
        RecyclerView recyclerView = m34779pa().f59102b.f59164k;
        l.d(recyclerView, "binding.oauthLayout.rvScopes");
        recyclerView.setVisibility(8);
        LinearLayout linearLayout = m34779pa().f59102b.f59160g;
        l.d(linearLayout, "binding.oauthLayout.llInfoContainer");
        linearLayout.setVisibility(8);
        AppCompatTextView appCompatTextView4 = m34779pa().f59102b.f59167n;
        l.d(appCompatTextView4, "binding.oauthLayout.tvContinueWithDifferentNumber");
        appCompatTextView4.setVisibility(8);
        Space space = m34779pa().f59102b.f59165l;
        if (space != null) {
            space.setVisibility(8);
        }
        AppCompatImageView appCompatImageView = m34779pa().f59102b.f59157d;
        l.d(appCompatImageView, "binding.oauthLayout.ivInfo");
        appCompatImageView.setVisibility(8);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: T1 */
    public void mo10291T1(boolean z) {
        ProgressBar progressBar = m34779pa().f59102b.f59163j;
        l.d(progressBar, "binding.oauthLayout.pbLoader");
        progressBar.setVisibility(z ? 0 : 8);
        ConstraintLayout constraintLayout = m34779pa().f59102b.f59161h;
        l.d(constraintLayout, "binding.oauthLayout.llOauthView");
        constraintLayout.setVisibility(z ? 8 : 0);
        LinearLayout linearLayout = m34779pa().f59102b.f59159f;
        if (linearLayout != null) {
            int i = 0;
            if (z) {
                i = 8;
            }
            linearLayout.setVisibility(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: U1 */
    public void mo10290U1(int i, Intent intent) {
        setResult(i, intent);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: U6 */
    public void mo10289U6(AdditionalPartnerInfo additionalPartnerInfo) {
        l.e(additionalPartnerInfo, "additionalPartnerInfo");
        C21127e c21127e = C21127e.f59274j;
        l.e(additionalPartnerInfo, "additionalPartnerInfo");
        C21127e c21127e2 = new C21127e();
        Bundle bundle = new Bundle();
        bundle.putParcelable("key_partner_info", additionalPartnerInfo);
        c21127e2.setArguments(bundle);
        c21127e2.show(getSupportFragmentManager(), C21127e.f59273i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: V1 */
    public void mo10288V1() {
        finish();
        overridePendingTransition(0, 0);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: V3 */
    public void mo10287V3(int i) {
        m34779pa().f59102b.f59166m.setBackgroundResource(i);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: X3 */
    public void mo10286X3(int i) {
        C21038k c21038k = this.f14563g;
        if (c21038k != null) {
            c21038k.mo28721Wj(Integer.valueOf(i));
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21090h
    /* renamed from: X7 */
    public void mo10333X7(boolean z) {
        if (z) {
            this.f14561e++;
        } else {
            this.f14561e--;
        }
        if (this.f14561e > 0) {
            AppCompatTextView appCompatTextView = m34779pa().f59102b.f59166m;
            l.d(appCompatTextView, "binding.oauthLayout.tvConfirm");
            enable(appCompatTextView);
            return;
        }
        AppCompatTextView appCompatTextView2 = m34779pa().f59102b.f59166m;
        l.d(appCompatTextView2, "binding.oauthLayout.tvConfirm");
        disable(appCompatTextView2);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: X9 */
    public void mo10285X9(String str) {
        l.e(str, "partnerIntentText");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59169p;
        l.d(appCompatTextView, "binding.oauthLayout.tvPartnerName");
        appCompatTextView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: b */
    public void mo10284b(String str) {
        l.e(str, "url");
        C8613t.m28203i(this, str);
    }

    public final void disable(View view) {
        l.e(view, "$this$disable");
        view.setAlpha(0.38f);
        view.setClickable(false);
    }

    public final void enable(View view) {
        l.e(view, "$this$enable");
        view.setAlpha(1.0f);
        view.setClickable(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: g0 */
    public void mo10283g0() {
        AvatarXView avatarXView = m34779pa().f59102b.f59158e;
        C21038k c21038k = this.f14563g;
        if (c21038k == null) {
            l.l("avatarXPresenter");
            throw null;
        }
        avatarXView.setPresenter(c21038k);
        C21038k c21038k2 = this.f14563g;
        if (c21038k2 == null) {
            l.l("avatarXPresenter");
            throw null;
        }
        c21038k2.m28738pk(true);
        m34779pa().f59102b.f59166m.setOnClickListener(this);
        m34779pa().f59102b.f59157d.setOnClickListener(this);
        m34779pa().f59102b.f59167n.setOnClickListener(this);
        BottomSheetBehavior H = BottomSheetBehavior.H(m34779pa().f59102b.f59155b);
        l.d(H, "BottomSheetBehavior.from…g.oauthLayout.clRootView)");
        H.M(3);
        C4427c c4427c = new C4427c();
        if (!H.P.contains(c4427c)) {
            H.P.add(c4427c);
        }
        int i = C4417R.layout.item_language;
        C21080a c21080a = C21080a.f59179c;
        List<C8494c> list = C21080a.f59178b;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C8494c c8494c : list) {
            arrayList.add(c8494c.f26266a);
        }
        m34779pa().f59102b.f59154a.setAdapter(new ArrayAdapter((Context) this, i, (List) arrayList));
        MaterialAutoCompleteTextView materialAutoCompleteTextView = m34779pa().f59102b.f59154a;
        l.d(materialAutoCompleteTextView, "binding.oauthLayout.atvLanguage");
        materialAutoCompleteTextView.setThreshold(20);
        MaterialAutoCompleteTextView materialAutoCompleteTextView2 = m34779pa().f59102b.f59154a;
        l.d(materialAutoCompleteTextView2, "binding.oauthLayout.atvLanguage");
        materialAutoCompleteTextView2.setOnItemClickListener(new C4428d());
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: g6 */
    public void mo10282g6(String str) {
        l.e(str, "partnerAvatarLetter");
        C21038k c21038k = this.f14563g;
        if (c21038k != null) {
            c21038k.f25433e = str;
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: i6 */
    public void mo10281i6(String str) {
        l.e(str, "fullName");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59172s;
        l.d(appCompatTextView, "binding.oauthLayout.tvUserName");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: l6 */
    public void mo10280l6(PartnerDetailsResponse partnerDetailsResponse) {
        l.e(partnerDetailsResponse, "partnerDetails");
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10311d(partnerDetailsResponse);
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: n6 */
    public void mo10279n6(String str) {
        l.e(str, "languageName");
        m34779pa().f59102b.f59154a.setText(str, false);
    }

    public void onBackPressed() {
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10310e();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractC21119d abstractC21119d;
        l.e(view, ViewAction.VIEW);
        if (l.a(view, m34779pa().f59102b.f59166m)) {
            if (this.f14561e <= 0) {
                C19291g.m13589S1(this, C4417R.string.SdkNoScopeSelectedError, null, 0, 6);
                return;
            }
            AbstractC21119d abstractC21119d2 = this.f14562f;
            if (abstractC21119d2 == null) {
                return;
            }
            abstractC21119d2.mo10305j();
        } else if (l.a(view, m34779pa().f59102b.f59167n)) {
            AbstractC21119d abstractC21119d3 = this.f14562f;
            if (abstractC21119d3 == null) {
                return;
            }
            abstractC21119d3.mo10307h();
        } else if (!l.a(view, m34779pa().f59102b.f59157d) || (abstractC21119d = this.f14562f) == null) {
        } else {
            abstractC21119d.mo10299p();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        l.e(configuration, "newConfig");
        BottomSheetOAuthActivity.super.onConfigurationChanged(configuration);
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10309f(configuration.orientation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        BottomSheetOAuthActivity.super.onCreate(bundle);
        C21070a m34779pa = m34779pa();
        l.d(m34779pa, "binding");
        setContentView(m34779pa.f59101a);
        AbstractC21119d abstractC21119d = this.f14562f;
        if (!(abstractC21119d != null ? abstractC21119d.mo10308g(bundle) : false)) {
            finish();
            return;
        }
        AbstractC21119d abstractC21119d2 = this.f14562f;
        if (abstractC21119d2 == null) {
            return;
        }
        abstractC21119d2.mo10314a(this);
    }

    public void onDestroy() {
        BottomSheetOAuthActivity.super.onDestroy();
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10313b();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        BottomSheetOAuthActivity.super.onSaveInstanceState(bundle);
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10304k(bundle);
        }
    }

    public void onStart() {
        BottomSheetOAuthActivity.super.onStart();
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10303l();
        }
    }

    public void onStop() {
        BottomSheetOAuthActivity.super.onStop();
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10302m();
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: p4 */
    public void mo10278p4(Uri uri) {
        l.e(uri, "logoUri");
        m34779pa().f59102b.f59158e.mo28717F(uri);
    }

    /* renamed from: pa */
    public final C21070a m34779pa() {
        return (C21070a) this.f14560d.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: q9 */
    public void mo10277q9(String str) {
        l.e(str, "termsOfServiceUrl");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59171r;
        l.d(appCompatTextView, "binding.oauthLayout.tvTerms");
        int i = C4417R.string.SdkProfileTerms;
        appCompatTextView.setText(getString(i));
        C26548b.m1699b(m34779pa().f59102b.f59171r, Pattern.compile(getString(i)), null, null, new C4432h(str));
        m34779pa().f59102b.f59171r.setOnClickListener(new View$OnClickListenerC4431g(str));
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: r4 */
    public void mo10276r4() {
        AbstractC21119d abstractC21119d = this.f14562f;
        if (abstractC21119d != null) {
            abstractC21119d.mo10306i();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: t6 */
    public void mo10275t6() {
        recreate();
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: t9 */
    public void mo10274t9(String str) {
        l.e(str, "numberWithoutExtension");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59173t;
        l.d(appCompatTextView, "binding.oauthLayout.tvUserNumber");
        appCompatTextView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: y8 */
    public void mo10273y8(String str) {
        l.e(str, "privacyPolicyUrl");
        AppCompatTextView appCompatTextView = m34779pa().f59102b.f59170q;
        l.d(appCompatTextView, "binding.oauthLayout.tvPrivacy");
        int i = C4417R.string.SdkProfilePrivacy;
        appCompatTextView.setText(getString(i));
        C26548b.m1699b(m34779pa().f59102b.f59170q, Pattern.compile(getString(i)), null, null, new C4430f(str));
        m34779pa().f59102b.f59170q.setOnClickListener(new View$OnClickListenerC4429e(str));
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f
    /* renamed from: z1 */
    public void mo10272z1(int i) {
        C21038k c21038k = this.f14563g;
        if (c21038k != null) {
            c21038k.f25435g = Integer.valueOf(i);
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }
}
