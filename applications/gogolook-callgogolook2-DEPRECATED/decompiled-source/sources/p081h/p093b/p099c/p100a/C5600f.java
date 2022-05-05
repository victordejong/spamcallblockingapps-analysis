package p081h.p093b.p099c.p100a;

import android.content.res.Resources;
import android.net.Uri;
import android.provider.ContactsContract;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
/* renamed from: h.b.c.a.f */
/* loaded from: classes-dex2jar.jar:h/b/c/a/f.class */
public class C5600f {

    /* renamed from: a */
    public static final AbstractC5603c f13993a = new C5601a(new String[]{CacheIndexRealmObject.DISPLAY_NAME, "data1", "data2", "data3", "contact_id", "_id", "photo_thumb_uri", "display_name_source", "lookup", "mimetype"}, ContactsContract.CommonDataKinds.Phone.CONTENT_FILTER_URI, ContactsContract.CommonDataKinds.Phone.CONTENT_URI);

    /* renamed from: b */
    public static final AbstractC5603c f13994b = new C5602b(new String[]{CacheIndexRealmObject.DISPLAY_NAME, "data1", "data2", "data3", "contact_id", "_id", "photo_thumb_uri", "display_name_source", "lookup", "mimetype"}, ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI, ContactsContract.CommonDataKinds.Email.CONTENT_URI);

    /* renamed from: h.b.c.a.f$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/f$a.class */
    public static final class C5601a extends AbstractC5603c {
        public C5601a(String[] strArr, Uri uri, Uri uri2) {
            super(strArr, uri, uri2);
        }

        @Override // p081h.p093b.p099c.p100a.C5600f.AbstractC5603c
        /* renamed from: a */
        public CharSequence mo25055a(Resources resources, int i, CharSequence charSequence) {
            return ContactsContract.CommonDataKinds.Phone.getTypeLabel(resources, i, charSequence);
        }
    }

    /* renamed from: h.b.c.a.f$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/f$b.class */
    public static final class C5602b extends AbstractC5603c {
        public C5602b(String[] strArr, Uri uri, Uri uri2) {
            super(strArr, uri, uri2);
        }

        @Override // p081h.p093b.p099c.p100a.C5600f.AbstractC5603c
        /* renamed from: a */
        public CharSequence mo25055a(Resources resources, int i, CharSequence charSequence) {
            return ContactsContract.CommonDataKinds.Email.getTypeLabel(resources, i, charSequence);
        }
    }

    /* renamed from: h.b.c.a.f$c */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/f$c.class */
    public static abstract class AbstractC5603c {

        /* renamed from: a */
        public final String[] f13995a;

        /* renamed from: b */
        public final Uri f13996b;

        /* renamed from: c */
        public final Uri f13997c;

        public AbstractC5603c(String[] strArr, Uri uri, Uri uri2) {
            this.f13995a = strArr;
            this.f13996b = uri;
            this.f13997c = uri2;
        }

        /* renamed from: a */
        public Uri m25056a() {
            return this.f13996b;
        }

        /* renamed from: a */
        public abstract CharSequence mo25055a(Resources resources, int i, CharSequence charSequence);

        /* renamed from: b */
        public Uri m25054b() {
            return this.f13997c;
        }

        /* renamed from: c */
        public String[] m25053c() {
            return this.f13995a;
        }
    }
}
