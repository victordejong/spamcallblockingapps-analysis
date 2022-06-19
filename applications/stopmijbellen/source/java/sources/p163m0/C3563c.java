package p163m0;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.view.ContentInfo;
import java.util.Locale;
import java.util.Objects;
/* renamed from: m0.c */
/* loaded from: classes-dex2jar.jar:m0/c.class */
public final class C3563c {

    /* renamed from: a */
    public final AbstractC3568e f11750a;

    /* renamed from: m0.c$a */
    /* loaded from: classes-dex2jar.jar:m0/c$a.class */
    public static final class C3564a implements AbstractC3565b {

        /* renamed from: a */
        public final ContentInfo.Builder f11751a;

        public C3564a(ClipData clipData, int i) {
            this.f11751a = new ContentInfo.Builder(clipData, i);
        }

        @Override // p163m0.C3563c.AbstractC3565b
        /* renamed from: a */
        public void mo2149a(Uri uri) {
            this.f11751a.setLinkUri(uri);
        }

        @Override // p163m0.C3563c.AbstractC3565b
        /* renamed from: b */
        public void mo2148b(int i) {
            this.f11751a.setFlags(i);
        }

        @Override // p163m0.C3563c.AbstractC3565b
        public C3563c build() {
            return new C3563c(new C3567d(this.f11751a.build()));
        }

        @Override // p163m0.C3563c.AbstractC3565b
        public void setExtras(Bundle bundle) {
            this.f11751a.setExtras(bundle);
        }
    }

    /* renamed from: m0.c$b */
    /* loaded from: classes-dex2jar.jar:m0/c$b.class */
    public interface AbstractC3565b {
        /* renamed from: a */
        void mo2149a(Uri uri);

        /* renamed from: b */
        void mo2148b(int i);

        C3563c build();

        void setExtras(Bundle bundle);
    }

    /* renamed from: m0.c$c */
    /* loaded from: classes-dex2jar.jar:m0/c$c.class */
    public static final class C3566c implements AbstractC3565b {

        /* renamed from: a */
        public ClipData f11752a;

        /* renamed from: b */
        public int f11753b;

        /* renamed from: c */
        public int f11754c;

        /* renamed from: d */
        public Uri f11755d;

        /* renamed from: e */
        public Bundle f11756e;

        public C3566c(ClipData clipData, int i) {
            this.f11752a = clipData;
            this.f11753b = i;
        }

        @Override // p163m0.C3563c.AbstractC3565b
        /* renamed from: a */
        public void mo2149a(Uri uri) {
            this.f11755d = uri;
        }

        @Override // p163m0.C3563c.AbstractC3565b
        /* renamed from: b */
        public void mo2148b(int i) {
            this.f11754c = i;
        }

        @Override // p163m0.C3563c.AbstractC3565b
        public C3563c build() {
            return new C3563c(new C3569f(this));
        }

        @Override // p163m0.C3563c.AbstractC3565b
        public void setExtras(Bundle bundle) {
            this.f11756e = bundle;
        }
    }

    /* renamed from: m0.c$d */
    /* loaded from: classes-dex2jar.jar:m0/c$d.class */
    public static final class C3567d implements AbstractC3568e {

        /* renamed from: a */
        public final ContentInfo f11757a;

        public C3567d(ContentInfo contentInfo) {
            Objects.requireNonNull(contentInfo);
            this.f11757a = contentInfo;
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: a */
        public int mo2147a() {
            return this.f11757a.getSource();
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: b */
        public ClipData mo2146b() {
            return this.f11757a.getClip();
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: c */
        public int mo2145c() {
            return this.f11757a.getFlags();
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: d */
        public ContentInfo mo2144d() {
            return this.f11757a;
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("ContentInfoCompat{");
            m8752j.append(this.f11757a);
            m8752j.append("}");
            return m8752j.toString();
        }
    }

    /* renamed from: m0.c$e */
    /* loaded from: classes-dex2jar.jar:m0/c$e.class */
    public interface AbstractC3568e {
        /* renamed from: a */
        int mo2147a();

        /* renamed from: b */
        ClipData mo2146b();

        /* renamed from: c */
        int mo2145c();

        /* renamed from: d */
        ContentInfo mo2144d();
    }

    /* renamed from: m0.c$f */
    /* loaded from: classes-dex2jar.jar:m0/c$f.class */
    public static final class C3569f implements AbstractC3568e {

        /* renamed from: a */
        public final ClipData f11758a;

        /* renamed from: b */
        public final int f11759b;

        /* renamed from: c */
        public final int f11760c;

        /* renamed from: d */
        public final Uri f11761d;

        /* renamed from: e */
        public final Bundle f11762e;

        public C3569f(C3566c c3566c) {
            ClipData clipData = c3566c.f11752a;
            Objects.requireNonNull(clipData);
            this.f11758a = clipData;
            int i = c3566c.f11753b;
            if (i >= 0) {
                if (i > 5) {
                    throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", "source", 0, 5));
                }
                this.f11759b = i;
                int i2 = c3566c.f11754c;
                if ((i2 & 1) == i2) {
                    this.f11760c = i2;
                    this.f11761d = c3566c.f11755d;
                    this.f11762e = c3566c.f11756e;
                    return;
                }
                StringBuilder m8752j = C0082b.m8752j("Requested flags 0x");
                m8752j.append(Integer.toHexString(i2));
                m8752j.append(", but only 0x");
                m8752j.append(Integer.toHexString(1));
                m8752j.append(" are allowed");
                throw new IllegalArgumentException(m8752j.toString());
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", "source", 0, 5));
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: a */
        public int mo2147a() {
            return this.f11759b;
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: b */
        public ClipData mo2146b() {
            return this.f11758a;
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: c */
        public int mo2145c() {
            return this.f11760c;
        }

        @Override // p163m0.C3563c.AbstractC3568e
        /* renamed from: d */
        public ContentInfo mo2144d() {
            return null;
        }

        public String toString() {
            String str;
            StringBuilder m8752j = C0082b.m8752j("ContentInfoCompat{clip=");
            m8752j.append(this.f11758a.getDescription());
            m8752j.append(", source=");
            int i = this.f11759b;
            m8752j.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
            m8752j.append(", flags=");
            int i2 = this.f11760c;
            m8752j.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
            if (this.f11761d == null) {
                str = "";
            } else {
                StringBuilder m8752j2 = C0082b.m8752j(", hasLinkUri(");
                m8752j2.append(this.f11761d.toString().length());
                m8752j2.append(")");
                str = m8752j2.toString();
            }
            m8752j.append(str);
            return C0082b.m8754h(m8752j, this.f11762e == null ? "" : ", hasExtras", "}");
        }
    }

    public C3563c(AbstractC3568e abstractC3568e) {
        this.f11750a = abstractC3568e;
    }

    public String toString() {
        return this.f11750a.toString();
    }
}
