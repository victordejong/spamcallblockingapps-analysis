package p081h.p203i.p325c.p373y.p374a.p377c;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.EnumMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.c.y.a.c.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/c/e.class */
public class C10051e {

    /* renamed from: d */
    public static final Map<EnumC10044a, String> f22745d = new EnumMap(EnumC10044a.class);
    @VisibleForTesting

    /* renamed from: e */
    public static final Map<EnumC10044a, String> f22746e;
    @Nullable

    /* renamed from: a */
    public final String f22747a;
    @Nullable

    /* renamed from: b */
    public final EnumC10044a f22748b;

    /* renamed from: c */
    public String f22749c;

    static {
        EnumMap enumMap = new EnumMap(EnumC10044a.class);
        f22746e = enumMap;
        enumMap.put((EnumMap) EnumC10044a.FACE_DETECTION, (EnumC10044a) "face_detector_model_m41");
        f22746e.put(EnumC10044a.SMART_REPLY, "smart_reply_model_m41");
        f22746e.put(EnumC10044a.TRANSLATE, "translate_model_m41");
        f22745d.put(EnumC10044a.FACE_DETECTION, "modelHash");
        f22745d.put(EnumC10044a.SMART_REPLY, "smart_reply_model_hash");
        f22745d.put(EnumC10044a.TRANSLATE, "modelHash");
    }

    public C10051e(@Nullable String str, @Nullable EnumC10044a aVar) {
        boolean z = true;
        if (TextUtils.isEmpty(str) != (aVar != null)) {
            z = false;
        }
        C7021t.m21285a(z, "One of cloud model name and base model cannot be empty");
        this.f22747a = str;
        this.f22748b = aVar;
    }

    /* renamed from: a */
    public String m13527a() {
        return this.f22749c;
    }

    /* renamed from: a */
    public boolean m13526a(@NonNull String str) {
        EnumC10044a aVar = this.f22748b;
        if (aVar == null) {
            return false;
        }
        return str.equals(f22745d.get(aVar));
    }

    @Nullable
    /* renamed from: b */
    public String m13525b() {
        return this.f22747a;
    }

    /* renamed from: b */
    public void m13524b(@NonNull String str) {
        this.f22749c = str;
    }

    /* renamed from: c */
    public String m13523c() {
        String str = this.f22747a;
        return str != null ? str : f22746e.get(this.f22748b);
    }

    /* renamed from: d */
    public String m13522d() {
        String str = this.f22747a;
        if (str != null) {
            return str;
        }
        String valueOf = String.valueOf(f22746e.get(this.f22748b));
        return valueOf.length() != 0 ? "COM.GOOGLE.BASE_".concat(valueOf) : new String("COM.GOOGLE.BASE_");
    }

    /* renamed from: e */
    public boolean m13521e() {
        return this.f22748b != null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10051e)) {
            return false;
        }
        C10051e eVar = (C10051e) obj;
        return C7018s.m21297a(this.f22747a, eVar.f22747a) && C7018s.m21297a(this.f22748b, eVar.f22748b);
    }

    public int hashCode() {
        return C7018s.m21296a(this.f22747a, this.f22748b);
    }
}
