package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import p459j.p460a.p474c0.p499h.C12223x;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.c.n */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/n.class */
public class C11539n extends C11527f {

    /* renamed from: j.a.c0.c.n$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/n$b.class */
    public static class C11541b extends C11520b {

        /* renamed from: m */
        public final Uri f25785m;

        /* renamed from: j.a.c0.c.n$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/c/n$b$a.class */
        public class C11542a extends AbstractC11545d {
            public C11542a(C11541b bVar) {
                super();
            }

            @Override // p459j.p460a.p474c0.p475c.C11539n.C11541b.AbstractC11545d
            /* renamed from: a */
            public Uri mo9201a() {
                return ContactsContract.Contacts.CONTENT_FREQUENT_URI;
            }
        }

        /* renamed from: j.a.c0.c.n$b$b */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/c/n$b$b.class */
        public class C11543b extends AbstractC11545d {
            public C11543b(C11541b bVar) {
                super();
            }

            @Override // p459j.p460a.p474c0.p475c.C11539n.C11541b.AbstractC11545d
            /* renamed from: a */
            public Uri mo9201a() {
                C14017g4.m2805s();
                return ContactsContract.Contacts.CONTENT_STREQUENT_URI.buildUpon().appendQueryParameter("strequent_phone_only", "true").build();
            }
        }

        /* renamed from: j.a.c0.c.n$b$c */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/c/n$b$c.class */
        public class C11544c extends AbstractC11545d {
            public C11544c() {
                super();
            }

            @Override // p459j.p460a.p474c0.p475c.C11539n.C11541b.AbstractC11545d
            /* renamed from: a */
            public Uri mo9201a() {
                return C11541b.this.f25785m;
            }
        }

        /* renamed from: j.a.c0.c.n$b$d */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/c/n$b$d.class */
        public abstract class AbstractC11545d implements C12223x.AbstractC12224a<Void, Cursor> {
            public AbstractC11545d() {
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public Cursor mo6715a(Void r4) throws Exception {
                Uri a = mo9201a();
                if (a != null) {
                    C11541b.this.m5198a(a);
                }
                return C11541b.super.mo5190d();
            }

            /* renamed from: a */
            public abstract Uri mo9201a();
        }

        public C11541b(String str, Context context, Uri uri, String[] strArr, String str2, String[] strArr2, String str3) {
            super(str, context, uri, strArr, str2, strArr2, str3);
            this.f25785m = uri;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p459j.p460a.p530k.C12829c, p459j.p460a.p530k.AbstractC12830d
        /* renamed from: d */
        public Cursor mo5190d() {
            C12223x b = C12223x.m6716b(new C11544c());
            if (!C14017g4.m2799y()) {
                b.m6718a((C12223x.AbstractC12224a) new C11542a());
            }
            b.m6718a((C12223x.AbstractC12224a) new C11543b());
            return (Cursor) b.m6717a((C12223x) null);
        }
    }

    public C11539n(Context context, String[] strArr, String str, String[] strArr2, String str2) {
        super(context, ContactsContract.Contacts.CONTENT_STREQUENT_URI, strArr, str, strArr2, str2);
    }

    @Override // p459j.p460a.p474c0.p475c.C11527f
    /* renamed from: a */
    public C11520b mo9204a(String str) {
        return new C11541b(str, this.f25753f, this.f25748a, this.f25749b, this.f25750c, this.f25751d, this.f25752e);
    }
}
