package p081h.p203i.p325c.p373y.p374a.p377c;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.c.y.a.c.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/c/b.class */
public class C10045b {

    /* renamed from: a */
    public final String f22730a;

    /* renamed from: b */
    public final String f22731b;

    /* renamed from: c */
    public final String f22732c;

    /* renamed from: h.i.c.y.a.c.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/y/a/c/b$a.class */
    public static class C10046a {

        /* renamed from: a */
        public final String f22733a;

        /* renamed from: b */
        public String f22734b = null;

        /* renamed from: c */
        public String f22735c = null;

        public C10046a(@NonNull String str) {
            C7021t.m21287a(str, (Object) "Model name can not be empty");
            this.f22733a = str;
        }

        @NonNull
        /* renamed from: a */
        public C10046a m13540a(@NonNull String str) {
            C7021t.m21287a(str, (Object) "Model Source file path can not be empty");
            C7021t.m21285a(this.f22735c == null, "A local model source is either from local file or for asset, you can not set both.");
            this.f22734b = str;
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C10045b m13541a() {
            C7021t.m21285a((this.f22734b != null && this.f22735c == null) || (this.f22734b == null && this.f22735c != null), "Set either filePath or assetFilePath.");
            return new C10045b(this.f22733a, this.f22734b, this.f22735c);
        }
    }

    public C10045b(@NonNull String str, @Nullable String str2, @Nullable String str3) {
        this.f22730a = str;
        this.f22731b = str2;
        this.f22732c = str3;
    }

    @Nullable
    /* renamed from: a */
    public String m13543a() {
        return this.f22732c;
    }

    @Nullable
    /* renamed from: b */
    public String m13542b() {
        return this.f22731b;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10045b)) {
            return false;
        }
        C10045b bVar = (C10045b) obj;
        return C7018s.m21297a(this.f22730a, bVar.f22730a) && C7018s.m21297a(this.f22731b, bVar.f22731b) && C7018s.m21297a(this.f22732c, bVar.f22732c);
    }

    public int hashCode() {
        return C7018s.m21296a(this.f22730a, this.f22731b, this.f22732c);
    }
}
