package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.AbstractC2962s;
import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.framed.C2871c;
import com.squareup.okhttp.internal.framed.C2883d;
import com.squareup.okhttp.internal.framed.C2888e;
import com.squareup.okhttp.internal.framed.ErrorCode;
import com.squareup.okhttp.p089u.C2975i;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.Okio;
import okio.Sink;
/* renamed from: com.squareup.okhttp.internal.http.c */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/c.class */
public final class C2916c implements AbstractC2941p {

    /* renamed from: d */
    private static final List<ByteString> f12316d = C2975i.m651i(ByteString.encodeUtf8("connection"), ByteString.encodeUtf8("host"), ByteString.encodeUtf8("keep-alive"), ByteString.encodeUtf8("proxy-connection"), ByteString.encodeUtf8("transfer-encoding"));

    /* renamed from: e */
    private static final List<ByteString> f12317e = C2975i.m651i(ByteString.encodeUtf8("connection"), ByteString.encodeUtf8("host"), ByteString.encodeUtf8("keep-alive"), ByteString.encodeUtf8("proxy-connection"), ByteString.encodeUtf8("te"), ByteString.encodeUtf8("transfer-encoding"), ByteString.encodeUtf8("encoding"), ByteString.encodeUtf8("upgrade"));

    /* renamed from: a */
    private final C2928g f12318a;

    /* renamed from: b */
    private final C2871c f12319b;

    /* renamed from: c */
    private C2883d f12320c;

    public C2916c(C2928g c2928g, C2871c c2871c) {
        this.f12318a = c2928g;
        this.f12319b = c2871c;
    }

    /* renamed from: i */
    private static boolean m1033i(Protocol protocol, ByteString byteString) {
        List<ByteString> list;
        if (protocol == Protocol.SPDY_3) {
            list = f12316d;
        } else if (protocol != Protocol.HTTP_2) {
            throw new AssertionError(protocol);
        } else {
            list = f12317e;
        }
        return list.contains(byteString);
    }

    /* renamed from: j */
    private static String m1032j(String str, String str2) {
        return str + (char) 0 + str2;
    }

    /* renamed from: k */
    public static C2959r.C2961b m1031k(List<C2888e> list, Protocol protocol) {
        String str;
        String str2;
        C2943k.C2945b c2945b = new C2943k.C2945b();
        c2945b.m887i(C2934j.f12384e, protocol.toString());
        int size = list.size();
        String str3 = null;
        String str4 = "HTTP/1.1";
        for (int i = 0; i < size; i++) {
            ByteString byteString = list.get(i).f12237a;
            String utf8 = list.get(i).f12238b.utf8();
            int i2 = 0;
            while (i2 < utf8.length()) {
                int indexOf = utf8.indexOf(0, i2);
                int i3 = indexOf;
                if (indexOf == -1) {
                    i3 = utf8.length();
                }
                String substring = utf8.substring(i2, i3);
                if (byteString.equals(C2888e.f12230d)) {
                    str2 = substring;
                    str = str4;
                } else if (byteString.equals(C2888e.f12236j)) {
                    str = substring;
                    str2 = str3;
                } else {
                    str2 = str3;
                    str = str4;
                    if (!m1033i(protocol, byteString)) {
                        c2945b.m894b(byteString.utf8(), substring);
                        str = str4;
                        str2 = str3;
                    }
                }
                i2 = i3 + 1;
                str3 = str2;
                str4 = str;
            }
        }
        if (str3 != null) {
            C2940o m917b = C2940o.m917b(str4 + " " + str3);
            C2959r.C2961b c2961b = new C2959r.C2961b();
            c2961b.m716x(protocol);
            c2961b.m723q(m917b.f12403b);
            c2961b.m719u(m917b.f12404c);
            c2961b.m720t(c2945b.m891e());
            return c2961b;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    /* renamed from: l */
    public static List<C2888e> m1030l(C2954p c2954p, Protocol protocol, String str) {
        C2888e c2888e;
        C2943k m786i = c2954p.m786i();
        ArrayList arrayList = new ArrayList(m786i.m897f() + 10);
        arrayList.add(new C2888e(C2888e.f12231e, c2954p.m783l()));
        arrayList.add(new C2888e(C2888e.f12232f, C2937l.m935c(c2954p.m785j())));
        String m653g = C2975i.m653g(c2954p.m785j());
        if (Protocol.SPDY_3 == protocol) {
            arrayList.add(new C2888e(C2888e.f12236j, str));
            c2888e = new C2888e(C2888e.f12235i, m653g);
        } else if (Protocol.HTTP_2 != protocol) {
            throw new AssertionError();
        } else {
            c2888e = new C2888e(C2888e.f12234h, m653g);
        }
        arrayList.add(c2888e);
        arrayList.add(new C2888e(C2888e.f12233g, c2954p.m785j().m883D()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int m897f = m786i.m897f();
        for (int i = 0; i < m897f; i++) {
            ByteString encodeUtf8 = ByteString.encodeUtf8(m786i.m899d(i).toLowerCase(Locale.US));
            String m896g = m786i.m896g(i);
            if (!m1033i(protocol, encodeUtf8) && !encodeUtf8.equals(C2888e.f12231e) && !encodeUtf8.equals(C2888e.f12232f) && !encodeUtf8.equals(C2888e.f12233g) && !encodeUtf8.equals(C2888e.f12234h) && !encodeUtf8.equals(C2888e.f12235i) && !encodeUtf8.equals(C2888e.f12236j)) {
                if (linkedHashSet.add(encodeUtf8)) {
                    arrayList.add(new C2888e(encodeUtf8, m896g));
                } else {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= arrayList.size()) {
                            break;
                        } else if (((C2888e) arrayList.get(i2)).f12237a.equals(encodeUtf8)) {
                            arrayList.set(i2, new C2888e(encodeUtf8, m1032j(((C2888e) arrayList.get(i2)).f12238b.utf8(), m896g)));
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: a */
    public Sink mo916a(C2954p c2954p, long j) {
        return this.f12320c.m1167q();
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: b */
    public void mo915b() {
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: c */
    public void mo914c(C2954p c2954p) {
        if (this.f12320c != null) {
            return;
        }
        this.f12318a.m980M();
        boolean m954z = this.f12318a.m954z();
        String m934d = C2937l.m934d(this.f12318a.m965o().m1284k());
        C2871c c2871c = this.f12319b;
        C2883d m1208p0 = c2871c.m1208p0(m1030l(c2954p, c2871c.m1213l0(), m934d), m954z, true);
        this.f12320c = m1208p0;
        m1208p0.m1163u().timeout(this.f12318a.f12351a.m802r(), TimeUnit.MILLISECONDS);
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: d */
    public void mo913d(C2938m c2938m) {
        c2938m.m932p(this.f12320c.m1167q());
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: e */
    public void mo912e(C2928g c2928g) {
        C2883d c2883d = this.f12320c;
        if (c2883d != null) {
            c2883d.m1172l(ErrorCode.CANCEL);
        }
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: f */
    public C2959r.C2961b mo911f() {
        return m1031k(this.f12320c.m1168p(), this.f12319b.m1213l0());
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    public void finishRequest() {
        this.f12320c.m1167q().close();
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: g */
    public boolean mo910g() {
        return true;
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: h */
    public AbstractC2962s mo909h(C2959r c2959r) {
        return new C2936k(c2959r.m745r(), Okio.buffer(this.f12320c.m1166r()));
    }
}
