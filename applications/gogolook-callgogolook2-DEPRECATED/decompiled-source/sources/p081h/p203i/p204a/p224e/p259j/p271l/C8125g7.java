package p081h.p203i.p204a.p224e.p259j.p271l;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.UUID;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10018e;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.EnumC10040w;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
/* renamed from: h.i.a.e.j.l.g7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/g7.class */
public class C8125g7 {

    /* renamed from: c */
    public static final C6999k f18847c = new C6999k("SharedPrefManager", "");

    /* renamed from: d */
    public static final C9480d<?> f18848d;

    /* renamed from: a */
    public final Context f18849a;

    /* renamed from: b */
    public final String f18850b;

    static {
        C9480d.C9482b a = C9480d.m15099a(C8125g7.class);
        a.m15082a(C9498n.m15046c(C8386u6.class));
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15083a(C8105f7.f18841a);
        f18848d = a.m15080b();
    }

    public C8125g7(@NonNull C8386u6 u6Var, @NonNull Context context) {
        this.f18849a = context;
        this.f18850b = u6Var.m18149b();
    }

    /* renamed from: a */
    public static C8125g7 m18518a(@NonNull C8386u6 u6Var) {
        return (C8125g7) u6Var.m18150a(C8125g7.class);
    }

    /* renamed from: a */
    public static final /* synthetic */ C8125g7 m18517a(AbstractC9483e eVar) {
        return new C8125g7((C8386u6) eVar.mo15033a(C8386u6.class), (Context) eVar.mo15033a(Context.class));
    }

    /* renamed from: b */
    public static EnumC10040w m18509b(String str) {
        if (str == null) {
            return EnumC10040w.UNKNOWN;
        }
        try {
            return EnumC10040w.m13545a(str);
        } catch (IllegalArgumentException e) {
            C6999k kVar = f18847c;
            String valueOf = String.valueOf(str);
            kVar.m21337b("SharedPrefManager", valueOf.length() != 0 ? "Invalid model type ".concat(valueOf) : new String("Invalid model type "));
            return EnumC10040w.UNKNOWN;
        }
    }

    /* renamed from: a */
    public final SharedPreferences m18520a() {
        return this.f18849a.getSharedPreferences("com.google.firebase.ml.internal", 0);
    }

    /* renamed from: a */
    public final EnumC10040w m18512a(@NonNull String str) {
        EnumC10040w b;
        synchronized (this) {
            b = m18509b(m18520a().getString(String.format("downloading_model_type_%s", str), ""));
        }
        return b;
    }

    @Nullable
    /* renamed from: a */
    public final Long m18516a(@NonNull C10051e eVar) {
        synchronized (this) {
            long j = m18520a().getLong(String.format("downloading_model_id_%s_%s", this.f18850b, eVar.m13522d()), -1L);
            if (j < 0) {
                return null;
            }
            return Long.valueOf(j);
        }
    }

    /* renamed from: a */
    public final void m18519a(long j, @NonNull C10018e eVar) {
        synchronized (this) {
            String b = eVar.m13613b();
            String a = eVar.m13615a();
            m18520a().edit().putString(String.format("downloading_model_hash_%s_%s", this.f18850b, b), a).putLong(String.format("downloading_model_id_%s_%s", this.f18850b, b), j).putString(String.format("downloading_model_type_%s", a), eVar.m13611c().name()).putLong(String.format("downloading_begin_time_%s_%s", this.f18850b, b), SystemClock.elapsedRealtime()).apply();
        }
    }

    /* renamed from: a */
    public final void m18515a(@NonNull C10051e eVar, long j) {
        synchronized (this) {
            m18520a().edit().putLong(String.format("model_first_use_time_%s_%s", this.f18850b, eVar.m13522d()), j).apply();
        }
    }

    /* renamed from: a */
    public final void m18514a(@NonNull C10051e eVar, @NonNull String str, @NonNull EnumC10040w wVar) {
        synchronized (this) {
            m18520a().edit().putString(String.format("current_model_hash_%s_%s", this.f18850b, eVar.m13522d()), str).putString(String.format("current_model_type_%s_%s", this.f18850b, eVar.m13522d()), wVar.name()).apply();
        }
    }

