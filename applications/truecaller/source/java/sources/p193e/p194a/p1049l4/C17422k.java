package p193e.p194a.p1049l4;

import android.app.Activity;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.Base64;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.URLUtil;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.api.services.survey.AcsBizmon;
import com.truecaller.api.services.survey.AcsGeneric;
import com.truecaller.api.services.survey.AcsNameSuggestion;
import com.truecaller.api.services.survey.Bool;
import com.truecaller.api.services.survey.FreeText;
import com.truecaller.api.services.survey.Question;
import com.truecaller.api.services.survey.Rating;
import com.truecaller.api.services.survey.SingleAnswer;
import com.truecaller.api.services.survey.Survey;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.data.entity.SpamData;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.profile.data.dto.OnlineIds;
import com.truecaller.push.PushIdDto;
import com.truecaller.referral.ReferralManager;
import com.truecaller.social_login.SocialAccountProfile;
import com.truecaller.social_media.domain.data.TCNewsLinksConfig;
import com.truecaller.social_media.domain.data.TCNewsLinksForRegion;
import com.truecaller.spamcategories.C4502R;
import com.truecaller.spamcategories.SpamCategory;
import com.truecaller.surveys.data.entities.Choice;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.Survey;
import com.truecaller.surveys.data.entities.SurveyFlow;
import com.truecaller.surveys.data.local.SurveyEntity;
import com.truecaller.tagger.TagPickActivity;
import com.truecaller.tagger.tagPicker.TaggerActivity;
import com.truecaller.themes.C4621R;
import e.m.e.k;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18228e;
import p193e.p194a.p1113o4.C18922d;
import p193e.p194a.p1129p5.AbstractC19251o0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19496e;
import p193e.p194a.p1159q4.C19655n0;
import p193e.p194a.p1159q4.C19672u;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1317p0.AbstractC21061b;
import p193e.p194a.p1315v4.p1321s0.AbstractC21087f;
import p193e.p194a.p1315v4.p1321s0.C21084e;
import p193e.p194a.p1315v4.p1321s0.p1322k.AbstractC21095b;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1334w.p1336b.p1338d.C21183a;
import p193e.p194a.p1334w.p1339c.C21185a;
import p193e.p194a.p1342w4.AbstractC21217o;
import p193e.p194a.p1342w4.C21207g;
import p193e.p194a.p1342w4.C21218p;
import p193e.p194a.p1342w4.p1344s.AbstractC21282r0;
import p193e.p194a.p288a0.AbstractC7383d;
import p193e.p194a.p288a0.AbstractC7392k;
import p193e.p194a.p288a0.AbstractC7401p;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p739f0.p748i.C13899a;
import p193e.p194a.p786g0.p789k.AbstractC14393f;
import p193e.p194a.p798g5.p799b0.C14463b;
import p193e.p194a.p798g5.p799b0.C14464c;
import p193e.p194a.p804h.p806b.p818w0.AbstractC14630d;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p935j0.AbstractC15533m;
import p193e.p194a.p935j0.C15521h;
import p193e.p194a.p935j0.C15535o;
import p193e.p194a.p997k3.p1000l.C16502j;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.b.f;
import q3.b.k.g;
import q3.b.l.a;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.v;
import s1.i;
import s1.s;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.l4.k */
/* loaded from: classes12-dex2jar.jar:e/a/l4/k.class */
public final class C17422k implements Object<AbstractC19870l> {
    /* renamed from: A */
    public static /* synthetic */ void m16117A(AbstractC21087f abstractC21087f, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = true;
        }
        ((C21084e) abstractC21087f).m10366B(i, i2, z);
    }

    /* renamed from: B */
    public static final TrueProfile m16116B(AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a) {
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        TrueProfile trueProfile = new TrueProfile();
        trueProfile.phoneNumber = abstractC8438a.getString("profileNumber");
        trueProfile.countryCode = abstractC8438a.getString("profileCountryIso", "");
        trueProfile.firstName = abstractC8541a.getString("profileFirstName") + ' ' + abstractC8541a.getString("profileLastName");
        trueProfile.jobTitle = abstractC8541a.getString("profileCompanyJob");
        trueProfile.companyName = abstractC8541a.getString("profileCompanyName");
        trueProfile.email = abstractC8541a.getString("profileEmail");
        trueProfile.street = abstractC8541a.getString("profileStreet");
        trueProfile.zipcode = abstractC8541a.getString("profileZip");
        trueProfile.city = abstractC8541a.getString("profileCity");
        trueProfile.facebookId = abstractC8541a.getString("profileFacebook");
        trueProfile.twitterId = abstractC8541a.getString("profileTwitter");
        trueProfile.url = abstractC8541a.getString("profileWeb");
        trueProfile.gender = abstractC8541a.getString("profileGender");
        trueProfile.avatarUrl = abstractC8541a.getString("profileAvatar");
        return trueProfile;
    }

    /* renamed from: C */
    public static final String m16115C(String str) {
        l.e(str, "$this$getAvatarLetter");
        char[] charArray = str.toCharArray();
        l.d(charArray, "(this as java.lang.String).toCharArray()");
        Character m3840t0 = C25225a.m3840t0(charArray);
        String str2 = "";
        if (m3840t0 != null) {
            char charValue = m3840t0.charValue();
            String valueOf = Character.isLetter(charValue) ? String.valueOf(charValue) : "";
            str2 = "";
            if (valueOf != null) {
                str2 = valueOf;
            }
        }
        return str2;
    }

    /* renamed from: D */
    public static final ContextThemeWrapper m16114D(Context context) {
        return m16113E(context, false);
    }

    /* renamed from: E */
    public static final ContextThemeWrapper m16113E(Context context, boolean z) {
        ContextThemeWrapper contextThemeWrapper;
        l.e(context, "$this$getContextThemeWrapper");
        if (z) {
            C15314a c15314a = C15314a.f43582g;
            contextThemeWrapper = new ContextThemeWrapper(context, C15314a.m18938a().f43588d);
        } else {
            C15314a c15314a2 = C15314a.f43582g;
            contextThemeWrapper = new ContextThemeWrapper(context, C15314a.m18938a().f43587c);
        }
        return contextThemeWrapper;
    }

    /* renamed from: F */
    public static Intent m16112F(Context context) {
        Intent intent = new Intent(context, TruecallerInit.class);
        intent.setFlags(268435456);
        return intent;
    }

    /* renamed from: G */
    public static final String m16111G(AbstractC14393f abstractC14393f) {
        String str;
        l.e(abstractC14393f, "$this$name");
        if (abstractC14393f instanceof AbstractC14393f.C14394a) {
            str = "i";
        } else if (abstractC14393f instanceof AbstractC14393f.C14396c) {
            str = "v";
        } else if (!(abstractC14393f instanceof AbstractC14393f.C14395b)) {
            throw new i();
        } else {
            str = "o";
        }
        return str;
    }

    /* renamed from: H */
    public static final int m16110H(Message message) {
        l.e(message, "$this$getNotificationId");
        b bVar = message.f13384e;
        l.d(bVar, "date");
        return (int) (((e) bVar).a % 100000);
    }

    /* renamed from: I */
    public static final String m16109I(AbstractC8541a abstractC8541a) {
        l.e(abstractC8541a, "$this$getProfileFullName");
        String m13813D = C19231g0.m13813D(StringConstant.SPACE, abstractC8541a.getString("profileFirstName"), abstractC8541a.getString("profileLastName"));
        l.d(m13813D, "StringUtils.combine(\" \",…ttings.PROFILE_LASTNAME))");
        return m13813D;
    }

    /* renamed from: J */
    public static final String m16108J(AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a) {
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        return C19231g0.m13810G(abstractC8541a.getString("profileNationalNumber"), abstractC8438a.getString("profileNumber"));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b4 A[Catch: Exception -> 0x01e1, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x01e1, blocks: (B:13:0x0063, B:18:0x007e, B:23:0x00a0, B:26:0x00b4, B:28:0x00bd, B:29:0x00ca, B:32:0x00d5, B:36:0x00f0, B:39:0x00fb, B:43:0x010e, B:46:0x0124, B:47:0x0132, B:48:0x0154, B:49:0x0157, B:50:0x0160, B:51:0x0169, B:53:0x016b, B:56:0x0175, B:60:0x0188, B:63:0x019e, B:66:0x01a8, B:67:0x01b4, B:41:0x0102, B:58:0x017c), top: B:91:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d5 A[Catch: Exception -> 0x01e1, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x01e1, blocks: (B:13:0x0063, B:18:0x007e, B:23:0x00a0, B:26:0x00b4, B:28:0x00bd, B:29:0x00ca, B:32:0x00d5, B:36:0x00f0, B:39:0x00fb, B:43:0x010e, B:46:0x0124, B:47:0x0132, B:48:0x0154, B:49:0x0157, B:50:0x0160, B:51:0x0169, B:53:0x016b, B:56:0x0175, B:60:0x0188, B:63:0x019e, B:66:0x01a8, B:67:0x01b4, B:41:0x0102, B:58:0x017c), top: B:91:0x004a }] */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m16107K(com.truecaller.sdk.oAuth.networking.ErrorType r7, java.lang.String r8, s1.z.b.l<? super s1.w.d<? super x3.a0<T>>, ? extends java.lang.Object> r9, s1.w.d<? super p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.AbstractC21104a<T>> r10) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17422k.m16107K(com.truecaller.sdk.oAuth.networking.ErrorType, java.lang.String, s1.z.b.l, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m16106L(p193e.p194a.p288a0.AbstractC7395n r4, com.truecaller.data.entity.Contact r5, s1.w.d<? super java.util.List<com.truecaller.data.entity.SpamCategoryModel>> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p288a0.C7403r
            if (r0 == 0) goto L2a
            r0 = r6
            e.a.a0.r r0 = (p193e.p194a.p288a0.C7403r) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f23541e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23541e = r1
            r0 = r7
            r6 = r0
            goto L33
        L2a:
            e.a.a0.r r0 = new e.a.a0.r
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L33:
            r0 = r6
            java.lang.Object r0 = r0.f23540d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f23541e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L62
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L57
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r4 = r0
            goto L83
        L57:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L62:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            if (r0 == 0) goto L8c
            r0 = r6
            r1 = 1
            r0.f23541e = r1
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.Object r0 = r0.mo29691c(r1, r2)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r9
            if (r0 != r1) goto L83
            r0 = r9
            return r0
        L83:
            r0 = r4
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r1 = 1
            java.util.List r0 = s1.u.i.K0(r0, r1)
            return r0
        L8c:
            s1.u.s r0 = s1.u.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17422k.m16106L(e.a.a0.n, com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    /* renamed from: M */
    public static final int m16105M(Context context, int i) {
        l.e(context, "$this$getTCXThemedColor");
        return C19291g.m13612L(m16113E(context, true), i);
    }

    /* renamed from: N */
    public static final Drawable m16104N(Context context, int i, int i2) {
        l.e(context, "$this$getTCXThemedDrawable");
        Drawable m13535l0 = C19291g.m13535l0(m16113E(context, true), i, i2);
        l.d(m13535l0, "ThemeUtils.getTintedDraw…true), drawableRes, tint)");
        return m13535l0;
    }

    /* renamed from: O */
    public static final Long[] m16103O(C8551c c8551c) {
        l.e(c8551c, "$this$getTagIds");
        long j = c8551c.f26352c;
        return j == 0 ? new Long[]{Long.valueOf(c8551c.f26350a)} : new Long[]{Long.valueOf(j), Long.valueOf(c8551c.f26350a)};
    }

    /* renamed from: P */
    public static final String m16102P(String str) {
        l.e(str, "$this$getUrlWithValidProtocol");
        String str2 = str;
        if (!URLUtil.isHttpUrl(str)) {
            if (URLUtil.isHttpsUrl(str)) {
                str2 = str;
            } else {
                str2 = URLUtil.guessUrl(str);
                l.d(str2, "URLUtil.guessUrl(this)");
            }
        }
        return str2;
    }

    /* renamed from: Q */
    public static final void m16101Q(SearchView searchView, s1.z.b.l<? super String, s> lVar) {
        l.e(searchView, "$this$handleSearchText");
        l.e(lVar, "consumer");
        searchView.setOnQueryTextListener(new C14463b(lVar));
        searchView.setOnCloseListener(new C14464c(lVar));
    }

    /* renamed from: R */
    public static final View m16100R(ViewGroup viewGroup, int i, boolean z, boolean z2) {
        View view;
        l.e(viewGroup, "$this$inflate");
        if (z2) {
            LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
            l.d(from, "LayoutInflater.from(context)");
            view = m16050u0(from, true).inflate(i, viewGroup, z);
            l.d(view, "LayoutInflater.from(cont…yout, this, attachToRoot)");
        } else {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, z);
            l.d(view, "LayoutInflater.from(cont…yout, this, attachToRoot)");
        }
        return view;
    }

    /* renamed from: S */
    public static /* synthetic */ View m16099S(ViewGroup viewGroup, int i, boolean z, boolean z2, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return m16100R(viewGroup, i, z, z2);
    }

    /* renamed from: T */
    public static final boolean m16098T() {
        return l.a("alphaRelease", "release");
    }

    /* renamed from: U */
    public static final String m16097U(String str) {
        l.e(str, AnalyticsConstants.KEY);
        return "Promo" + m16048v0(str) + "DismissCount";
    }

    /* renamed from: V */
    public static /* synthetic */ void m16096V(AbstractC21061b abstractC21061b, String str, String str2, List list, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        abstractC21061b.mo10377c(str, str2, null, null);
    }

    /* renamed from: W */
    public static /* synthetic */ void m16095W(AbstractC18228e abstractC18228e, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        abstractC18228e.mo15389a(str, z);
    }

    /* renamed from: X */
    public static final SpamCategoryModel m16094X(Contact contact) {
        SpamCategoryModel spamCategoryModel;
        l.e(contact, "$this$peekSpamCategoryModel");
        SpamData spamData = contact.f11529x;
        if (spamData != null) {
            l.e(spamData, "$this$peekSpamCategoryModel");
            spamCategoryModel = (SpamCategoryModel) s1.u.i.D(spamData.getSpamCategoryModels());
        } else {
            spamCategoryModel = null;
        }
        return spamCategoryModel;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m16093Y(p193e.p194a.p288a0.AbstractC7395n r4, com.truecaller.data.entity.Contact r5, s1.w.d<? super com.truecaller.data.entity.SpamCategoryModel> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p288a0.C7404s
            if (r0 == 0) goto L2a
            r0 = r6
            e.a.a0.s r0 = (p193e.p194a.p288a0.C7404s) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f23543e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23543e = r1
            r0 = r7
            r6 = r0
            goto L33
        L2a:
            e.a.a0.s r0 = new e.a.a0.s
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L33:
            r0 = r6
            java.lang.Object r0 = r0.f23542d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f23543e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L62
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L57
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r4 = r0
            goto L7d
        L57:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L62:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = 1
            r0.f23543e = r1
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.Object r0 = m16106L(r0, r1, r2)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r9
            if (r0 != r1) goto L7d
            r0 = r9
            return r0
        L7d:
            r0 = r4
            java.util.List r0 = (java.util.List) r0
            java.lang.Object r0 = s1.u.i.D(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17422k.m16093Y(e.a.a0.n, com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m16092Z(p193e.p194a.p288a0.AbstractC7395n r5, java.util.List<java.lang.Long> r6, s1.w.d<? super com.truecaller.data.entity.SpamCategoryModel> r7) {
        /*
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p288a0.C7405t
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.a0.t r0 = (p193e.p194a.p288a0.C7405t) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f23545e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23545e = r1
            r0 = r8
            r7 = r0
            goto L33
        L2a:
            e.a.a0.t r0 = new e.a.a0.t
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
        L33:
            r0 = r7
            java.lang.Object r0 = r0.f23544d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f23545e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L62
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L57
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r5 = r0
            goto L96
        L57:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L62:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            if (r0 == 0) goto L9e
            r0 = r6
            java.lang.Object r0 = s1.u.i.D(r0)
            java.lang.Long r0 = (java.lang.Long) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L9e
            r0 = r6
            long r0 = r0.longValue()
            r11 = r0
            r0 = r7
            r1 = 1
            r0.f23545e = r1
            r0 = r5
            r1 = r11
            r2 = r7
            java.lang.Object r0 = r0.mo29692b(r1, r2)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = r10
            if (r0 != r1) goto L96
            r0 = r10
            return r0
        L96:
            r0 = r5
            com.truecaller.data.entity.SpamCategoryModel r0 = (com.truecaller.data.entity.SpamCategoryModel) r0
            r5 = r0
            goto La0
        L9e:
            r0 = 0
            r5 = r0
        La0:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17422k.m16092Z(e.a.a0.n, java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: a */
    public static final String m16091a(String str) {
        boolean z = false;
        if (v.I(str, new char[]{'{', '}'}, 0, false) == -1) {
            z = true;
        }
        if (!z) {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: a0 */
    public static final void m16090a0(AbstractC8541a abstractC8541a, String str, String str2, String str3, String str4, String str5, OnlineIds onlineIds, String str6, String str7, String str8, String str9, String str10, Boolean bool, String str11, Boolean bool2) {
        l.e(abstractC8541a, "$this$persistProfileData");
        l.e(onlineIds, "onlineIds");
        abstractC8541a.putString("profileGender", str);
        abstractC8541a.putString("profileStreet", str2);
        abstractC8541a.putString("profileCity", str3);
        abstractC8541a.putString("profileZip", str4);
        abstractC8541a.putString("profileFacebook", onlineIds.getFacebookId());
        abstractC8541a.putString("profileGoogleIdToken", onlineIds.getGoogleIdToken());
        abstractC8541a.putString("profileEmail", onlineIds.getEmail());
        abstractC8541a.putString("profileWeb", onlineIds.getUrl());
        abstractC8541a.putString("profileAvatar", str6);
        abstractC8541a.putString("profileCompanyName", str5);
        abstractC8541a.putString("profileCompanyJob", str7);
        abstractC8541a.putString("profileTag", str8);
        abstractC8541a.putString("profileStatus", str9);
        abstractC8541a.putString("profileAcceptAuto", str10);
        abstractC8541a.putBoolean("profileBusiness", C12864a2.m22540r(bool));
        abstractC8541a.putString("profileBirthday", str11);
        abstractC8541a.putBoolean("profileIsCredUser", C12864a2.m22540r(bool2));
    }

    /* renamed from: b */
    public static final void m16089b(String str, C8551c c8551c, TextView textView, int i) {
        SpannableStringBuilder spannableStringBuilder;
        if (!(str == null || r.p(str))) {
            String str2 = c8551c.f26351b;
            l.e(str2, "$this$getHighlightText");
            l.e(str, "highlightText");
            int H = v.H(str2, str, 0, true, 2);
            if (H > -1) {
                int length = str.length() + H;
                spannableStringBuilder = new SpannableStringBuilder(str2);
                StyleSpan styleSpan = new StyleSpan(1);
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i);
                spannableStringBuilder.setSpan(styleSpan, H, length, 18);
                spannableStringBuilder.setSpan(foregroundColorSpan, H, length, 18);
            } else {
                spannableStringBuilder = null;
            }
            if (spannableStringBuilder != null) {
                textView.setText(spannableStringBuilder);
                return;
            }
        }
        textView.setText(c8551c.f26351b);
    }

    /* renamed from: c */
    public static final PushIdDto m16087c(C18922d c18922d) {
        int i;
        String str = c18922d.f53058a;
        AbstractC12603e abstractC12603e = c18922d.f53059b;
        if (l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
            i = 1;
        } else if (!l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c)) {
            throw new i();
        } else {
            i = 13;
        }
        return new PushIdDto(str, i);
    }

    /* renamed from: c0 */
    public static final void m16086c0(AbstractC8541a abstractC8541a, String str, String str2) {
        l.e(abstractC8541a, "$this$persistProfileGeneralData");
        l.e(str, "firstName");
        l.e(str2, "lastName");
        abstractC8541a.putString("profileFirstName", str);
        abstractC8541a.putString("profileLastName", str2);
    }

    /* renamed from: d */
    public static final SocialAccountProfile m16085d(GoogleSignInAccount googleSignInAccount) {
        String str = googleSignInAccount.f5512k;
        String str2 = googleSignInAccount.f5513l;
        String str3 = googleSignInAccount.f5505d;
        Uri uri = googleSignInAccount.f5507f;
        return new SocialAccountProfile(str, str2, str3, uri != null ? uri.toString() : null, googleSignInAccount.f5504c);
    }

    /* renamed from: d0 */
    public static void m16084d0(Intent intent, ReferralManager referralManager) {
        String string;
        Bundle extras = intent.getExtras();
        if (extras == null || (string = extras.getString("LAUNCH_MODE")) == null) {
            return;
        }
        boolean z = true;
        switch (string.hashCode()) {
            case 887528847:
                if (string.equals("MODE_REFERRAL_GRANTED_VIEW")) {
                    z = false;
                    break;
                }
                break;
            case 1251073302:
                if (string.equals("MODE_REFERRAL_ON_BOARDING")) {
                    z = true;
                    break;
                }
                break;
            case 1886261286:
                if (string.equals("MODE_REFER_MORE_FRIENDS")) {
                    z = true;
                    break;
                }
                break;
            case 2003878147:
                if (string.equals("MODE_SHOW_REFERRAL")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                String string2 = extras.getString("REFERRAL_GRANTED_MESSAGE");
                AssertionUtil.isNotNull(string2, new String[0]);
                referralManager.mo13061Mf(string2);
                return;
            case true:
                referralManager.mo13051j8();
                return;
            case true:
                referralManager.mo13051j8();
                return;
            case true:
                referralManager.mo13053Xa(ReferralManager.ReferralLaunchContext.PUSH_NOTIFICATION);
                return;
            default:
                return;
        }
    }

    /* renamed from: e */
    public static void m16083e(List<ContentProviderOperation> list, String str, String str2, long j) {
        if (!TextUtils.isEmpty(str)) {
            list.add(ContentProviderOperation.newDelete(C17891a1.C17904m.m15552a()).withSelection("search_query = ? AND contact_source = ?", new String[]{str, String.valueOf(4)}).build());
            String uuid = UUID.randomUUID().toString();
            list.add(ContentProviderOperation.newInsert(C17891a1.C17904m.m15552a()).withValue("tc_id", uuid).withValue("contact_search_time", Long.valueOf(j)).withValue("search_query", str).withValue("contact_default_number", str2).withValue("contact_source", 4).build());
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            list.add(ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a()).withValueBackReference("data_raw_contact_id", list.size() - 1).withValue("tc_id", uuid).withValue("data_type", 4).withValue("data1", str2).withValue("data9", str).withValue("data4", 2).build());
        }
    }

    /* renamed from: e0 */
    public static C19672u m16082e0(C19655n0 c19655n0, C21185a c21185a, AbstractC14630d abstractC14630d, C16461b c16461b, AbstractC21179b abstractC21179b, AbstractC8621z abstractC8621z, AbstractC14835j abstractC14835j, AbstractC14840m abstractC14840m, C21183a c21183a) {
        return new C19672u(abstractC14630d, c19655n0.f54582a, 500, c21185a, c16461b, abstractC21179b, abstractC8621z, abstractC14835j, abstractC14840m, c21183a);
    }

    /* renamed from: f */
    public static void m16081f(List<ContentProviderOperation> list, List<ContactDto.Row> list2, ContactDto.Contact contact) {
        String obj;
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C17891a1.C17904m.m15552a());
        ContentValues contentValues = new ContentValues();
        String str = contact.f11490id;
        if (str != null) {
            contentValues.put("tc_id", str);
        }
        String str2 = contact.name;
        if (str2 != null) {
            contentValues.put("contact_name", str2);
        }
        String str3 = contact.transliteratedName;
        if (str3 != null) {
            contentValues.put("contact_transliterated_name", str3);
        }
        String str4 = contact.handle;
        if (str4 != null) {
            contentValues.put("contact_handle", str4);
        }
        String str5 = contact.altName;
        if (str5 != null) {
            contentValues.put("contact_alt_name", str5);
        }
        String str6 = contact.gender;
        if (str6 != null) {
            contentValues.put("contact_gender", str6);
        }
        String str7 = contact.about;
        if (str7 != null) {
            contentValues.put("contact_about", str7);
        }
        String str8 = contact.image;
        if (str8 != null) {
            contentValues.put("contact_image_url", str8);
        }
        String str9 = contact.jobTitle;
        if (str9 != null) {
            contentValues.put("contact_job_title", str9);
        }
        String str10 = contact.companyName;
        if (str10 != null) {
            contentValues.put("contact_company", str10);
        }
        String str11 = contact.access;
        if (str11 != null) {
            contentValues.put("contact_access", str11);
        }
        String str12 = contact.imId;
        if (str12 != null) {
            contentValues.put("contact_im_id", str12);
        }
        contentValues.put("contact_badges", Integer.valueOf(C17891a1.C17902k.m15567v(contact.badges)));
        contentValues.put("contact_source", Integer.valueOf(contact.source));
        contentValues.put("contact_common_connections", Integer.valueOf(contact.commonConnections));
        contentValues.put("contact_search_time", Long.valueOf(contact.searchTime));
        m16076h0(contentValues, "aggregated_contact_id", contact.aggregatedRowId);
        m16076h0(contentValues, "contact_phonebook_id", contact.phonebookId);
        m16076h0(contentValues, "contact_phonebook_hash", contact.phonebookHash);
        String str13 = contact.searchQuery;
        if (str13 != null) {
            contentValues.put("search_query", str13);
        }
        Number number = contact.cacheTtl;
        if (number != null && (obj = number.toString()) != null) {
            contentValues.put("cache_control", obj);
        }
        String str14 = contact.spamCategoryIds;
        if (str14 != null) {
            contentValues.put("spam_categories", str14);
        }
        String str15 = contact.phonebookLookupKey;
        if (str15 != null) {
            contentValues.put("contact_phonebook_lookup", str15);
        }
        String str16 = contact.defaultNumber;
        if (str16 != null) {
            contentValues.put("contact_default_number", str16);
        }
        Number number2 = contact.spamScore;
        if (number2 != null) {
            contentValues.put("contact_spam_score", Integer.valueOf(number2.intValue()));
        }
        String str17 = contact.spamType;
        if (str17 != null) {
            contentValues.put("contact_spam_type", str17);
        }
        AssertionUtil.OnlyInDebug.isTrue(Integer.bitCount(contact.source) == 1, new String[0]);
        AssertionUtil.OnlyInDebug.isTrue(contact.searchTime != 0, new String[0]);
        AssertionUtil.OnlyInDebug.isTrue(contact.f11490id != null, new String[0]);
        AssertionUtil.OnlyInDebug.isTrue((contact.phonebookLookupKey == null) == ((contact.phonebookId > 0L ? 1 : (contact.phonebookId == 0L ? 0 : -1)) == 0), new String[0]);
        list.add(newInsert.withValues(contentValues).build());
        int size = list.size() - 1;
        String str18 = contact.f11490id;
        m16077h(list, list2, contact.phones, size, str18, new C21218p(null));
        m16077h(list, list2, contact.addresses, size, str18, new C21218p(null));
        m16077h(list, list2, contact.internetAddresses, size, str18, new C21218p(null));
        m16077h(list, list2, contact.sources, size, str18, new C21218p(null));
        m16077h(list, list2, contact.tags, size, str18, new C21218p(null));
        m16079g(list, list2, contact.business, size, str18, new C21218p(null));
        m16079g(list, list2, contact.style, size, str18, new C21218p(null));
        m16079g(list, list2, contact.nameFeedback, size, str18, new C21218p(null));
        m16079g(list, list2, contact.spamData, size, str18, new C21218p(null));
        m16077h(list, list2, contact.searchWarnings, size, str18, new C21218p(null));
        m16077h(list, list2, contact.surveys, size, str18, new C21218p(null));
    }

    /* renamed from: f0 */
    public static C21154v m16080f0() {
        int i = AbstractC21095b.f59222a;
        return new C21154v();
    }

    /* renamed from: g */
    public static <T extends ContactDto.Row> void m16079g(List<ContentProviderOperation> list, List<ContactDto.Row> list2, T t, int i, String str, AbstractC21217o<T> abstractC21217o) {
        m16077h(list, list2, t != null ? Collections.singletonList(t) : null, i, str, abstractC21217o);
    }

    /* renamed from: g0 */
    public static AbstractC7392k m16078g0() {
        int i = AbstractC7383d.f23515a;
        AbstractC7392k abstractC7392k = (AbstractC7392k) C8367d.m28633a(KnownEndpoints.FILTER, AbstractC7392k.class);
        Objects.requireNonNull(abstractC7392k, "Cannot return null from a non-@Nullable @Provides method");
        return abstractC7392k;
    }

    /* renamed from: h */
    public static <T extends ContactDto.Row> void m16077h(List<ContentProviderOperation> list, List<ContactDto.Row> list2, Iterable<T> iterable, int i, String str, AbstractC21217o<T> abstractC21217o) {
        ContentValues contentValues;
        if (iterable == null) {
            return;
        }
        for (T t : iterable) {
            Objects.requireNonNull((C21218p) abstractC21217o);
            if (t instanceof ContactDto.Contact.PhoneNumber) {
                ContactDto.Contact.PhoneNumber phoneNumber = (ContactDto.Contact.PhoneNumber) t;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("data_type", (Integer) 4);
                String str2 = phoneNumber.rawNumberFormat;
                if (str2 != null) {
                    contentValues2.put("data9", str2);
                }
                String str3 = phoneNumber.e164Format;
                if (str3 != null) {
                    contentValues2.put("data1", str3);
                }
                String str4 = phoneNumber.nationalFormat;
                if (str4 != null) {
                    contentValues2.put("data2", str4);
                }
                String str5 = phoneNumber.dialingCode;
                if (str5 != null) {
                    contentValues2.put("data6", str5);
                }
                String str6 = phoneNumber.countryCode;
                if (str6 != null) {
                    contentValues2.put("data7", str6);
                }
                String str7 = phoneNumber.numberType;
                if (str7 != null) {
                    contentValues2.put("data8", str7);
                }
                String str8 = phoneNumber.carrier;
                if (str8 != null) {
                    contentValues2.put("data10", str8);
                }
                String str9 = phoneNumber.telType;
                if (str9 != null) {
                    contentValues2.put("data4", str9);
                }
                String str10 = phoneNumber.telTypeLabel;
                if (str10 != null) {
                    contentValues2.put("data5", str10);
                }
                String str11 = phoneNumber.spamScore;
                if (str11 != null) {
                    contentValues2.put("data3", str11);
                }
                String str12 = phoneNumber.spamType;
                contentValues = contentValues2;
                if (str12 != null) {
                    contentValues2.put("data11", str12);
                    contentValues = contentValues2;
                }
            } else if (t instanceof ContactDto.Contact.Address) {
                ContactDto.Contact.Address address = (ContactDto.Contact.Address) t;
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put("data_type", (Integer) 1);
                String str13 = address.type;
                if (str13 != null) {
                    contentValues3.put("data5", str13);
                }
                String str14 = address.street;
                if (str14 != null) {
                    contentValues3.put("data1", str14);
                }
                String str15 = address.zipCode;
                if (str15 != null) {
                    contentValues3.put("data2", str15);
                }
                String str16 = address.city;
                if (str16 != null) {
                    contentValues3.put("data3", str16);
                }
                String str17 = address.area;
                if (str17 != null) {
                    contentValues3.put("data8", str17);
                }
                String str18 = address.countryCode;
                if (str18 != null) {
                    contentValues3.put("data4", str18);
                }
                String str19 = address.timeZone;
                contentValues = contentValues3;
                if (str19 != null) {
                    contentValues3.put("data7", str19);
                    contentValues = contentValues3;
                }
            } else if (t instanceof ContactDto.Contact.InternetAddress) {
                ContactDto.Contact.InternetAddress internetAddress = (ContactDto.Contact.InternetAddress) t;
                ContentValues contentValues4 = new ContentValues();
                contentValues4.put("data_type", (Integer) 3);
                String str20 = internetAddress.f11491id;
                if (str20 != null) {
                    contentValues4.put("data1", str20);
                }
                String str21 = internetAddress.service;
                if (str21 != null) {
                    contentValues4.put("data2", str21);
                }
                String str22 = internetAddress.caption;
                contentValues = contentValues4;
                if (str22 != null) {
                    contentValues4.put("data3", str22);
                    contentValues = contentValues4;
                }
            } else if (t instanceof ContactDto.Contact.Source) {
                ContactDto.Contact.Source source = (ContactDto.Contact.Source) t;
                ContentValues contentValues5 = new ContentValues();
                contentValues5.put("data_type", (Integer) 5);
                String str23 = source.f11494id;
                if (str23 != null) {
                    contentValues5.put("data1", str23);
                }
                String str24 = source.url;
                if (str24 != null) {
                    contentValues5.put("data2", str24);
                }
                String str25 = source.logo;
                if (str25 != null) {
                    contentValues5.put("data3", str25);
                }
                String str26 = source.caption;
                if (str26 != null) {
                    contentValues5.put("data4", str26);
                }
                contentValues = contentValues5;
                if (source.extra != null) {
                    String m = new k().m(source.extra);
                    contentValues = contentValues5;
                    if (m != null) {
                        contentValues5.put("data5", m);
                        contentValues = contentValues5;
                    }
                }
            } else {
                contentValues = null;
                if (t instanceof ContactDto.Contact.Tag) {
                    ContactDto.Contact.Tag tag = (ContactDto.Contact.Tag) t;
                    if (!TextUtils.isEmpty(tag.tag)) {
                        contentValues = new ContentValues();
                        contentValues.put("data_type", (Integer) 6);
                        contentValues.put("data1", tag.tag);
                    }
                } else if (t instanceof ContactDto.Contact.Business) {
                    ContactDto.Contact.Business business = (ContactDto.Contact.Business) t;
                    contentValues = new ContentValues();
                    contentValues.put("data_type", (Integer) 9);
                    contentValues.put("data1", business.branch);
                    contentValues.put("data2", business.department);
                    contentValues.put("data3", business.companySize);
                    contentValues.put("data4", business.openingHours);
                    contentValues.put("data5", business.landline);
                    contentValues.put("data6", business.score);
                    contentValues.put("data7", business.swishNumber);
                    contentValues.put("data8", business.mediaCallerIDs);
                    contentValues.put("data9", business.appStores);
                    contentValues.put("data10", business.brandedMedia);
                } else if (t instanceof ContactDto.Contact.Style) {
                    ContactDto.Contact.Style style = (ContactDto.Contact.Style) t;
                    contentValues = new ContentValues();
                    contentValues.put("data_type", (Integer) 10);
                    contentValues.put("data1", style.backgroundColor);
                    contentValues.put("data2", style.imageUrls);
                } else if (t instanceof ContactDto.Contact.NameFeedback) {
                    ContactDto.Contact.NameFeedback nameFeedback = (ContactDto.Contact.NameFeedback) t;
                    contentValues = new ContentValues();
                    contentValues.put("data_type", (Integer) 11);
                    Number number = nameFeedback.nameSource;
                    if (number != null) {
                        contentValues.put("data1", Integer.valueOf(number.intValue()));
                    }
                    contentValues.put("data2", nameFeedback.nameElectionAlgo);
                } else if (t instanceof ContactDto.Contact.SpamData) {
                    ContactDto.Contact.SpamData spamData = (ContactDto.Contact.SpamData) t;
                    ContentValues contentValues6 = new ContentValues();
                    contentValues6.put("data_type", (Integer) 12);
                    Number number2 = spamData.numReports60days;
                    if (number2 != null) {
                        contentValues6.put("data1", Integer.valueOf(number2.intValue()));
                    }
                    Number number3 = spamData.numCalls60days;
                    if (number3 != null) {
                        contentValues6.put("data2", Integer.valueOf(number3.intValue()));
                    }
                    Number number4 = spamData.numCalls60DaysPointerPosition;
                    if (number4 != null) {
                        contentValues6.put("data3", Integer.valueOf(number4.intValue()));
                    }
                    contentValues6.put("data4", spamData.numCallsHourly);
                    Integer num = spamData.spamVersion;
                    contentValues = contentValues6;
                    if (num != null) {
                        contentValues6.put("data5", num);
                        contentValues = contentValues6;
                    }
                } else if (t instanceof ContactDto.Contact.SearchWarning) {
                    ContactDto.Contact.SearchWarning searchWarning = (ContactDto.Contact.SearchWarning) t;
                    ContentValues contentValues7 = new ContentValues();
                    contentValues7.put("data_type", (Integer) 13);
                    String str27 = searchWarning.f11493id;
                    if (str27 != null) {
                        contentValues7.put("data1", str27);
                    }
                    String m17315a = C16502j.f46396b.m17315a(searchWarning.features);
                    if (m17315a != null) {
                        contentValues7.put("data2", m17315a);
                    }
                    String str28 = searchWarning.ruleName;
                    contentValues = contentValues7;
                    if (str28 != null) {
                        contentValues7.put("data3", str28);
                        contentValues = contentValues7;
                    }
                } else if (t instanceof ContactDto.Contact.Survey) {
                    ContactDto.Contact.Survey survey = (ContactDto.Contact.Survey) t;
                    ContentValues contentValues8 = new ContentValues();
                    contentValues8.put("data_type", (Integer) 14);
                    String str29 = survey.f11495id;
                    if (str29 != null) {
                        contentValues8.put("data1", str29);
                    }
                    contentValues8.put("data2", survey.frequency);
                    String str30 = survey.passthroughData;
                    contentValues = contentValues8;
                    if (str30 != null) {
                        contentValues8.put("data3", str30);
                        contentValues = contentValues8;
                    }
                } else {
                    AssertionUtil.AlwaysFatal.isTrue(false, new String[0]);
                }
            }
            if (contentValues != null) {
                list.add(ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a()).withValues(contentValues).withValue("tc_id", str).withValueBackReference("data_raw_contact_id", i).build());
                if (list2 != null) {
                    list2.add(t);
                }
            }
        }
    }

    /* renamed from: h0 */
    public static void m16076h0(ContentValues contentValues, String str, long j) {
        if (j != 0) {
            contentValues.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: i */
    public static void m16075i(Context context, ArrayList<ContentProviderOperation> arrayList, List<ContactDto.Row> list) {
        ContactDto.Row row;
        if (!arrayList.isEmpty()) {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = C17891a1.f50888a;
                ContentProviderResult[] applyBatch = contentResolver.applyBatch("com.truecaller", arrayList);
                int min = Math.min(list.size(), applyBatch.length);
                for (int i = 0; i < min; i++) {
                    if (applyBatch[i].uri != null && (row = list.get(i)) != null) {
                        row.rowId = ContentUris.parseId(applyBatch[i].uri);
                    }
                }
            } catch (OperationApplicationException | RemoteException e) {
                C10480a.m26061I1(e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
        if (r15 == false) goto L13;
     */
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m16074i0(android.content.Context r9, java.lang.Long r10, java.lang.String r11) {
        /*
            r0 = 1
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L5e
            r0 = r10
            long r0 = r0.longValue()
            r13 = r0
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()
            r9 = r0
            r0 = r9
            r1 = r13
            r2 = r11
            android.net.Uri r1 = android.provider.ContactsContract.Contacts.getLookupUri(r1, r2)     // Catch: java.lang.Exception -> L4b
            r2 = 0
            r3 = 0
            int r0 = r0.delete(r1, r2, r3)     // Catch: java.lang.Exception -> L4b
            r15 = r0
            r0 = r9
            android.net.Uri r1 = p193e.p194a.p1053m0.C17891a1.C17904m.m15552a()     // Catch: java.lang.Exception -> L4b
            java.lang.String r2 = "contact_phonebook_id=? AND contact_phonebook_lookup=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Exception -> L4b
            r4 = r3
            r5 = 0
            r6 = r13
            java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Exception -> L4b
            r4[r5] = r6     // Catch: java.lang.Exception -> L4b
            r4 = r3
            r5 = 1
            r6 = r11
            r4[r5] = r6     // Catch: java.lang.Exception -> L4b
            int r0 = r0.delete(r1, r2, r3)     // Catch: java.lang.Exception -> L4b
            r0 = r15
            if (r0 <= 0) goto L45
            r0 = 1
            r15 = r0
            goto L56
        L45:
            r0 = 0
            r15 = r0
            goto L56
        L4b:
            r9 = move-exception
            r0 = r9
            java.lang.String r1 = "Failed to delete contact"
            p193e.p194a.p437c.p578p.C10480a.m26057J1(r0, r1)
            goto L45
        L56:
            r0 = r15
            if (r0 == 0) goto L5e
            goto L60
        L5e:
            r0 = 0
            r12 = r0
        L60:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17422k.m16074i0(android.content.Context, java.lang.Long, java.lang.String):boolean");
    }

    /* renamed from: j */
    public static final void m16073j(Window window, boolean z) {
        int i;
        l.e(window, "$this$applySystemUiFlagLightStatusBar");
        View decorView = window.getDecorView();
        l.d(decorView, "decorView");
        C15314a c15314a = C15314a.f43582g;
        AbstractC15317d m18938a = C15314a.m18938a();
        if (!(m18938a instanceof AbstractC15317d.C15318a) && !(m18938a instanceof AbstractC15317d.C15320c)) {
            i = 0;
        } else if (z) {
            View decorView2 = window.getDecorView();
            l.d(decorView2, "decorView");
            i = decorView2.getSystemUiVisibility() | 8192;
        } else {
            View decorView3 = window.getDecorView();
            l.d(decorView3, "decorView");
            i = decorView3.getSystemUiVisibility() & (-8193);
        }
        decorView.setSystemUiVisibility(i);
    }

    /* renamed from: j0 */
    public static final List<C8551c> m16072j0(AbstractC8552d abstractC8552d, String str) {
        l.e(abstractC8552d, "$this$searchTags");
        l.e(str, AnalyticsConstants.NAME);
        List<C8551c> mo28395i = abstractC8552d.mo28395i(str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (C8551c c8551c : mo28395i) {
            long j = c8551c.f26352c;
            if (j == 0) {
                linkedHashMap.put(c8551c, new ArrayList());
            } else {
                C8551c mo28396h = abstractC8552d.mo28396h(j);
                if (mo28396h != null) {
                    List list = (List) linkedHashMap.get(mo28396h);
                    ArrayList arrayList = list;
                    if (list == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(c8551c);
                    linkedHashMap.put(mo28396h, arrayList);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (C8551c c8551c2 : linkedHashMap.keySet()) {
            arrayList2.add(c8551c2);
            List list2 = (List) linkedHashMap.get(c8551c2);
            if (list2 != null) {
                arrayList2.addAll(list2);
            }
        }
        return arrayList2;
    }

    /* renamed from: k */
    public static final void m16071k(Window window) {
        l.e(window, "$this$applyThemeXToStatusBar");
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        Context context = window.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        C15314a c15314a = C15314a.f43582g;
        window.setStatusBarColor(m16105M(context, C15314a.m18938a() instanceof AbstractC15317d.C15319b ? C4621R.attr.tcx_backgroundPrimary : C4621R.attr.tcx_brandBackgroundBlue));
        m16073j(window, true);
    }

    /* renamed from: k0 */
    public static /* synthetic */ void m16070k0(AbstractC21282r0.AbstractC21283a abstractC21283a, CharSequence charSequence, ListItemX.SubtitleColor subtitleColor, Drawable drawable, Drawable drawable2, ListItemX.SubtitleColor subtitleColor2, boolean z, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            subtitleColor = ListItemX.SubtitleColor.DEFAULT;
        }
        if ((i & 4) != 0) {
            drawable = null;
        }
        if ((i & 8) != 0) {
            drawable2 = null;
        }
        if ((i & 16) != 0) {
            subtitleColor2 = subtitleColor;
        }
        if ((i & 32) != 0) {
            z = false;
        }
        abstractC21283a.mo9997f1(charSequence, subtitleColor, drawable, drawable2, subtitleColor2, z, null);
    }

    /* renamed from: l */
    public static final void m16069l(Resources.Theme theme) {
        m16065n(theme, false, 1);
    }

    /* renamed from: l0 */
    public static final void m16068l0(Activity activity) {
        m16064n0(activity, false, 1);
    }

    /* renamed from: m */
    public static final void m16067m(Resources.Theme theme, boolean z) {
        l.e(theme, "$this$applyTruecallerStyle");
        if (z) {
            C15314a c15314a = C15314a.f43582g;
            theme.applyStyle(C15314a.m18938a().f43588d, false);
            return;
        }
        C15314a c15314a2 = C15314a.f43582g;
        theme.applyStyle(C15314a.m18938a().f43587c, false);
    }

    /* renamed from: m0 */
    public static final void m16066m0(Activity activity, boolean z) {
        l.e(activity, "$this$setTruecallerTheme");
        if (z) {
            C15314a c15314a = C15314a.f43582g;
            activity.setTheme(C15314a.m18938a().f43588d);
            return;
        }
        C15314a c15314a2 = C15314a.f43582g;
        activity.setTheme(C15314a.m18938a().f43587c);
    }

    /* renamed from: n */
    public static /* synthetic */ void m16065n(Resources.Theme theme, boolean z, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        m16067m(theme, z);
    }

    /* renamed from: n0 */
    public static /* synthetic */ void m16064n0(Activity activity, boolean z, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        m16066m0(activity, z);
    }

    /* renamed from: o */
    public static Intent m16063o(Activity activity) {
        l.e(activity, "fromActivity");
        return null;
    }

    /* renamed from: o0 */
    public static final Choice m16062o0(com.truecaller.api.services.survey.Choice choice) {
        int id = choice.getId();
        String text = choice.getText();
        l.d(text, "text");
        return new Choice(id, text, Integer.valueOf(choice.getFollowupQuestionId()));
    }

    /* renamed from: p */
    public static final Intent m16061p(Context context, Contact contact, int i, int i2, C20592g c20592g) {
        Intent intent;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(c20592g, "featuresRegistry");
        if (c20592g.f57902d.m10941a(c20592g, C20592g.f57695p6[0]).isEnabled()) {
            intent = new Intent(context, TaggerActivity.class);
            intent.putExtra(AnalyticsConstants.CONTACT, contact);
            intent.putExtra("tag_context", i);
            intent.putExtra("search_type", i2);
            intent.addFlags(131072);
        } else {
            int i3 = TagPickActivity.f15265q;
            intent = new Intent(context, TagPickActivity.class);
            intent.putExtra(AnalyticsConstants.CONTACT, contact);
            intent.putExtra("tag_context", i);
            intent.putExtra("search_type", i2);
        }
        return intent;
    }

    /* renamed from: p0 */
    public static final LayoutInflater m16060p0(LayoutInflater layoutInflater, boolean z) {
        l.e(layoutInflater, "$this$toDarkThemeInflater");
        if (z) {
            LayoutInflater cloneInContext = layoutInflater.cloneInContext(new ContextThemeWrapper(layoutInflater.getContext(), C4621R.style.ThemeX_Dark));
            l.d(cloneInContext, "cloneInContext(ContextTh…xt, R.style.ThemeX_Dark))");
            return cloneInContext;
        }
        LayoutInflater cloneInContext2 = layoutInflater.cloneInContext(new ContextThemeWrapper(layoutInflater.getContext(), C4621R.style.Theme_Truecaller_Dark));
        l.d(cloneInContext2, "cloneInContext(ContextTh…e.Theme_Truecaller_Dark))");
        return cloneInContext2;
    }

    /* renamed from: q */
    public static final AbstractC15533m m16059q(Context context) {
        l.e(context, "$this$buildStatsComponent");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        AbstractC8412c m28549N = ((AbstractApplicationC8442a) applicationContext).m28549N();
        l.d(m28549N, "(this.applicationContext…licationBase).commonGraph");
        Context applicationContext2 = context.getApplicationContext();
        Objects.requireNonNull(applicationContext2, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        AbstractC19496e m28552K = ((AbstractApplicationC8442a) applicationContext2).m28552K();
        l.d(m28552K, "(this.applicationContext…nBase).analyticsComponent");
        Context applicationContext3 = context.getApplicationContext();
        Objects.requireNonNull(applicationContext3, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        AbstractC19251o0 m28541V = ((AbstractApplicationC8442a) applicationContext3).m28541V();
        Objects.requireNonNull(m28541V);
        C15535o c15535o = new C15535o();
        C25225a.m3846s(m28549N, AbstractC8412c.class);
        C25225a.m3846s(m28541V, AbstractC19251o0.class);
        C25225a.m3846s(m28552K, AbstractC19496e.class);
        C15521h c15521h = new C15521h(c15535o, m28549N, m28541V, m28552K, null);
        l.d(c15521h, "DaggerStatsComponent.bui…mponent)\n        .build()");
        return c15521h;
    }

    /* renamed from: q0 */
    public static final SpamCategoryModel m16058q0(SpamCategory spamCategory) {
        l.e(spamCategory, "$this$toModel");
        return new SpamCategoryModel(spamCategory.getId(), spamCategory.getName(), spamCategory.getIcon());
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: r */
    public static final Intent m16057r(Context context, Long l, int i, C20592g c20592g) {
        Intent intent;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c20592g, "featuresRegistry");
        char c = 0;
        if (c20592g.f57902d.m10941a(c20592g, C20592g.f57695p6[0]).isEnabled()) {
            intent = new Intent(context, TaggerActivity.class);
            if (l != null) {
                c = l.longValue();
            }
            intent.putExtra("initial_tag", (long) c);
            intent.putExtra("tag_context", i);
            intent.addFlags(131072);
        } else {
            int i2 = TagPickActivity.f15265q;
            intent = new Intent(context, TagPickActivity.class);
            if (l != null) {
                c = l.longValue();
            }
            intent.putExtra("initial_tag", (long) c);
            intent.putExtra("tag_context", i);
        }
        return intent;
    }

    /* renamed from: r0 */
    public static final Survey m16056r0(SurveyEntity surveyEntity, String str) {
        l.e(surveyEntity, "$this$toSurvey");
        String id = surveyEntity.getId();
        a.a aVar = a.b;
        SurveyFlow surveyFlow = (SurveyFlow) aVar.a(SurveyFlow.Companion.m34646a(), surveyEntity.getFlow());
        List list = (List) aVar.a(d.m(Question.Companion.m34667a()), surveyEntity.getQuestions());
        d.l3(s1.z.c.k.a);
        return new Survey(id, surveyFlow, list, (List) aVar.a(d.m(g.b), surveyEntity.getBottomSheetQuestionsIds()), surveyEntity.getLastTimeSeen(), str);
    }

    /* renamed from: s */
    public static /* synthetic */ String m16055s(AbstractC7401p abstractC7401p, int i, SpamCategoryModel spamCategoryModel, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = C4502R.string.BlockCallerIDPeopleReportedThis;
        }
        if ((i3 & 8) != 0) {
            z = true;
        }
        return abstractC7401p.mo29683a(i, spamCategoryModel, i2, z);
    }

    /* renamed from: s0 */
    public static final SurveyEntity m16054s0(com.truecaller.api.services.survey.Survey survey) {
        SurveyFlow.AcsBizmon acsBizmon;
        Object obj;
        l.e(survey, "$this$toSurveyEntity");
        String id = survey.getId();
        l.d(id, "id");
        a.a aVar = a.b;
        q3.b.b<SurveyFlow> m34646a = SurveyFlow.Companion.m34646a();
        Survey.FlowCase flowCase = survey.getFlowCase();
        if (flowCase != null) {
            int ordinal = flowCase.ordinal();
            if (ordinal == 0) {
                AcsGeneric acsGeneric = survey.getAcsGeneric();
                l.d(acsGeneric, "acsGeneric");
                acsBizmon = new SurveyFlow.Acs(acsGeneric.getShowIfPickedUp());
            } else if (ordinal == 1) {
                AcsNameSuggestion acsNameSuggestion = survey.getAcsNameSuggestion();
                l.d(acsNameSuggestion, "acsNameSuggestion");
                acsBizmon = new SurveyFlow.NameSuggestion(acsNameSuggestion.getShowIfPickedUp());
            } else if (ordinal == 2) {
                acsBizmon = SurveyFlow.ReportProfile.INSTANCE;
            } else if (ordinal == 3) {
                AcsBizmon acsBizmon2 = survey.getAcsBizmon();
                l.d(acsBizmon2, "acsBizmon");
                acsBizmon = new SurveyFlow.AcsBizmon(acsBizmon2.getShowIfPickedUp());
            } else if (ordinal != 4) {
                throw new i();
            }
            String b = aVar.b(m34646a, acsBizmon);
            q3.b.b m = d.m(Question.Companion.m34667a());
            List<com.truecaller.api.services.survey.Question> questionsList = survey.getQuestionsList();
            l.d(questionsList, "questionsList");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(questionsList, 10));
            for (com.truecaller.api.services.survey.Question question : questionsList) {
                l.d(question, "it");
                Question.QuestionTypeCase questionTypeCase = question.getQuestionTypeCase();
                if (questionTypeCase != null) {
                    int ordinal2 = questionTypeCase.ordinal();
                    if (ordinal2 == 0) {
                        int id2 = question.getId();
                        String headerMessage = question.getHeaderMessage();
                        l.d(headerMessage, "headerMessage");
                        String message = question.getMessage();
                        l.d(message, "message");
                        Bool bool = question.getBool();
                        l.d(bool, "bool");
                        com.truecaller.api.services.survey.Choice choice = bool.getTrue();
                        l.d(choice, "bool.`true`");
                        Choice m16062o0 = m16062o0(choice);
                        Bool bool2 = question.getBool();
                        l.d(bool2, "bool");
                        com.truecaller.api.services.survey.Choice choice2 = bool2.getFalse();
                        l.d(choice2, "bool.`false`");
                        obj = new Question.Binary(id2, headerMessage, message, m16062o0, m16062o0(choice2));
                    } else if (ordinal2 == 1) {
                        int id3 = question.getId();
                        String headerMessage2 = question.getHeaderMessage();
                        l.d(headerMessage2, "headerMessage");
                        String message2 = question.getMessage();
                        l.d(message2, "message");
                        Rating rating = question.getRating();
                        l.d(rating, "rating");
                        List<com.truecaller.api.services.survey.Choice> choicesList = rating.getChoicesList();
                        l.d(choicesList, "rating.choicesList");
                        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(choicesList, 10));
                        for (com.truecaller.api.services.survey.Choice choice3 : choicesList) {
                            l.d(choice3, "it");
                            arrayList2.add(m16062o0(choice3));
                        }
                        obj = new Question.Rating(id3, headerMessage2, message2, arrayList2);
                    } else if (ordinal2 == 2) {
                        int id4 = question.getId();
                        String headerMessage3 = question.getHeaderMessage();
                        l.d(headerMessage3, "headerMessage");
                        String message3 = question.getMessage();
                        l.d(message3, "message");
                        SingleAnswer singleAnswer = question.getSingleAnswer();
                        l.d(singleAnswer, "singleAnswer");
                        List<com.truecaller.api.services.survey.Choice> choicesList2 = singleAnswer.getChoicesList();
                        l.d(choicesList2, "singleAnswer.choicesList");
                        ArrayList arrayList3 = new ArrayList(C25225a.m4004J(choicesList2, 10));
                        for (com.truecaller.api.services.survey.Choice choice4 : choicesList2) {
                            l.d(choice4, "it");
                            arrayList3.add(m16062o0(choice4));
                        }
                        obj = new Question.SingleChoice(id4, headerMessage3, message3, arrayList3);
                    } else if (ordinal2 != 3) {
                        if (ordinal2 == 4) {
                            int id5 = question.getId();
                            String headerMessage4 = question.getHeaderMessage();
                            l.d(headerMessage4, "headerMessage");
                            String message4 = question.getMessage();
                            l.d(message4, "message");
                            FreeText freeText = question.getFreeText();
                            l.d(freeText, "freeText");
                            String hintLabel = freeText.getHintLabel();
                            l.d(hintLabel, "freeText.hintLabel");
                            FreeText freeText2 = question.getFreeText();
                            l.d(freeText2, "freeText");
                            String buttonLabel = freeText2.getButtonLabel();
                            l.d(buttonLabel, "freeText.buttonLabel");
                            FreeText freeText3 = question.getFreeText();
                            l.d(freeText3, "freeText");
                            obj = new Question.FreeText(id5, headerMessage4, message4, hintLabel, buttonLabel, Integer.valueOf(freeText3.getFollowupQuestionId()));
                        } else if (ordinal2 != 5) {
                            throw new i();
                        }
                    }
                    arrayList.add(obj);
                }
                StringBuilder m8728C = C22128a.m8728C("Unexpected question ");
                m8728C.append(question.getQuestionTypeCase());
                throw new f(m8728C.toString());
            }
            String b2 = aVar.b(m, arrayList);
            a.a aVar2 = a.b;
            d.l3(s1.z.c.k.a);
            q3.b.b m2 = d.m(g.b);
            List<Integer> bottomSheetQuestionsIdsList = survey.getBottomSheetQuestionsIdsList();
            l.d(bottomSheetQuestionsIdsList, "bottomSheetQuestionsIdsList");
            return new SurveyEntity(id, b, b2, aVar2.b(m2, bottomSheetQuestionsIdsList), 0L, 16, null);
        }
        StringBuilder m8728C2 = C22128a.m8728C("Unexpected flow ");
        m8728C2.append(survey.getFlowCase());
        throw new f(m8728C2.toString());
    }

    /* renamed from: t */
    public static final boolean m16053t(Intent intent, Context context) {
        l.e(intent, "$this$canStartActivity");
        l.e(context, AnalyticsConstants.CONTEXT);
        return intent.resolveActivity(context.getPackageManager()) != null;
    }

    /* renamed from: t0 */
    public static final LayoutInflater m16052t0(LayoutInflater layoutInflater) {
        return m16050u0(layoutInflater, false);
    }

    /* renamed from: u */
    public static final void m16051u(AbstractC8541a abstractC8541a) {
        l.e(abstractC8541a, "$this$clearBusinessProfileSpecificData");
        abstractC8541a.remove("profileTwitter");
        abstractC8541a.remove("profileBackgroundColor");
        abstractC8541a.remove("profileSize");
        abstractC8541a.remove("profileOpeningHours");
        abstractC8541a.remove("profileImageUrls");
        abstractC8541a.remove("profileLatitude");
        abstractC8541a.remove("profileLongitude");
    }

    /* renamed from: u0 */
    public static final LayoutInflater m16050u0(LayoutInflater layoutInflater, boolean z) {
        l.e(layoutInflater, "$this$toThemeInflater");
        Context context = layoutInflater.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(m16113E(context, z));
        l.d(cloneInContext, "cloneInContext(context.g…tThemeWrapper(useThemeX))");
        return cloneInContext;
    }

    /* renamed from: v */
    public static final TCNewsLinksConfig m16049v() {
        return new TCNewsLinksConfig(C25225a.m3962T1(new TCNewsLinksForRegion("default", null, null, null, null, null, null, 126, null)));
    }

    /* renamed from: v0 */
    public static final String m16048v0(String str) {
        String str2;
        l.e(str, "$this$toTitleCase");
        int length = str.length();
        if (length == 0) {
            str2 = "";
        } else if (length != 1) {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            l.d(substring, "(this as java.lang.String).substring(startIndex)");
            Locale locale = Locale.ROOT;
            l.d(locale, "Locale.ROOT");
            String lowerCase = substring.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            str2 = String.valueOf(upperCase) + lowerCase;
        } else {
            Locale locale2 = Locale.ROOT;
            str2 = C22128a.m8586p(locale2, "Locale.ROOT", str, locale2, "(this as java.lang.String).toUpperCase(locale)");
        }
        return str2;
    }

    /* renamed from: w */
    public static final C13899a m16047w(String str, String str2) {
        return new C13899a(null, str, str2, 1);
    }

    /* renamed from: w0 */
    public static boolean m16046w0(Context context, String str, String str2, String str3) {
        FileInputStream fileInputStream;
        String readLine;
        FileInputStream fileInputStream2 = null;
        FileInputStream fileInputStream3 = null;
        try {
            try {
                fileInputStream = context.openFileInput("TruecallerPublicKeys.txt");
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                do {
                    fileInputStream3 = fileInputStream;
                    fileInputStream2 = fileInputStream;
                    readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        String[] split = readLine.split("§", -1);
                        if (split.length == 2) {
                            if (m16044x0(str, str2, str3, split[1], split[0])) {
                                if (fileInputStream == null) {
                                    return true;
                                }
                                try {
                                    fileInputStream.close();
                                    return true;
                                } catch (IOException e) {
                                    return true;
                                }
                            }
                        }
                    }
                } while (readLine != null);
                if (fileInputStream == null) {
                    return false;
                }
            } catch (IOException e2) {
                fileInputStream3 = fileInputStream2;
                e2.getMessage();
                if (fileInputStream2 == null) {
                    return false;
                }
                fileInputStream = fileInputStream2;
            }
            try {
                fileInputStream.close();
                return false;
            } catch (IOException e3) {
                return false;
            }
        } catch (Throwable th) {
            if (fileInputStream3 != null) {
                try {
                    fileInputStream3.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ce  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m16045x(p193e.p194a.p1359x4.p1360j.p1362d.AbstractC21439b r6, java.util.List<com.truecaller.searchwarnings.data.SearchWarningDTO> r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17422k.m16045x(e.a.x4.j.d.b, java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: x0 */
    public static boolean m16044x0(String str, String str2, String str3, String str4, String str5) {
        boolean z = false;
        try {
            PublicKey generatePublic = KeyFactory.getInstance(str5).generatePublic(new X509EncodedKeySpec(Base64.decode(str4.getBytes(), 0)));
            try {
                byte[] decode = Base64.decode(str2, 0);
                byte[] bytes = str.getBytes();
                Signature signature = Signature.getInstance(str3);
                signature.initVerify(generatePublic);
                signature.update(bytes);
                z = signature.verify(decode);
            } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
                C10480a.m26061I1(e);
            }
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e2) {
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ce  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m16043y(p193e.p194a.p918j.p930c.p931d.AbstractC15453b r6, java.util.List<com.truecaller.surveys.data.local.SurveyEntity> r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17422k.m16043y(e.a.j.c.d.b, java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: z */
    public static boolean m16042z(Context context, String str) {
        return ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo11647c().mo13825h("android.permission.READ_CONTACTS") && C21207g.m10135a(context, str);
    }
}
