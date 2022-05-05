package p081h.p203i.p204a.p224e.p259j.p269j;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.URI;
/* renamed from: h.i.a.e.j.j.y5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/y5.class */
public final class C7963y5 extends AbstractC7765a6 {

    /* renamed from: a */
    public final C7889p f18679a;

    /* renamed from: b */
    public final Context f18680b;

    public C7963y5(@NonNull C7889p pVar, Context context) {
        this.f18680b = context;
        this.f18679a = pVar;
    }

    @Nullable
    /* renamed from: a */
    public static URI m18748a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException | IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m18749a(long j) {
        return j >= 0;
    }

    /* renamed from: b */
    public static boolean m18747b(long j) {
        return j >= 0;
    }

    /* renamed from: b */
    public static boolean m18746b(@Nullable String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7765a6
    /* renamed from: a */
    public final boolean mo18716a() {
        boolean z;
        if (m18746b(this.f18679a.f18496c)) {
            String valueOf = String.valueOf(this.f18679a.f18496c);
            if (valueOf.length() != 0) {
                "URL is missing:".concat(valueOf);
                return false;
            }
            new String("URL is missing:");
            return false;
        }
        URI a = m18748a(this.f18679a.f18496c);
        if (a == null) {
            return false;
        }
        if (!(a == null ? false : C7774c.m19509a(a, this.f18680b))) {
            String valueOf2 = String.valueOf(a);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 26);
            sb.append("URL fails whitelist rule: ");
            sb.append(valueOf2);
            sb.toString();
            return false;
        }
        String host = a.getHost();
        if (!(host != null && !m18746b(host) && host.length() <= 255)) {
            return false;
        }
        String scheme = a.getScheme();
        if (!(scheme != null && ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)))) {
            return false;
        }
        if (!(a.getUserInfo() == null)) {
            return false;
        }
        int port = a.getPort();
        if (!(port == -1 || port > 0)) {
            return false;
        }
        Integer num = this.f18679a.f18497d;
        if (!((num == null || num.intValue() == 0) ? false : true)) {
            String valueOf3 = String.valueOf(this.f18679a.f18497d);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 32);
            sb2.append("HTTP Method is null or invalid: ");
            sb2.append(valueOf3);
            sb2.toString();
            return false;
        }
        Integer num2 = this.f18679a.f18501h;
        if (num2 != null) {
            if (!(num2.intValue() > 0)) {
                String valueOf4 = String.valueOf(this.f18679a.f18501h);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf4).length() + 38);
                sb3.append("HTTP ResponseCode is a negative value:");
                sb3.append(valueOf4);
                sb3.toString();
                return false;
            }
        }
        Long l = this.f18679a.f18498e;
        if (l == null || m18747b(l.longValue())) {
            Long l2 = this.f18679a.f18499f;
            if (l2 == null || m18747b(l2.longValue())) {
                Long l3 = this.f18679a.f18503j;
                if (l3 == null || l3.longValue() <= 0) {
                    String valueOf5 = String.valueOf(this.f18679a.f18503j);
                    StringBuilder sb4 = new StringBuilder(String.valueOf(valueOf5).length() + 64);
                    sb4.append("Start time of the request is null, or zero, or a negative value:");
                    sb4.append(valueOf5);
                    sb4.toString();
                    return false;
                }
                Long l4 = this.f18679a.f18504k;
                if (l4 == null || m18749a(l4.longValue())) {
                    Long l5 = this.f18679a.f18505l;
                    if (l5 == null || m18749a(l5.longValue())) {
                        Long l6 = this.f18679a.f18506m;
                        if (l6 == null || l6.longValue() <= 0) {
                            String valueOf6 = String.valueOf(this.f18679a.f18506m);
                            StringBuilder sb5 = new StringBuilder(String.valueOf(valueOf6).length() + 88);
                            sb5.append("Time from the start of the request to the end of the response is null, negative or zero:");
                            sb5.append(valueOf6);
                            sb5.toString();
                            return false;
                        }
                        C7889p pVar = this.f18679a;
                        if (pVar.f18501h == null) {
                            return false;
                        }
                        String str = pVar.f18502i;
                        if (str == null) {
                            return true;
                        }
                        if (str.length() <= 128) {
                            int i = 0;
                            while (true) {
                                if (i >= str.length()) {
                                    z = true;
                                    break;
                                }
                                char charAt = str.charAt(i);
                                z = false;
                                if (charAt <= 31) {
                                    break;
                                } else if (charAt > 127) {
                                    z = false;
                                    break;
                                } else {
                                    i++;
                                }
                            }
                        } else {
                            z = false;
                        }
                        if (z) {
                            return true;
                        }
                        String valueOf7 = String.valueOf(this.f18679a.f18502i);
                        if (valueOf7.length() != 0) {
                            "The content type of the response is not a valid content-type:".concat(valueOf7);
                        } else {
                            new String("The content type of the response is not a valid content-type:");
                        }
                        this.f18679a.f18502i = null;
                        return true;
                    }
                    String valueOf8 = String.valueOf(this.f18679a.f18505l);
                    StringBuilder sb6 = new StringBuilder(String.valueOf(valueOf8).length() + 92);
                    sb6.append("Time from the start of the request to the start of the response is null or a negative value:");
                    sb6.append(valueOf8);
                    sb6.toString();
                    return false;
                }
                String valueOf9 = String.valueOf(this.f18679a.f18504k);
                StringBuilder sb7 = new StringBuilder(String.valueOf(valueOf9).length() + 49);
                sb7.append("Time to complete the request is a negative value:");
                sb7.append(valueOf9);
                sb7.toString();
                return false;
            }
            String valueOf10 = String.valueOf(this.f18679a.f18499f);
            StringBuilder sb8 = new StringBuilder(String.valueOf(valueOf10).length() + 37);
            sb8.append("Response Payload is a negative value:");
            sb8.append(valueOf10);
            sb8.toString();
            return false;
        }
        String valueOf11 = String.valueOf(this.f18679a.f18498e);
        StringBuilder sb9 = new StringBuilder(String.valueOf(valueOf11).length() + 36);
        sb9.append("Request Payload is a negative value:");
        sb9.append(valueOf11);
        sb9.toString();
        return false;
    }
}
