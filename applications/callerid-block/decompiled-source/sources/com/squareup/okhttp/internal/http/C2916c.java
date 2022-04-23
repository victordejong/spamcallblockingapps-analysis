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

    public C2916c(C2928g gVar, C2871c cVar) {
        this.f12318a = gVar;
        this.f12319b = cVar;
    }

    /* renamed from: i */
    private static boolean m1033i(Protocol protocol, ByteString byteString) {
        List<ByteString> list;
        if (protocol == Protocol.SPDY_3) {
            list = f12316d;
        } else if (protocol == Protocol.HTTP_2) {
            list = f12317e;
        } else {
            throw new AssertionError(protocol);
        }
        return list.contains(byteString);
    }

    /* renamed from: j */
    private static String m1032j(String str, String str2) {
        return str + (char) 0 + str2;
    }

    /* renamed from: k */
    public static C2959r.C2961b m1031k(List<C2888e> list, Protocol protocol) {
        C2943k.C2945b bVar = new C2943k.C2945b();
        bVar.m887i(C2934j.f12384e, protocol.toString());
        int size = list.size();
        String str = null;
        String str2 = "HTTP/1.1";
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
                    str = substring;
                    str2 = str2;
                } else if (byteString.equals(C2888e.f12236j)) {
                    str2 = substring;
                    str = str;
                } else {
                    str = str;
                    str2 = str2;
                    if (!m1033i(protocol, byteString)) {
                        bVar.m894b(byteString.utf8(), substring);
                        str2 = str2;
                        str = str;
                    }
                }
                i2 = i3 + 1;
            }
        }
        if (str != null) {
            C2940o b = C2940o.m917b(str2 + " " + str);
            C2959r.C2961b bVar2 = new C2959r.C2961b();
            bVar2.m716x(protocol);
            bVar2.m723q(b.f12403b);
            bVar2.m719u(b.f12404c);
            bVar2.m720t(bVar.m891e());
            return bVar2;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    /* renamed from: l */
    public static List<C2888e> m1030l(C2954p pVar, Protocol protocol, String str) {
        C2888e eVar;
        C2943k i = pVar.m786i();
        ArrayList arrayList = new ArrayList(i.m897f() + 10);
        arrayList.add(new C2888e(C2888e.f12231e, pVar.m783l()));
        arrayList.add(new C2888e(C2888e.f12232f, C2937l.m935c(pVar.m785j())));
        String g = C2975i.m653g(pVar.m785j());
        if (Protocol.SPDY_3 == protocol) {
            arrayList.add(new C2888e(C2888e.f12236j, str));
            eVar = new C2888e(C2888e.f12235i, g);
        } else if (Protocol.HTTP_2 == protocol) {
            eVar = new C2888e(C2888e.f12234h, g);
        } else {
            throw new AssertionError();
        }
        arrayList.add(eVar);
        arrayList.add(new C2888e(C2888e.f12233g, pVar.m785j().m883D()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int f = i.m897f();
        for (int i2 = 0; i2 < f; i2++) {
            ByteString encodeUtf8 = ByteString.encodeUtf8(i.m899d(i2).toLowerCase(Locale.US));
            String g2 = i.m896g(i2);
            if (!m1033i(protocol, encodeUtf8) && !encodeUtf8.equals(C2888e.f12231e) && !encodeUtf8.equals(C2888e.f12232f) && !encodeUtf8.equals(C2888e.f12233g) && !encodeUtf8.equals(C2888e.f12234h) && !encodeUtf8.equals(C2888e.f12235i) && !encodeUtf8.equals(C2888e.f12236j)) {
                if (linkedHashSet.add(encodeUtf8)) {
                    arrayList.add(new C2888e(encodeUtf8, g2));
                } else {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            break;
                        } else if (((C2888e) arrayList.get(i3)).f12237a.equals(encodeUtf8)) {
                            arrayList.set(i3, new C2888e(encodeUtf8, m1032j(((C2888e) arrayList.get(i3)).f12238b.utf8(), g2)));
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: a */
    public Sink mo916a(C2954p pVar, long j) {
        return this.f12320c.m1167q();
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: b */
    public void mo915b() {
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: c */
    public void mo914c(C2954p pVar) {
        if (this.f12320c == null) {
            this.f12318a.m980M();
            boolean z = this.f12318a.m954z();
            String d = C2937l.m934d(this.f12318a.m965o().m1284k());
            C2871c cVar = this.f12319b;
            C2883d p0 = cVar.m1208p0(m1030l(pVar, cVar.m1213l0(), d), z, true);
            this.f12320c = p0;
            p0.m1163u().timeout(this.f12318a.f12351a.m802r(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: d */
    public void mo913d(C2938m mVar) {
        mVar.m932p(this.f12320c.m1167q());
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: e */
    public void mo912e(C2928g gVar) {
        C2883d dVar = this.f12320c;
        if (dVar != null) {
            dVar.m1172l(ErrorCode.CANCEL);
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
    public AbstractC2962s mo909h(C2959r rVar) {
        return new C2936k(rVar.m745r(), Okio.buffer(this.f12320c.m1166r()));
    }
}
