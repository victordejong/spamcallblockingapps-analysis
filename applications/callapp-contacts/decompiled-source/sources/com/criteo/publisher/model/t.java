package com.criteo.publisher.model;

import android.content.SharedPreferences;
import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.l;
import com.criteo.publisher.m0.n;
import com.criteo.publisher.m0.q;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/t.class */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private final g f17635a;

    /* renamed from: b  reason: collision with root package name */
    private volatile y f17636b;

    /* renamed from: c  reason: collision with root package name */
    private final SharedPreferences f17637c;

    /* renamed from: d  reason: collision with root package name */
    private final l f17638d;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/t$a.class */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final RemoteLogRecords.RemoteLogLevel f17639a = RemoteLogRecords.RemoteLogLevel.WARNING;
    }

    public t() {
        this.f17635a = h.a(getClass());
        this.f17637c = null;
        this.f17638d = null;
        this.f17636b = y.a();
    }

    public t(SharedPreferences sharedPreferences, l lVar) {
        this.f17635a = h.a(getClass());
        this.f17637c = sharedPreferences;
        this.f17638d = lVar;
        this.f17636b = k();
    }

    private y a(y yVar, y yVar2) {
        return y.a((Boolean) n.a(yVar2.g(), yVar.g()), (String) n.a(yVar2.e(), yVar.e()), (String) n.a(yVar2.d(), yVar.d()), (String) n.a(yVar2.b(), yVar.b()), (String) n.a(yVar2.c(), yVar.c()), (Boolean) n.a(yVar2.f(), yVar.f()), (Boolean) n.a(yVar2.h(), yVar.h()), (Integer) n.a(yVar2.i(), yVar.i()), (Boolean) n.a(yVar2.j(), yVar.j()), (RemoteLogRecords.RemoteLogLevel) n.a(yVar2.k(), yVar.k()));
    }

    private void a(y yVar) {
        if (this.f17637c != null && this.f17638d != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                this.f17638d.a(yVar, byteArrayOutputStream);
                String str = new String(byteArrayOutputStream.toByteArray(), Charset.forName("UTF-8"));
                byteArrayOutputStream.close();
                SharedPreferences.Editor edit = this.f17637c.edit();
                edit.putString("CriteoCachedConfig", str);
                edit.apply();
            } catch (Exception e) {
                this.f17635a.a("Couldn't persist values", e);
            }
        }
    }

    private y k() {
        y a2 = y.a();
        SharedPreferences sharedPreferences = this.f17637c;
        if (!(sharedPreferences == null || this.f17638d == null)) {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(new q(sharedPreferences).a("CriteoCachedConfig", "{}").getBytes(Charset.forName("UTF-8")));
                y yVar = (y) this.f17638d.a(y.class, byteArrayInputStream);
                byteArrayInputStream.close();
                return a(a2, yVar);
            } catch (IOException e) {
                this.f17635a.a("Couldn't read cached values", e);
            }
        }
        return a2;
    }

    public String a() {
        return (String) n.a(this.f17636b.b(), "%%adTagData%%");
    }

    public String b() {
        return (String) n.a(this.f17636b.c(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script>%%adTagData%%</script></body></html>");
    }

    public void b(y yVar) {
        this.f17636b = a(this.f17636b, yVar);
        a(this.f17636b);
    }

    public String c() {
        return (String) n.a(this.f17636b.d(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script src=\"%%displayUrl%%\"></script></body></html>");
    }

    public String d() {
        return (String) n.a(this.f17636b.e(), "%%displayUrl%%");
    }

    public int e() {
        return ((Integer) n.a(this.f17636b.i(), 8000)).intValue();
    }

    public RemoteLogRecords.RemoteLogLevel f() {
        return (RemoteLogRecords.RemoteLogLevel) n.a(this.f17636b.k(), a.f17639a);
    }

    public boolean g() {
        return ((Boolean) n.a(this.f17636b.f(), Boolean.TRUE)).booleanValue();
    }

    public boolean h() {
        return ((Boolean) n.a(this.f17636b.g(), Boolean.FALSE)).booleanValue();
    }

    public boolean i() {
        return ((Boolean) n.a(this.f17636b.h(), Boolean.FALSE)).booleanValue();
    }

    public boolean j() {
        return ((Boolean) n.a(this.f17636b.j(), Boolean.TRUE)).booleanValue();
    }
}
