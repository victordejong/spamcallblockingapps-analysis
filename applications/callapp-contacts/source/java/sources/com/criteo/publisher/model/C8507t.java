package com.criteo.publisher.model;

import android.content.SharedPreferences;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.p256m0.C8441l;
import com.criteo.publisher.p256m0.C8443n;
import com.criteo.publisher.p256m0.C8446q;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: com.criteo.publisher.model.t */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/t.class */
public class C8507t {

    /* renamed from: a */
    private final C8402g f30359a;

    /* renamed from: b */
    private volatile AbstractC8515y f30360b;

    /* renamed from: c */
    private final SharedPreferences f30361c;

    /* renamed from: d */
    private final C8441l f30362d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.t$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/t$a.class */
    public static class C8508a {

        /* renamed from: a */
        private static final RemoteLogRecords.RemoteLogLevel f30363a = RemoteLogRecords.RemoteLogLevel.WARNING;
    }

    public C8507t() {
        this.f30359a = C8404h.m25741a(getClass());
        this.f30361c = null;
        this.f30362d = null;
        this.f30360b = AbstractC8515y.m25498a();
    }

    public C8507t(SharedPreferences sharedPreferences, C8441l c8441l) {
        this.f30359a = C8404h.m25741a(getClass());
        this.f30361c = sharedPreferences;
        this.f30362d = c8441l;
        this.f30360b = m25520k();
    }

    /* renamed from: a */
    private AbstractC8515y m25531a(AbstractC8515y abstractC8515y, AbstractC8515y abstractC8515y2) {
        return AbstractC8515y.m25496a((Boolean) C8443n.m25677a(abstractC8515y2.mo25490g(), abstractC8515y.mo25490g()), (String) C8443n.m25677a(abstractC8515y2.mo25492e(), abstractC8515y.mo25492e()), (String) C8443n.m25677a(abstractC8515y2.mo25493d(), abstractC8515y.mo25493d()), (String) C8443n.m25677a(abstractC8515y2.mo25495b(), abstractC8515y.mo25495b()), (String) C8443n.m25677a(abstractC8515y2.mo25494c(), abstractC8515y.mo25494c()), (Boolean) C8443n.m25677a(abstractC8515y2.mo25491f(), abstractC8515y.mo25491f()), (Boolean) C8443n.m25677a(abstractC8515y2.mo25489h(), abstractC8515y.mo25489h()), (Integer) C8443n.m25677a(abstractC8515y2.mo25488i(), abstractC8515y.mo25488i()), (Boolean) C8443n.m25677a(abstractC8515y2.mo25487j(), abstractC8515y.mo25487j()), (RemoteLogRecords.RemoteLogLevel) C8443n.m25677a(abstractC8515y2.mo25486k(), abstractC8515y.mo25486k()));
    }

    /* renamed from: a */
    private void m25532a(AbstractC8515y abstractC8515y) {
        if (this.f30361c == null || this.f30362d == null) {
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f30362d.m25680a(abstractC8515y, byteArrayOutputStream);
            String str = new String(byteArrayOutputStream.toByteArray(), Charset.forName("UTF-8"));
            byteArrayOutputStream.close();
            SharedPreferences.Editor edit = this.f30361c.edit();
            edit.putString("CriteoCachedConfig", str);
            edit.apply();
        } catch (Exception e) {
            this.f30359a.m25743a("Couldn't persist values", e);
        }
    }

    /* renamed from: k */
    private AbstractC8515y m25520k() {
        AbstractC8515y m25498a = AbstractC8515y.m25498a();
        SharedPreferences sharedPreferences = this.f30361c;
        if (sharedPreferences != null && this.f30362d != null) {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(new C8446q(sharedPreferences).m25671a("CriteoCachedConfig", "{}").getBytes(Charset.forName("UTF-8")));
                AbstractC8515y abstractC8515y = (AbstractC8515y) this.f30362d.m25681a(AbstractC8515y.class, byteArrayInputStream);
                byteArrayInputStream.close();
                return m25531a(m25498a, abstractC8515y);
            } catch (IOException e) {
                this.f30359a.m25743a("Couldn't read cached values", e);
            }
        }
        return m25498a;
    }

    /* renamed from: a */
    public String m25533a() {
        return (String) C8443n.m25677a(this.f30360b.mo25495b(), "%%adTagData%%");
    }

    /* renamed from: b */
    public String m25530b() {
        return (String) C8443n.m25677a(this.f30360b.mo25494c(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script>%%adTagData%%</script></body></html>");
    }

    /* renamed from: b */
    public void m25529b(AbstractC8515y abstractC8515y) {
        this.f30360b = m25531a(this.f30360b, abstractC8515y);
        m25532a(this.f30360b);
    }

    /* renamed from: c */
    public String m25528c() {
        return (String) C8443n.m25677a(this.f30360b.mo25493d(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script src=\"%%displayUrl%%\"></script></body></html>");
    }

    /* renamed from: d */
    public String m25527d() {
        return (String) C8443n.m25677a(this.f30360b.mo25492e(), "%%displayUrl%%");
    }

    /* renamed from: e */
    public int m25526e() {
        return ((Integer) C8443n.m25677a(this.f30360b.mo25488i(), 8000)).intValue();
    }

    /* renamed from: f */
    public RemoteLogRecords.RemoteLogLevel m25525f() {
        return (RemoteLogRecords.RemoteLogLevel) C8443n.m25677a(this.f30360b.mo25486k(), C8508a.f30363a);
    }

    /* renamed from: g */
    public boolean m25524g() {
        return ((Boolean) C8443n.m25677a(this.f30360b.mo25491f(), Boolean.TRUE)).booleanValue();
    }

    /* renamed from: h */
    public boolean m25523h() {
        return ((Boolean) C8443n.m25677a(this.f30360b.mo25490g(), Boolean.FALSE)).booleanValue();
    }

    /* renamed from: i */
    public boolean m25522i() {
        return ((Boolean) C8443n.m25677a(this.f30360b.mo25489h(), Boolean.FALSE)).booleanValue();
    }

    /* renamed from: j */
    public boolean m25521j() {
        return ((Boolean) C8443n.m25677a(this.f30360b.mo25487j(), Boolean.TRUE)).booleanValue();
    }
}
