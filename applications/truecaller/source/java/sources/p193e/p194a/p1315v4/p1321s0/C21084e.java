package p193e.p194a.p1315v4.p1321s0;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.android.sdk.oAuth.OAuthResponse;
import com.truecaller.android.sdk.oAuth.SdkOptionsDataBundle;
import com.truecaller.android.sdk.oAuth.TcOAuthError;
import com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import com.truecaller.sdk.oAuth.networking.data.RejectRequest;
import com.truecaller.sdk.oAuth.networking.data.RejectionReason;
import com.truecaller.sdk.oAuth.networking.data.ScopeInfo;
import com.truecaller.sdk.oAuth.view.dialog.AdditionalPartnerInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1221t.p1230b.p1236e.C20385b;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.C21018a0;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1317p0.AbstractC21061b;
import p193e.p194a.p1315v4.p1321s0.p1323l.AbstractC21098b;
import p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.AbstractC21104a;
import p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.v4.s0.e */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/e.class */
public final class C21084e extends AbstractC21088g implements AbstractC21081b, i0 {

    /* renamed from: i */
    public final y f59190i = d.n((p1) null, 1);

    /* renamed from: j */
    public final PartnerInformationV2 f59191j;

    /* renamed from: k */
    public final C20385b f59192k;

    /* renamed from: l */
    public OAuthResponse f59193l;

    /* renamed from: m */
    public PartnerDetailsResponse f59194m;

    /* renamed from: n */
    public boolean f59195n;

    /* renamed from: o */
    public final Locale f59196o;

    /* renamed from: p */
    public final f f59197p;

    /* renamed from: q */
    public final AbstractC21098b f59198q;

    @e(c = "com.truecaller.sdk.oAuth.NativeOAuthSdkPartnerImpl$enqueueRejectConsent$1", f = "NativeOAuthSdkPartner.kt", l = {271}, m = "invokeSuspend")
    /* renamed from: e.a.v4.s0.e$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/e$a.class */
    public static final class C21085a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f59199e;

        /* renamed from: g */
        public final /* synthetic */ PartnerDetailsResponse f59201g;

        /* renamed from: h */
        public final /* synthetic */ PartnerInformationV2 f59202h;

        /* renamed from: i */
        public final /* synthetic */ String f59203i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21085a(PartnerDetailsResponse partnerDetailsResponse, PartnerInformationV2 partnerInformationV2, String str, s1.w.d dVar) {
            super(2, dVar);
            C21084e.this = r5;
            this.f59201g = partnerDetailsResponse;
            this.f59202h = partnerInformationV2;
            this.f59203i = str;
        }

