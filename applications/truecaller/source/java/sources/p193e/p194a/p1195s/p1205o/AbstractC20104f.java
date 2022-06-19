package p193e.p194a.p1195s.p1205o;

import com.huawei.hms.opendevice.AbstractC2405c;
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
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1195s.p1197k.C20021a;
import p193e.p194a.p1195s.p1197k.C20022b;
import s1.w.d;
import x3.b;
import x3.h0.a;
import x3.h0.f;
import x3.h0.o;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0013\u0010\u0003\u001a\u00020\u0002H§@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u001d\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\u0006\u001a\u00020\u0005H§@ø\u0001��¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH§@ø\u0001��¢\u0006\u0004\b\f\u0010\u0004J\u001d\u0010\u000f\u001a\u00020\u000e2\b\b\u0001\u0010\u0006\u001a\u00020\rH§@ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0012\u001a\u00020\u0011H§@ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0004J\u0013\u0010\u0014\u001a\u00020\u0013H§@ø\u0001��¢\u0006\u0004\b\u0014\u0010\u0004J#\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\n2\b\b\u0001\u0010\u0016\u001a\u00020\u0015H§@ø\u0001��¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001c\u001a\u00020\u001b2\b\b\u0001\u0010\u0006\u001a\u00020\u001aH§@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010 \u001a\u00020\u001f2\b\b\u0001\u0010\u0006\u001a\u00020\u001eH§@ø\u0001��¢\u0006\u0004\b \u0010!J\u001f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#2\b\b\u0001\u0010\u0006\u001a\u00020\"H'¢\u0006\u0004\b%\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Le/a/s/o/f;", "", "Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;", "h", "(Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;", "requestDto", "Lcom/truecaller/callhero_assistant/data/UpdatePreferencesResponseDto;", AbstractC2405c.f7629a, "(Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;Ls1/w/d;)Ljava/lang/Object;", "", "Lcom/truecaller/callhero_assistant/data/Carrier;", "f", "Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;", "Lcom/truecaller/callhero_assistant/data/SaveCarrierResponseDto;", "d", "(Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/callhero_assistant/data/EnableServiceResponseDto;", C22021b.f61237c, "Lcom/truecaller/callhero_assistant/data/DisableServiceResponseDto;", "a", "Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;", "request", "Lcom/truecaller/callhero_assistant/data/ScreenedCall;", "i", "(Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;Ls1/w/d;)Ljava/lang/Object;", "Le/a/s/k/a;", "Le/a/s/k/b;", "e", "(Le/a/s/k/a;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;", "Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;", "g", "(Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;", "Lx3/b;", "Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;", "j", "(Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;)Lx3/b;", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.o.f */
/* loaded from: classes17-dex2jar.jar:e/a/s/o/f.class */
public interface AbstractC20104f {
    @o("v1/users/disableService")
    /* renamed from: a */
    Object mo11542a(d<? super DisableServiceResponseDto> dVar);

    @o("v1/users/enableService")
    /* renamed from: b */
    Object mo11541b(d<? super EnableServiceResponseDto> dVar);

    @o("v1/users/updatePreferences")
    /* renamed from: c */
    Object mo11540c(@a UpdatePreferencesRequestDto updatePreferencesRequestDto, d<? super UpdatePreferencesResponseDto> dVar);

    @o("v1/users/saveCarrier")
    /* renamed from: d */
    Object mo11539d(@a SaveCarrierRequestDto saveCarrierRequestDto, d<? super SaveCarrierResponseDto> dVar);

    @o("v1/users/bindUserPushToken")
    /* renamed from: e */
    Object mo11538e(@a C20021a c20021a, d<? super C20022b> dVar);

    @o("v1/countries/listCarriers")
    /* renamed from: f */
    Object mo11537f(d<? super List<Carrier>> dVar);

    @o("v1/users/signupTC")
    /* renamed from: g */
    Object mo11536g(@a SignupTcRequestDto signupTcRequestDto, d<? super SignupTcResponseDto> dVar);

    @f("v1/voices/list")
    /* renamed from: h */
    Object mo11535h(d<? super ListVoicesResponseDto> dVar);

    @o("v1/calls/getMyCalls")
    /* renamed from: i */
    Object mo11534i(@a GetMyCallsRequest getMyCallsRequest, d<? super List<ScreenedCall>> dVar);

    @o("v1/users/setWhitelistNumbers")
    /* renamed from: j */
    b<SetWhitelistNumbersResponseDto> mo11533j(@a SetWhitelistNumbersRequestDto setWhitelistNumbersRequestDto);
}
