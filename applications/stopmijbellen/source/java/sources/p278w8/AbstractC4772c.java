package p278w8;

import android.database.DatabaseUtils;
import android.support.p012v4.media.C0082b;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.Objects;
import p235s8.AbstractC4332g;
import p245t8.C4429a;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
import p267v8.C4658d;
/* renamed from: w8.c */
/* loaded from: classes2-dex2jar.jar:w8/c.class */
public abstract class AbstractC4772c implements AbstractC4787n {

    /* renamed from: a */
    public String f14685a = "";

    /* renamed from: b */
    public Object f14686b;

    /* renamed from: c */
    public C4779j f14687c;

    /* renamed from: d */
    public String f14688d;

    /* renamed from: e */
    public boolean f14689e;

    public AbstractC4772c(C4779j c4779j) {
        this.f14687c = c4779j;
    }

    /* renamed from: i */
    public static String m483i(Object obj, boolean z, boolean z2) {
        String str;
        byte[] bArr;
        if (obj == null) {
            return "NULL";
        }
        Object obj2 = obj;
        if (z2) {
            Class<?> cls = obj.getClass();
            FlowManager.m3912a();
            AbstractC4332g typeConverterForClass = FlowManager.f7675b.getTypeConverterForClass(cls);
            obj2 = obj;
            if (typeConverterForClass != null) {
                obj2 = typeConverterForClass.mo1095a(obj);
            }
        }
        if (obj2 instanceof Number) {
            str = String.valueOf(obj2);
        } else if (obj2 instanceof Enum) {
            str = DatabaseUtils.sqlEscapeString(((Enum) obj2).name());
        } else {
            if (z && (obj2 instanceof AbstractC4771b)) {
                str = String.format("(%1s)", ((AbstractC4771b) obj2).mo238b().trim());
            } else if (obj2 instanceof C4779j) {
                str = ((C4779j) obj2).mo238b();
            } else if (obj2 instanceof AbstractC4787n) {
                C4655b c4655b = new C4655b();
                ((AbstractC4787n) obj2).mo465c(c4655b);
                str = c4655b.mo238b();
            } else if (obj2 instanceof AbstractC4654a) {
                str = ((AbstractC4654a) obj2).mo238b();
            } else {
                boolean z3 = obj2 instanceof C4429a;
                if (z3 || (obj2 instanceof byte[])) {
                    if (z3) {
                        Objects.requireNonNull((C4429a) obj2);
                        bArr = null;
                    } else {
                        bArr = (byte[]) obj2;
                    }
                    StringBuilder m8752j = C0082b.m8752j("X");
                    char[] cArr = C4658d.f14356a;
                    char[] cArr2 = new char[bArr.length * 2];
                    for (int i = 0; i < bArr.length; i++) {
                        int i2 = bArr[i] & 255;
                        int i3 = i * 2;
                        char[] cArr3 = C4658d.f14356a;
                        cArr2[i3] = cArr3[i2 >>> 4];
                        cArr2[i3 + 1] = cArr3[i2 & 15];
                    }
                    m8752j.append(DatabaseUtils.sqlEscapeString(new String(cArr2)));
                    str = m8752j.toString();
                } else {
                    String valueOf = String.valueOf(obj2);
                    str = valueOf;
                    if (!valueOf.equals("?")) {
                        str = DatabaseUtils.sqlEscapeString(valueOf);
                    }
                }
            }
        }
        return str;
    }

    @Override // p278w8.AbstractC4787n
    /* renamed from: a */
    public String mo466a() {
        return this.f14687c.mo238b();
    }

    @Override // p278w8.AbstractC4787n
    /* renamed from: d */
    public AbstractC4787n mo464d(String str) {
        this.f14688d = str;
        return this;
    }

    @Override // p278w8.AbstractC4787n
    /* renamed from: e */
    public String mo463e() {
        return this.f14688d;
    }

    @Override // p278w8.AbstractC4787n
    /* renamed from: g */
    public boolean mo462g() {
        String str = this.f14688d;
        return str != null && str.length() > 0;
    }

    /* renamed from: h */
    public String mo470h(Object obj, boolean z) {
        return m483i(obj, z, true);
    }

    @Override // p278w8.AbstractC4787n
    public Object value() {
        return this.f14686b;
    }
}
