package p193e.p194a.p1195s.p1205o;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callhero_assistant.data.Carrier;
import com.truecaller.callhero_assistant.data.DisableServiceResponseDto;
import com.truecaller.callhero_assistant.data.EnableServiceResponseDto;
import com.truecaller.callhero_assistant.data.GetMyCallsRequest;
import com.truecaller.callhero_assistant.data.ListVoicesResponseDto;
import com.truecaller.callhero_assistant.data.SaveCarrierRequestDto;
import com.truecaller.callhero_assistant.data.SaveCarrierResponseDto;
import com.truecaller.callhero_assistant.data.ScreenedCall;
import com.truecaller.callhero_assistant.data.SetWhitelistNumbersRequestDto;
import com.truecaller.callhero_assistant.data.SetWhitelistNumbersResponseDto;
import com.truecaller.callhero_assistant.data.SignupTcRequestDto;
import com.truecaller.callhero_assistant.data.SignupTcResponseDto;
import com.truecaller.callhero_assistant.data.UpdatePreferencesRequestDto;
import com.truecaller.callhero_assistant.data.UpdatePreferencesResponseDto;
import e.m.e.k;
import java.io.File;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1195s.p1197k.C20021a;
import p193e.p194a.p1195s.p1197k.C20022b;
import s1.z.c.d0;
import s1.z.c.l;
import u3.d;
import u3.e0;
import x3.b;
import x3.b0;
import x3.g0.a.a;
/* renamed from: e.a.s.o.e */
/* loaded from: classes17-dex2jar.jar:e/a/s/o/e.class */
public final class C20103e implements AbstractC20102d {

    /* renamed from: a */
    public final Context f56714a;

    /* renamed from: b */
    public final AbstractC20098a f56715b;

    @Inject
    public C20103e(Context context, AbstractC20098a abstractC20098a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC20098a, "authRequestInterceptor");
        this.f56714a = context;
        this.f56715b = abstractC20098a;
    }

    /* renamed from: k */
    public static AbstractC20104f m11543k(C20103e c20103e, boolean z, boolean z2, int i) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        e0.a aVar = new e0.a();
        if (z) {
            aVar.a(c20103e.f56715b);
        }
        String c = d0.a(AbstractC20104f.class).c();
        if (c == null) {
            c = "";
        }
        C18334g0.m15269F(c);
        aVar.a(new C20101c());
        if (z2) {
            aVar.k = new d(new File(c20103e.f56714a.getCacheDir(), "call_assistant_http"), 1048576L);
        }
        e.m.e.l lVar = new e.m.e.l();
        lVar.g = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
        k a = lVar.a();
        b0.b bVar = new b0.b();
        bVar.a("https://callhero-dev.herokuapp.com/api/");
        bVar.d.add(new a(a));
        bVar.d(new e0(aVar));
        Object b = bVar.c().b(AbstractC20104f.class);
        l.d(b, "Retrofit.Builder()\n     …stantRestApi::class.java)");
        return (AbstractC20104f) b;
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: a */
    public Object mo11542a(s1.w.d<? super DisableServiceResponseDto> dVar) {
        return m11543k(this, false, false, 3).mo11542a(dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: b */
    public Object mo11541b(s1.w.d<? super EnableServiceResponseDto> dVar) {
        return m11543k(this, false, false, 3).mo11541b(dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: c */
    public Object mo11540c(UpdatePreferencesRequestDto updatePreferencesRequestDto, s1.w.d<? super UpdatePreferencesResponseDto> dVar) {
        return m11543k(this, false, false, 3).mo11540c(updatePreferencesRequestDto, dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: d */
    public Object mo11539d(SaveCarrierRequestDto saveCarrierRequestDto, s1.w.d<? super SaveCarrierResponseDto> dVar) {
        return m11543k(this, false, false, 3).mo11539d(saveCarrierRequestDto, dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: e */
    public Object mo11538e(C20021a c20021a, s1.w.d<? super C20022b> dVar) {
        return m11543k(this, false, false, 3).mo11538e(c20021a, dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: f */
    public Object mo11537f(s1.w.d<? super List<Carrier>> dVar) {
        return m11543k(this, false, false, 3).mo11537f(dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: g */
    public Object mo11536g(SignupTcRequestDto signupTcRequestDto, s1.w.d<? super SignupTcResponseDto> dVar) {
        return m11543k(this, false, false, 2).mo11536g(signupTcRequestDto, dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: h */
    public Object mo11535h(s1.w.d<? super ListVoicesResponseDto> dVar) {
        return m11543k(this, false, true, 1).mo11535h(dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: i */
    public Object mo11534i(GetMyCallsRequest getMyCallsRequest, s1.w.d<? super List<ScreenedCall>> dVar) {
        return m11543k(this, false, false, 3).mo11534i(getMyCallsRequest, dVar);
    }

    @Override // p193e.p194a.p1195s.p1205o.AbstractC20104f
    /* renamed from: j */
    public b<SetWhitelistNumbersResponseDto> mo11533j(SetWhitelistNumbersRequestDto setWhitelistNumbersRequestDto) {
        l.e(setWhitelistNumbersRequestDto, "requestDto");
        return m11543k(this, false, false, 3).mo11533j(setWhitelistNumbersRequestDto);
    }
}
