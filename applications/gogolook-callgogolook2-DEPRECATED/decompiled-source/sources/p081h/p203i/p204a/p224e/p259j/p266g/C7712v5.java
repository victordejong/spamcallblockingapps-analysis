package p081h.p203i.p204a.p224e.p259j.p266g;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.internal.clearcut.zzr;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p234c.C6777a;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
import p081h.p203i.p204a.p224e.p259j.p266g.C7606h5;
import p081h.p203i.p204a.p224e.p288n.C9097a;
/* renamed from: h.i.a.e.j.g.v5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/v5.class */
public final class C7712v5 implements C6777a.AbstractC6779b {

    /* renamed from: b */
    public static final Charset f18052b = Charset.forName("UTF-8");

    /* renamed from: c */
    public static final C7664p f18053c = new C7664p(C9097a.m16084a("com.google.android.gms.clearcut.public")).m19881a("gms:playlog:service:samplingrules_").m19876b("LogSamplingRules__");

    /* renamed from: d */
    public static final C7664p f18054d = new C7664p(C9097a.m16084a("com.google.android.gms.clearcut.public")).m19881a("gms:playlog:service:sampling_").m19876b("LogSampling__");

    /* renamed from: e */
    public static final ConcurrentHashMap<String, AbstractC7581f<C7606h5>> f18055e = new ConcurrentHashMap<>();

    /* renamed from: f */
    public static final HashMap<String, AbstractC7581f<String>> f18056f = new HashMap<>();

    /* renamed from: g */
    public static Boolean f18057g = null;

    /* renamed from: h */
    public static Long f18058h = null;

    /* renamed from: i */
    public static final AbstractC7581f<Boolean> f18059i = f18053c.m19878a("enable_log_sampling_rules", false);

    /* renamed from: a */
    public final Context f18060a;

    public C7712v5(Context context) {
        this.f18060a = context;
        Context context2 = this.f18060a;
        if (context2 != null) {
            AbstractC7581f.m20190a(context2);
        }
    }

    /* renamed from: a */
    public static long m19723a(String str, long j) {
        if (str == null || str.isEmpty()) {
            return C7677q5.m19821a(ByteBuffer.allocate(8).putLong(j).array());
        }
        byte[] bytes = str.getBytes(f18052b);
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
        allocate.put(bytes);
        allocate.putLong(j);
        return C7677q5.m19821a(allocate.array());
    }

    /* renamed from: a */
    public static C7606h5.C7608b m19724a(String str) {
        String str2;
        int i;
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i = indexOf + 1;
        } else {
            str2 = "";
            i = 0;
        }
        int indexOf2 = str.indexOf(47, i);
        if (indexOf2 <= 0) {
            String valueOf = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf.length() != 0 ? "Failed to parse the rule: ".concat(valueOf) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong < 0 || parseLong2 < 0) {
                StringBuilder sb = new StringBuilder(72);
                sb.append("negative values not supported: ");
                sb.append(parseLong);
                sb.append("/");
                sb.append(parseLong2);
                Log.e("LogSamplerImpl", sb.toString());
                return null;
            }
            C7606h5.C7608b.C7609a o = C7606h5.C7608b.m20106o();
            o.m20103a(str2);
            o.m20104a(parseLong);
            o.m20102b(parseLong2);
            return o.m20163j();
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf2.length() != 0 ? "parseLong() failed while parsing: ".concat(valueOf2) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m19727a(long j, long j2, long j3) {
        if (j2 < 0 || j3 <= 0) {
            return true;
        }
        return ((j > 0L ? 1 : (j == 0L ? 0 : -1)) >= 0 ? j % j3 : (((Long.MAX_VALUE % j3) + 1) + ((j & Long.MAX_VALUE) % j3)) % j3) < j2;
    }

    /* renamed from: a */
    public static boolean m19726a(Context context) {
        if (f18057g == null) {
            f18057g = Boolean.valueOf(C7097c.m21085b(context).m21092a("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return f18057g.booleanValue();
    }

    /* renamed from: b */
    public static long m19722b(Context context) {
        if (f18058h == null) {
            long j = 0;
            if (context == null) {
                return 0L;
            }
            if (m19726a(context)) {
                j = C7733y5.m19649a(context.getContentResolver(), "android_id", 0L);
            }
            f18058h = Long.valueOf(j);
        }
        return f18058h.longValue();
    }

    @Override // p081h.p203i.p204a.p224e.p234c.C6777a.AbstractC6779b
    /* renamed from: a */
    public final boolean mo19725a(zze zzeVar) {
        List<C7606h5.C7608b> list;
        zzr zzrVar = zzeVar.f6484a;
        String str = zzrVar.f6817g;
        int i = zzrVar.f6813c;
        C7649m5 m5Var = zzeVar.f6492i;
        int i2 = m5Var != null ? m5Var.f17940f : 0;
        if (!f18059i.m20191a().booleanValue()) {
            String valueOf = (str == null || str.isEmpty()) ? i >= 0 ? String.valueOf(i) : null : str;
            if (valueOf == null) {
                return true;
            }
            Context context = this.f18060a;
            String str2 = null;
            if (context != null) {
                if (!m19726a(context)) {
                    str2 = null;
                } else {
                    AbstractC7581f<String> fVar = f18056f.get(valueOf);
                    AbstractC7581f<String> fVar2 = fVar;
                    if (fVar == null) {
                        fVar2 = f18054d.m19879a(valueOf, (String) null);
                        f18056f.put(valueOf, fVar2);
                    }
                    str2 = fVar2.m20191a();
                }
            }
            C7606h5.C7608b a = m19724a(str2);
            if (a != null) {
                return m19727a(m19723a(a.m20109l(), m19722b(this.f18060a)), a.m20108m(), a.m20107n());
            }
            return true;
        }
        if (str == null || str.isEmpty()) {
            str = i >= 0 ? String.valueOf(i) : null;
        }
        if (str == null) {
            return true;
        }
        if (this.f18060a == null) {
            list = Collections.emptyList();
        } else {
            AbstractC7581f<C7606h5> fVar3 = f18055e.get(str);
            AbstractC7581f<C7606h5> fVar4 = fVar3;
            if (fVar3 == null) {
                fVar4 = f18053c.m19880a(str, C7606h5.m20120k(), C7719w5.f18072a);
                AbstractC7581f<C7606h5> putIfAbsent = f18055e.putIfAbsent(str, fVar4);
                if (putIfAbsent != null) {
                    fVar4 = putIfAbsent;
                }
            }
            list = fVar4.m20191a().m20121j();
        }
        for (C7606h5.C7608b bVar : list) {
            if (!bVar.m20110k() || bVar.m20111j() == 0 || bVar.m20111j() == i2) {
                if (!m19727a(m19723a(bVar.m20109l(), m19722b(this.f18060a)), bVar.m20108m(), bVar.m20107n())) {
                    return false;
                }
            }
        }
        return true;
    }
}
