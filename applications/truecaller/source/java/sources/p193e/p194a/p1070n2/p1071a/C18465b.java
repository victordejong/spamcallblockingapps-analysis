package p193e.p194a.p1070n2.p1071a;

import com.truecaller.account.network.AccountPhoneNumbersResponseDto;
import com.truecaller.account.network.CheckCredentialsRequestDto;
import com.truecaller.account.network.CheckCredentialsResponseErrorDto;
import com.truecaller.account.network.DeleteSecondaryNumberRequestDto;
import com.truecaller.account.network.DeleteSecondaryNumberResponseError;
import com.truecaller.account.network.ExchangeCredentialsRequestDto;
import com.truecaller.account.network.ExchangeCredentialsResponseDto;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import e.m.d.y.n;
import e.m.e.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.AbstractC8376a;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import s1.z.c.l;
import u3.b0;
import x3.a0;
/* renamed from: e.a.n2.a.b */
/* loaded from: classes4-dex2jar.jar:e/a/n2/a/b.class */
public final class C18465b implements AbstractC18464a {

    /* renamed from: a */
    public final k f52146a = new k();

    /* renamed from: a */
    public AbstractC18468e m14904a(CheckCredentialsRequestDto checkCredentialsRequestDto, String str) throws IOException {
        C18469f c18469f;
        l.e(checkCredentialsRequestDto, "requestDto");
        l.e(checkCredentialsRequestDto, "requestDto");
        C8365b c8365b = new C8365b();
        C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ACCOUNT, AbstractC18466c.class);
        m8568t1.m28628b(AuthRequirement.REQUIRED, str);
        m8568t1.m28626d(false);
        c8365b.m28636d(C8363a.m28642a(m8568t1));
        a0 execute = ((AbstractC18466c) c8365b.m28637c(AbstractC18466c.class)).m14889l(checkCredentialsRequestDto).execute();
        l.d(execute, "response");
        if (execute.b()) {
            c18469f = (AbstractC18468e) execute.b;
        } else {
            CheckCredentialsResponseErrorDto checkCredentialsResponseErrorDto = (CheckCredentialsResponseErrorDto) n.E(execute, this.f52146a, CheckCredentialsResponseErrorDto.class);
            int i = execute.a.e;
            Long l = null;
            Integer valueOf = checkCredentialsResponseErrorDto != null ? Integer.valueOf(checkCredentialsResponseErrorDto.getStatus()) : null;
            if (checkCredentialsResponseErrorDto != null) {
                l = checkCredentialsResponseErrorDto.getTtl();
            }
            c18469f = new C18469f(i, valueOf, l);
        }
        return c18469f;
    }

    /* renamed from: b */
    public AbstractC18470g m14903b(DeleteSecondaryNumberRequestDto deleteSecondaryNumberRequestDto) {
        l.e(deleteSecondaryNumberRequestDto, "requestDto");
        l.e(deleteSecondaryNumberRequestDto, "requestDto");
        C8365b c8365b = new C8365b();
        C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ACCOUNT, AbstractC18466c.class);
        m8568t1.m28628b(AuthRequirement.REQUIRED, null);
        m8568t1.m28626d(true);
        m8568t1.f25762f = new AbstractC8376a.C8384h(true);
        c8365b.m28636d(C8363a.m28642a(m8568t1));
        a0 execute = ((AbstractC18466c) c8365b.m28637c(AbstractC18466c.class)).m14900a(deleteSecondaryNumberRequestDto).execute();
        l.d(execute, "response");
        return execute.b() ? C18471h.f52150a : (AbstractC18470g) n.E(execute, this.f52146a, DeleteSecondaryNumberResponseError.class);
    }

    /* renamed from: c */
    public a0<ExchangeCredentialsResponseDto> m14902c(String str) throws IOException {
        l.e(str, "installationId");
        l.e(str, "installationId");
        C8365b c8365b = new C8365b();
        C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ACCOUNT, AbstractC18466c.class);
        m8568t1.m28628b(AuthRequirement.NONE, null);
        m8568t1.f25759c = new AbstractC8376a.C8378b(false);
        c8365b.m28636d(C8363a.m28642a(m8568t1));
        b0 c18467d = new C18467d();
        l.e(c18467d, "interceptor");
        if (c8365b.f25718d == null) {
            c8365b.f25718d = new ArrayList();
        }
        List<b0> list = c8365b.f25718d;
        if (list != null) {
            list.add(c18467d);
        }
        a0<ExchangeCredentialsResponseDto> execute = ((AbstractC18466c) c8365b.m28637c(AbstractC18466c.class)).m14890k(new ExchangeCredentialsRequestDto(str)).execute();
        l.d(execute, "AccountRestAdapter.excha…installationId).execute()");
        return execute;
    }

    /* renamed from: d */
    public AccountPhoneNumbersResponseDto m14901d() {
        C8365b c8365b = new C8365b();
        C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ACCOUNT, AbstractC18466c.class);
        AccountPhoneNumbersResponseDto accountPhoneNumbersResponseDto = null;
        m8568t1.m28628b(AuthRequirement.REQUIRED, null);
        m8568t1.m28626d(true);
        m8568t1.f25762f = new AbstractC8376a.C8384h(true);
        c8365b.m28636d(C8363a.m28642a(m8568t1));
        a0 execute = ((AbstractC18466c) c8365b.m28637c(AbstractC18466c.class)).m14891j().execute();
        l.d(execute, "it");
        if (!execute.b()) {
            execute = null;
        }
        if (execute != null) {
            accountPhoneNumbersResponseDto = (AccountPhoneNumbersResponseDto) execute.b;
        }
        return accountPhoneNumbersResponseDto;
    }
}
