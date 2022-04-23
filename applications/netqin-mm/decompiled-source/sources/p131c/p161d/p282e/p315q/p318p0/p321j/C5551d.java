package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.widget.ImageView;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
/* renamed from: c.d.e.q.p0.j.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/d.class */
public class C5551d {

    /* renamed from: a */
    public final Picasso f18522a;

    /* renamed from: c.d.e.q.p0.j.d$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/d$a.class */
    public static class C5552a {

        /* renamed from: a */
        public final RequestCreator f18523a;

        public C5552a(RequestCreator requestCreator) {
            this.f18523a = requestCreator;
        }

        /* renamed from: a */
        public C5552a m23573a(int i) {
            this.f18523a.placeholder(i);
            return this;
        }

        /* renamed from: a */
        public C5552a m23571a(Class cls) {
            this.f18523a.tag(cls);
            return this;
        }

        /* renamed from: a */
        public void m23572a(ImageView imageView, Callback callback) {
            this.f18523a.into(imageView, callback);
        }
    }

    public C5551d(Picasso picasso) {
        this.f18522a = picasso;
    }

    /* renamed from: a */
    public C5552a m23574a(String str) {
        return new C5552a(this.f18522a.load(str));
    }

    /* renamed from: a */
    public void m23575a(Class cls) {
        this.f18522a.cancelTag(cls);
    }
}
