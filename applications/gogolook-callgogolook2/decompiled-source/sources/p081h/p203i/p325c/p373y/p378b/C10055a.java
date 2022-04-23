package p081h.p203i.p325c.p373y.p378b;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
/* renamed from: h.i.c.y.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/b/a.class */
public class C10055a extends C10051e {

    /* renamed from: h.i.c.y.b.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/y/b/a$a.class */
    public static class C10056a {

        /* renamed from: a */
        public final String f22752a;

        public C10056a(@NonNull String str) {
            this.f22752a = str;
        }

        @NonNull
        /* renamed from: a */
        public C10055a m13520a() {
            C7021t.m21285a(!TextUtils.isEmpty(this.f22752a), "Cloud model name cannot be empty");
            return new C10055a(this.f22752a);
        }
    }

    public C10055a(@Nullable String str) {
        super(str, null);
    }
}