    /* renamed from: a */
    public final void m18513a(@NonNull C10051e eVar, @NonNull String str, @NonNull String str2) {
        synchronized (this) {
            m18520a().edit().putString(String.format("bad_hash_%s_%s", this.f18850b, eVar.m13522d()), str).putString("app_version", str2).apply();
        }
    }

    @Nullable
    /* renamed from: b */
    public final String m18510b(@NonNull C10051e eVar) {
        String string;
        synchronized (this) {
            string = m18520a().getString(String.format("downloading_model_hash_%s_%s", this.f18850b, eVar.m13522d()), null);
        }
        return string;
    }

    /* renamed from: b */
    public final boolean m18511b() {
        boolean z;
        synchronized (this) {
            z = m18520a().getBoolean(String.format("logging_%s_%s", "vision", this.f18850b), true);
        }
        return z;
    }

    @Nullable
    /* renamed from: c */
    public final String m18507c(@NonNull C10051e eVar) {
        String string;
        synchronized (this) {
            string = m18520a().getString(String.format("current_model_hash_%s_%s", this.f18850b, eVar.m13522d()), null);
        }
        return string;
    }

    /* renamed from: c */
    public final boolean m18508c() {
        boolean z;
        synchronized (this) {
            z = m18520a().getBoolean(String.format("logging_%s_%s", "model", this.f18850b), true);
        }
        return z;
    }

    /* renamed from: d */
    public final EnumC10040w m18505d(@NonNull C10051e eVar) {
        EnumC10040w b;
        synchronized (this) {
            b = m18509b(m18520a().getString(String.format("current_model_type_%s_%s", this.f18850b, eVar.m13522d()), EnumC10040w.UNKNOWN.name()));
        }
        return b;
    }

    @Nullable
    /* renamed from: d */
    public final String m18506d() {
        String string;
        synchronized (this) {
            string = m18520a().getString("app_version", null);
        }
        return string;
    }

    /* renamed from: e */
    public final String m18504e() {
        synchronized (this) {
            String string = m18520a().getString("ml_sdk_instance_id", null);
            if (string != null) {
                return string;
            }
            String uuid = UUID.randomUUID().toString();
            m18520a().edit().putString("ml_sdk_instance_id", uuid).apply();
            return uuid;
        }
    }

    @Nullable
    /* renamed from: e */
    public final String m18503e(@NonNull C10051e eVar) {
        String string;
        synchronized (this) {
            string = m18520a().getString(String.format("bad_hash_%s_%s", this.f18850b, eVar.m13522d()), null);
        }
        return string;
    }

    /* renamed from: f */
    public final long m18502f(@NonNull C10051e eVar) {
        long j;
        synchronized (this) {
            j = m18520a().getLong(String.format("downloading_begin_time_%s_%s", this.f18850b, eVar.m13522d()), 0L);
        }
        return j;
    }

    /* renamed from: g */
    public final long m18501g(@NonNull C10051e eVar) {
        long j;
        synchronized (this) {
            j = m18520a().getLong(String.format("model_first_use_time_%s_%s", this.f18850b, eVar.m13522d()), 0L);
        }
        return j;
    }

    /* renamed from: h */
    public final void m18500h(@NonNull C10051e eVar) {
        synchronized (this) {
            m18520a().edit().remove(String.format("downloading_model_id_%s_%s", this.f18850b, eVar.m13522d())).remove(String.format("downloading_model_hash_%s_%s", this.f18850b, eVar.m13522d())).remove(String.format("downloading_model_type_%s", m18510b(eVar))).remove(String.format("downloading_begin_time_%s_%s", this.f18850b, eVar.m13522d())).remove(String.format("model_first_use_time_%s_%s", this.f18850b, eVar.m13522d())).apply();
        }
    }

    @WorkerThread
    /* renamed from: i */
    public final void m18499i(@NonNull C10051e eVar) {
        synchronized (this) {
            m18520a().edit().remove(String.format("current_model_hash_%s_%s", this.f18850b, eVar.m13522d())).remove(String.format("current_model_type_%s_%s", this.f18850b, eVar.m13522d())).commit();
        }
    }
}
