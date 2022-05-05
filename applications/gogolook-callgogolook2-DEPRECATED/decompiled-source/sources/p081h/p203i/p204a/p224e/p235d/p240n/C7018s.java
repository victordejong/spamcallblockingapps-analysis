package p081h.p203i.p204a.p224e.p235d.p240n;

import androidx.annotation.Nullable;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: h.i.a.e.d.n.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/s.class */
public final class C7018s {

    /* renamed from: h.i.a.e.d.n.s$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/s$a.class */
    public static final class C7019a {

        /* renamed from: a */
        public final List<String> f17160a;

        /* renamed from: b */
        public final Object f17161b;

        public C7019a(Object obj) {
            C7021t.m21290a(obj);
            this.f17161b = obj;
            this.f17160a = new ArrayList();
        }

        /* renamed from: a */
        public final C7019a m21295a(String str, @Nullable Object obj) {
            List<String> list = this.f17160a;
            C7021t.m21290a(str);
            String str2 = str;
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length());
            sb.append(str2);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f17161b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f17160a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f17160a.get(i));
                if (i < size - 1) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static int m21296a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static C7019a m21298a(Object obj) {
        return new C7019a(obj);
    }

    /* renamed from: a */
    public static boolean m21297a(@Nullable Object obj, @Nullable Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