        /* renamed from: i */
        public final s1.w.d<s> m10353i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C21085a(this.f59201g, this.f59202h, this.f59203i, dVar);
        }

        /* renamed from: k */
        public final Object m10352k(Object obj, Object obj2) {
            return m10353i(obj, (s1.w.d) obj2).m10351s(s.a);
        }

        /* renamed from: s */
        public final Object m10351s(Object obj) {
            a aVar = a.a;
            int i = this.f59199e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String requestId = this.f59201g.getRequestId();
                String clientId = this.f59202h.getClientId();
                l.d(clientId, "partnerInfo.clientId");
                RejectRequest rejectRequest = new RejectRequest(requestId, clientId, this.f59203i);
                AbstractC21098b abstractC21098b = C21084e.this.f59198q;
                this.f59199e = 1;
                if (abstractC21098b.mo10328b(rejectRequest, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.sdk.oAuth.NativeOAuthSdkPartnerImpl$setTransitionToInProgressStateComplete$1", f = "NativeOAuthSdkPartner.kt", l = {300}, m = "invokeSuspend")
    /* renamed from: e.a.v4.s0.e$b */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/e$b.class */
    public static final class C21086b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f59204e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21086b(s1.w.d dVar) {
            super(2, dVar);
            C21084e.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m10350i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C21086b(dVar);
        }

        /* renamed from: k */
        public final Object m10349k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C21086b(dVar).m10348s(s.a);
        }

        /* renamed from: s */
        public final Object m10348s(Object obj) {
            a aVar = a.a;
            int i = this.f59204e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f59204e = 1;
                if (d.D0(300L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C21084e c21084e = C21084e.this;
            c21084e.f59195n = false;
            C21084e.m10354z(c21084e);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21084e(f fVar, Bundle bundle, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, PackageManager packageManager, C21154v c21154v, AbstractC21098b abstractC21098b, C21018a0 c21018a0, AbstractC21040l abstractC21040l) {
        super(bundle, abstractC8541a, abstractC8438a, c21154v, abstractC21040l);
        l.e(fVar, "uiContext");
        l.e(bundle, "extras");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(packageManager, "packageManager");
        l.e(c21154v, "sdkAccountManager");
        l.e(abstractC21098b, "oAuthNetworkManager");
        l.e(c21018a0, "sdkLocaleManager");
        l.e(abstractC21040l, "eventsTrackerHolder");
        this.f59197p = fVar;
        this.f59198q = abstractC21098b;
        PartnerInformationV2 partnerInformationV2 = (PartnerInformationV2) bundle.getParcelable("truesdk_partner_info");
        this.f59191j = partnerInformationV2;
        this.f59192k = new C20385b(bundle.getInt("truesdk_flags", 0), (SdkOptionsDataBundle) bundle.getParcelable("truesdk_options_info"));
        String string = this.f59209d.getString("tc_oauth_extras_user_locale");
        Locale locale = string != null ? new Locale(string) : null;
        if (locale == null) {
            locale = null;
            if (partnerInformationV2 != null) {
                locale = partnerInformationV2.getLocale();
            }
        }
        this.f59196o = locale == null ? c21018a0.m10414a() : locale;
    }

    /* renamed from: y */
    public static final void m10355y(C21084e c21084e, AbstractC21104a abstractC21104a) {
        Objects.requireNonNull(c21084e);
        Objects.requireNonNull(abstractC21104a, "null cannot be cast to non-null type com.truecaller.sdk.oAuth.networking.data.ApiResponse.Error<T>");
        AbstractC21104a.AbstractC21105a abstractC21105a = (AbstractC21104a.AbstractC21105a) abstractC21104a;
        c21084e.f59193l = new OAuthResponse.FailureResponse(new TcOAuthError.ApiError(abstractC21105a.f59240a.errorCode(), abstractC21105a.f59240a.errorMessage()));
        C17422k.m16117A(c21084e, 0, abstractC21105a.f59240a.errorCode(), false, 4, null);
        AbstractC21121f abstractC21121f = c21084e.f59207b;
        if (abstractC21121f != null) {
            abstractC21121f.mo10288V1();
        }
    }

    /* renamed from: z */
    public static final void m10354z(C21084e c21084e) {
        OAuthResponse oAuthResponse;
        if (!c21084e.f59208c || (oAuthResponse = c21084e.f59193l) == null || c21084e.f59195n) {
            return;
        }
        int i = 0;
        boolean isSuccessful = oAuthResponse.isSuccessful();
        int i2 = isSuccessful ? -1 : 0;
        if (isSuccessful) {
            i = -1;
        } else {
            OAuthResponse oAuthResponse2 = c21084e.f59193l;
            if (oAuthResponse2 != null) {
                i = ((OAuthResponse.FailureResponse) oAuthResponse2).f10007a.f10014a;
            }
        }
        C17422k.m16117A(c21084e, i2, i, false, 4, null);
        AbstractC21121f abstractC21121f = c21084e.f59207b;
        if (abstractC21121f == null) {
            return;
        }
        abstractC21121f.mo10288V1();
    }

    /* renamed from: A */
    public final void m10367A(String str) {
        PartnerDetailsResponse partnerDetailsResponse;
        PartnerInformationV2 partnerInformationV2 = this.f59191j;
        if (partnerInformationV2 == null || (partnerDetailsResponse = this.f59194m) == null) {
            return;
        }
        d.w2(this, (f) null, (j0) null, new C21085a(partnerDetailsResponse, partnerInformationV2, str, null), 3, (Object) null);
    }

    /* renamed from: B */
    public void m10366B(int i, int i2, boolean z) {
        if (z) {
            d.X(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        }
        OAuthResponse oAuthResponse = this.f59193l;
        if (oAuthResponse != null) {
            if (oAuthResponse instanceof OAuthResponse.SuccessResponse) {
                m10334x().mo10377c("dismissed", "-1 : success", ((OAuthResponse.SuccessResponse) oAuthResponse).f10008a.getScopesGranted(), mo10356u());
            } else if (oAuthResponse instanceof OAuthResponse.FailureResponse) {
                if (this.f59208c) {
                    AbstractC21061b m10334x = m10334x();
                    StringBuilder sb = new StringBuilder();
                    OAuthResponse.FailureResponse failureResponse = (OAuthResponse.FailureResponse) oAuthResponse;
                    sb.append(failureResponse.f10007a.f10014a);
                    sb.append(" : ");
                    sb.append(failureResponse.f10007a.f10015b);
                    String sb2 = sb.toString();
                    PartnerDetailsResponse partnerDetailsResponse = this.f59194m;
                    ArrayList arrayList = null;
                    if (partnerDetailsResponse != null) {
                        List<ScopeInfo> scopes = partnerDetailsResponse.getScopes();
                        arrayList = null;
                        if (scopes != null) {
                            ArrayList arrayList2 = new ArrayList();
                            for (Object obj : scopes) {
                                if (((ScopeInfo) obj).getChecked()) {
                                    arrayList2.add(obj);
                                }
                            }
                            arrayList = new ArrayList(C25225a.m4004J(arrayList2, 10));
                            Iterator it = arrayList2.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((ScopeInfo) it.next()).getScope());
                            }
                        }
                    }
                    m10334x.mo10377c("dismissed", sb2, arrayList, mo10356u());
                } else {
                    AbstractC21061b m10334x2 = m10334x();
                    StringBuilder sb3 = new StringBuilder();
                    OAuthResponse.FailureResponse failureResponse2 = (OAuthResponse.FailureResponse) oAuthResponse;
                    sb3.append(failureResponse2.f10007a.f10014a);
                    sb3.append(" : ");
                    sb3.append(failureResponse2.f10007a.f10015b);
                    C17422k.m16096V(m10334x2, "dismissed", sb3.toString(), null, null, 12, null);
                }
            }
            AbstractC21121f abstractC21121f = this.f59207b;
            if (abstractC21121f == null) {
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(OAuthResponse.OAUTH_RESPONSE_EXTRA, oAuthResponse);
            abstractC21121f.mo10290U1(i, intent);
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: a */
    public void mo10347a() {
        PartnerDetailsResponse partnerDetailsResponse;
        this.f59208c = true;
        this.f59195n = true;
        AbstractC21121f abstractC21121f = this.f59207b;
        if (abstractC21121f != null) {
            abstractC21121f.mo10292S1();
        }
        PartnerInformationV2 partnerInformationV2 = this.f59191j;
        if (partnerInformationV2 == null || (partnerDetailsResponse = this.f59194m) == null) {
            return;
        }
        List<ScopeInfo> scopes = partnerDetailsResponse.getScopes();
        ArrayList arrayList = new ArrayList();
        for (Object obj : scopes) {
            if (((ScopeInfo) obj).getChecked()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ScopeInfo) it.next()).getScope());
        }
        String O = s1.u.i.O(arrayList2, StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
        String codeChallenge = partnerInformationV2.getCodeChallenge();
        boolean z = true;
        if (codeChallenge != null) {
            z = r.p(codeChallenge);
        }
        if (z) {
            this.f59193l = new OAuthResponse.FailureResponse(TcOAuthError.DeviceNotSupported.f10018c);
        } else {
            d.w2(this, (f) null, (j0) null, new C21083d(this, partnerInformationV2, partnerDetailsResponse, O, arrayList2, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: b */
    public String mo10365b() {
        return "native";
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo10364d() {
        /*
            r2 = this;
            r0 = r2
            com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2 r0 = r0.f59191j
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            java.lang.String r0 = r0.getSdkVariant()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L19
        L15:
            java.lang.String r0 = ""
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.C21084e.mo10364d():java.lang.String");
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: e */
    public void mo10346e() {
        d.w2(this, (f) null, (j0) null, new C21086b(null), 3, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo10363f() {
        /*
            r2 = this;
            r0 = r2
            com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2 r0 = r0.f59191j
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            java.lang.String r0 = r0.getTrueSdkVersion()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L19
        L15:
            java.lang.String r0 = ""
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.C21084e.mo10363f():java.lang.String");
    }

    public f getCoroutineContext() {
        return this.f59197p.plus(this.f59190i);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    public Locale getLocale() {
        return this.f59196o;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: h */
    public void mo10345h() {
        AbstractC21121f abstractC21121f = this.f59207b;
        if (abstractC21121f != null) {
            abstractC21121f.mo10291T1(true);
            PartnerInformationV2 partnerInformationV2 = this.f59191j;
            if (partnerInformationV2 == null) {
                return;
            }
            String[] scopes = partnerInformationV2.getScopes();
            l.d(scopes, "scopesList");
            d.w2(this, (f) null, (j0) null, new C21082c(this, partnerInformationV2, C25225a.m3990M1(scopes, StringConstant.SPACE, null, null, 0, null, null, 62), null), 3, (Object) null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo10362i() {
        /*
            r2 = this;
            r0 = r2
            com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2 r0 = r0.f59191j
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            java.lang.String r0 = r0.getSdkVariantVersion()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L19
        L15:
            java.lang.String r0 = ""
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.C21084e.mo10362i():java.lang.String");
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: j */
    public void mo10344j(String str, String str2) {
        l.e(str, "interactionType");
        l.e(str2, "url");
        m10334x().mo10378b(str);
        AbstractC21121f abstractC21121f = this.f59207b;
        if (abstractC21121f != null) {
            abstractC21121f.mo10284b(str2);
        }
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: k */
    public List<String> mo10361k() {
        String[] scopes;
        PartnerInformationV2 partnerInformationV2 = this.f59191j;
        return (partnerInformationV2 == null || (scopes = partnerInformationV2.getScopes()) == null) ? s1.u.s.a : s1.u.i.g(scopes);
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: l */
    public String mo10360l() {
        PartnerDetailsResponse partnerDetailsResponse = this.f59194m;
        return partnerDetailsResponse != null ? partnerDetailsResponse.getRequestId() : null;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: n */
    public void mo10343n() {
        m10367A(RejectionReason.REJECTED.getValue());
        this.f59193l = new OAuthResponse.FailureResponse(TcOAuthError.UserDeniedByPressingFooterError.f10026c);
        m10366B(0, 14, false);
        AbstractC21121f abstractC21121f = this.f59207b;
        if (abstractC21121f != null) {
            abstractC21121f.mo10288V1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    public void onBackPressed() {
        TcOAuthError.UserDeniedWhileLoadingError userDeniedWhileLoadingError = TcOAuthError.UserDeniedWhileLoadingError.f10028c;
        if (!this.f59195n) {
            if (this.f59208c) {
                if (this.f59193l == null) {
                    d.X(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
                    m10367A(RejectionReason.DISMISSED.getValue());
                    this.f59193l = new OAuthResponse.FailureResponse(userDeniedWhileLoadingError);
                    m10366B(0, 13, false);
                } else {
                    C17422k.m16117A(this, -1, -1, false, 4, null);
                }
            } else if (this.f59194m == null) {
                this.f59193l = new OAuthResponse.FailureResponse(userDeniedWhileLoadingError);
                C17422k.m16117A(this, 0, 13, false, 4, null);
            } else {
                m10367A(RejectionReason.DISMISSED.getValue());
                this.f59193l = new OAuthResponse.FailureResponse(TcOAuthError.UserDeniedError.f10027c);
                m10366B(0, 2, false);
            }
            AbstractC21121f abstractC21121f = this.f59207b;
            if (abstractC21121f == null) {
                return;
            }
            abstractC21121f.mo10288V1();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0246  */
    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.CharSequence, java.lang.CharSequence> mo10359p() {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.C21084e.mo10359p():java.util.Map");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo10358r() {
        /*
            r2 = this;
            r0 = r2
            com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2 r0 = r0.f59191j
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            java.lang.String r0 = r0.getClientId()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L19
        L15:
            java.lang.String r0 = ""
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.C21084e.mo10358r():java.lang.String");
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: s */
    public void mo10342s() {
        PartnerDetailsResponse partnerDetailsResponse = this.f59194m;
        if (partnerDetailsResponse != null) {
            m10334x().mo10378b("info_clicked");
            SdkOptionsDataBundle sdkOptionsDataBundle = this.f59192k.f57262b;
            l.d(sdkOptionsDataBundle, "sdkOptionsEvaluator.sdkOptionsDataBundle");
            AdditionalPartnerInfo additionalPartnerInfo = new AdditionalPartnerInfo(partnerDetailsResponse, sdkOptionsDataBundle, this.f59192k.m11213a());
            AbstractC21121f abstractC21121f = this.f59207b;
            if (abstractC21121f == null) {
                return;
            }
            abstractC21121f.mo10289U6(additionalPartnerInfo);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo10357t() {
        /*
            r2 = this;
            r0 = r2
            com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2 r0 = r0.f59191j
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            java.lang.String r0 = r0.getState()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L19
        L15:
            java.lang.String r0 = ""
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.C21084e.mo10357t():java.lang.String");
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: u */
    public String mo10356u() {
        String language = this.f59196o.getLanguage();
        l.d(language, "locale.language");
        return language;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: v */
    public void mo10341v(String str) {
        l.e(str, "language");
        l.e(str, "language");
        m10334x().mo10378b("language_changed");
        this.f59209d.putString("tc_oauth_extras_user_locale", str);
        AbstractC21121f abstractC21121f = this.f59207b;
        if (abstractC21121f != null) {
            abstractC21121f.mo10275t6();
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: w */
    public C20385b mo10340w() {
        return this.f59192k;
    }
}
