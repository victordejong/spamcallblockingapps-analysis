package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.AbstractC0365a;
import com.facebook.share.model.ShareHashtag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareContent.class */
public abstract class ShareContent<P extends ShareContent, E extends AbstractC0365a> implements Object {

    /* renamed from: a */
    public final Uri f2616a;

    /* renamed from: b */
    public final List<String> f2617b;

    /* renamed from: c */
    public final String f2618c;

    /* renamed from: d */
    public final String f2619d;

    /* renamed from: f */
    public final String f2620f;

    /* renamed from: g */
    public final ShareHashtag f2621g;

    /* renamed from: com.facebook.share.model.ShareContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareContent$a.class */
    public static abstract class AbstractC0365a<P extends ShareContent, E extends AbstractC0365a> {

        /* renamed from: a */
        public Uri f2622a;

        /* renamed from: b */
        public List<String> f2623b;

        /* renamed from: c */
        public String f2624c;

        /* renamed from: d */
        public String f2625d;

        /* renamed from: e */
        public String f2626e;

        /* renamed from: f */
        public ShareHashtag f2627f;

        /* renamed from: g */
        public E m4950g(P p) {
            if (p == null) {
                return this;
            }
            m4949h(p.m4963a());
            m4947j(p.m4961c());
            m4946k(p.m4960d());
            m4948i(p.m4962b());
            m4945l(p.m4959e());
            m4944m(p.m4958f());
            return this;
        }

        /* renamed from: h */
        public E m4949h(Uri uri) {
            this.f2622a = uri;
            return this;
        }

        /* renamed from: i */
        public E m4948i(String str) {
            this.f2625d = str;
            return this;
        }

        /* renamed from: j */
        public E m4947j(List<String> list) {
            this.f2623b = list == null ? null : Collections.unmodifiableList(list);
            return this;
        }

        /* renamed from: k */
        public E m4946k(String str) {
            this.f2624c = str;
            return this;
        }

        /* renamed from: l */
        public E m4945l(String str) {
            this.f2626e = str;
            return this;
        }

        /* renamed from: m */
        public E m4944m(ShareHashtag shareHashtag) {
            this.f2627f = shareHashtag;
            return this;
        }
    }

    public ShareContent(Parcel parcel) {
        this.f2616a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f2617b = m4957g(parcel);
        this.f2618c = parcel.readString();
        this.f2619d = parcel.readString();
        this.f2620f = parcel.readString();
        ShareHashtag.C0367b c0367b = new ShareHashtag.C0367b();
        c0367b.m4938c(parcel);
        this.f2621g = c0367b.m4939b();
    }

    public ShareContent(AbstractC0365a abstractC0365a) {
        this.f2616a = abstractC0365a.f2622a;
        this.f2617b = abstractC0365a.f2623b;
        this.f2618c = abstractC0365a.f2624c;
        this.f2619d = abstractC0365a.f2625d;
        this.f2620f = abstractC0365a.f2626e;
        this.f2621g = abstractC0365a.f2627f;
    }

    /* renamed from: a */
    public Uri m4963a() {
        return this.f2616a;
    }

    /* renamed from: b */
    public String m4962b() {
        return this.f2619d;
    }

    /* renamed from: c */
    public List<String> m4961c() {
        return this.f2617b;
    }

    /* renamed from: d */
    public String m4960d() {
        return this.f2618c;
    }

    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4959e() {
        return this.f2620f;
    }

    /* renamed from: f */
    public ShareHashtag m4958f() {
        return this.f2621g;
    }

    /* renamed from: g */
    public final List<String> m4957g(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        return arrayList.size() == 0 ? null : Collections.unmodifiableList(arrayList);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2616a, 0);
        parcel.writeStringList(this.f2617b);
        parcel.writeString(this.f2618c);
        parcel.writeString(this.f2619d);
        parcel.writeString(this.f2620f);
        parcel.writeParcelable(this.f2621g, 0);
    }
}
