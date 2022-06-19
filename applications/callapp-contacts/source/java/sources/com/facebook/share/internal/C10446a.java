package com.facebook.share.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.p052i.p053a.C1179a;
import com.facebook.AbstractC10174d;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.C10193i;
import com.facebook.C10351j;
import com.facebook.EnumC10352k;
import com.facebook.EnumC10396m;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C10097m;
import com.facebook.internal.AbstractServiceConnectionC10206aa;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.C10203a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10229ah;
import com.facebook.internal.C10263c;
import com.facebook.internal.C10312r;
import com.facebook.internal.C10336x;
import com.facebook.internal.C10340z;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.share.widget.LikeView;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* renamed from: com.facebook.share.internal.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a.class */
public class C10446a {

    /* renamed from: c */
    private static final String f34155c = "a";

    /* renamed from: d */
    private static C10312r f34156d;

    /* renamed from: e */
    private static final ConcurrentHashMap<String, C10446a> f34157e = new ConcurrentHashMap<>();

    /* renamed from: f */
    private static C10229ah f34158f = new C10229ah(1);

    /* renamed from: g */
    private static C10229ah f34159g = new C10229ah(1);

    /* renamed from: h */
    private static Handler f34160h;

    /* renamed from: i */
    private static String f34161i;

    /* renamed from: j */
    private static boolean f34162j;

    /* renamed from: k */
    private static volatile int f34163k;

    /* renamed from: l */
    private static AbstractC10174d f34164l;

    /* renamed from: a */
    public boolean f34165a;

    /* renamed from: b */
    public boolean f34166b;

    /* renamed from: m */
    private String f34167m;

    /* renamed from: n */
    private LikeView.EnumC10509e f34168n;

    /* renamed from: o */
    private String f34169o;

    /* renamed from: p */
    private String f34170p;

    /* renamed from: q */
    private String f34171q;

    /* renamed from: r */
    private String f34172r;

    /* renamed from: s */
    private String f34173s;

    /* renamed from: t */
    private String f34174t;

    /* renamed from: u */
    private boolean f34175u;

    /* renamed from: v */
    private boolean f34176v;

    /* renamed from: w */
    private Bundle f34177w;

    /* renamed from: x */
    private C10097m f34178x;

    /* renamed from: com.facebook.share.internal.a$4 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$4.class */
    static final /* synthetic */ class C104554 {

        /* renamed from: a */
        static final /* synthetic */ int[] f34198a;

        static {
            int[] iArr = new int[LikeView.EnumC10509e.values().length];
            f34198a = iArr;
            try {
                iArr[LikeView.EnumC10509e.PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.facebook.share.internal.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$a.class */
    public abstract class AbstractC10461a implements AbstractC10475n {

        /* renamed from: a */
        protected String f34205a;

        /* renamed from: b */
        protected LikeView.EnumC10509e f34206b;

        /* renamed from: c */
        protected FacebookRequestError f34207c;

        /* renamed from: e */
        private GraphRequest f34209e;

        protected AbstractC10461a(String str, LikeView.EnumC10509e enumC10509e) {
            C10446a.this = r4;
            this.f34205a = str;
            this.f34206b = enumC10509e;
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10475n
        /* renamed from: a */
        public final FacebookRequestError mo22719a() {
            return this.f34207c;
        }

        /* renamed from: a */
        protected void mo22722a(FacebookRequestError facebookRequestError) {
            C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error running request for object '%s' with type '%s' : %s", this.f34205a, this.f34206b, facebookRequestError);
        }

        /* renamed from: a */
        protected final void m22726a(GraphRequest graphRequest) {
            this.f34209e = graphRequest;
            graphRequest.f33081g = C10181g.m23289j();
            graphRequest.m23798a(new GraphRequest.AbstractC9933b() { // from class: com.facebook.share.internal.a.a.1
                @Override // com.facebook.GraphRequest.AbstractC9933b
                /* renamed from: a */
                public final void mo22725a(C10351j c10351j) {
                    AbstractC10461a.this.f34207c = c10351j.f33960b;
                    if (AbstractC10461a.this.f34207c == null) {
                        AbstractC10461a.this.mo22721a(c10351j);
                        return;
                    }
                    AbstractC10461a abstractC10461a = AbstractC10461a.this;
                    abstractC10461a.mo22722a(abstractC10461a.f34207c);
                }
            });
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10475n
        /* renamed from: a */
        public final void mo22718a(C10193i c10193i) {
            c10193i.add(this.f34209e);
        }

        /* renamed from: a */
        protected abstract void mo22721a(C10351j c10351j);
    }

    /* renamed from: com.facebook.share.internal.a$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$b.class */
    public static final class RunnableC10463b implements Runnable {

        /* renamed from: a */
        private String f34211a;

        /* renamed from: b */
        private LikeView.EnumC10509e f34212b;

        /* renamed from: c */
        private AbstractC10464c f34213c;

        RunnableC10463b(String str, LikeView.EnumC10509e enumC10509e, AbstractC10464c abstractC10464c) {
            this.f34211a = str;
            this.f34212b = enumC10509e;
            this.f34213c = abstractC10464c;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                C10446a.m22756b(this.f34211a, this.f34212b, this.f34213c);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.internal.a$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$c.class */
    public interface AbstractC10464c {
        /* renamed from: a */
        void mo22680a(C10446a c10446a, FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.share.internal.a$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$d.class */
    public final class C10465d extends AbstractC10461a {

        /* renamed from: e */
        String f34214e;

        /* renamed from: f */
        String f34215f;

        /* renamed from: g */
        String f34216g;

        /* renamed from: h */
        String f34217h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10465d(String str, LikeView.EnumC10509e enumC10509e) {
            super(str, enumC10509e);
            C10446a.this = r9;
            this.f34214e = r9.f34169o;
            this.f34215f = r9.f34170p;
            this.f34216g = r9.f34171q;
            this.f34217h = r9.f34172r;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            bundle.putString("locale", Locale.getDefault().toString());
            m22726a(new GraphRequest(AccessToken.getCurrentAccessToken(), str, bundle, EnumC10352k.GET));
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22722a(FacebookRequestError facebookRequestError) {
            C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error fetching engagement for object '%s' with type '%s' : %s", this.f34205a, this.f34206b, facebookRequestError);
            C10446a.m22772a(C10446a.this, "get_engagement", facebookRequestError);
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22721a(C10351j c10351j) {
            JSONObject m23205b = C10213ae.m23205b(c10351j.f33959a, "engagement");
            if (m23205b != null) {
                this.f34214e = m23205b.optString("count_string_with_like", this.f34214e);
                this.f34215f = m23205b.optString("count_string_without_like", this.f34215f);
                this.f34216g = m23205b.optString("social_sentence_with_like", this.f34216g);
                this.f34217h = m23205b.optString("social_sentence_without_like", this.f34217h);
            }
        }
    }

    /* renamed from: com.facebook.share.internal.a$e */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$e.class */
    public final class C10466e extends AbstractC10461a {

        /* renamed from: e */
        String f34219e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10466e(String str, LikeView.EnumC10509e enumC10509e) {
            super(str, enumC10509e);
            C10446a.this = r9;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "og_object.fields(id)");
            bundle.putString("ids", str);
            m22726a(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, EnumC10352k.GET));
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22722a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorMessage().contains("og_object")) {
                this.f34207c = null;
            } else {
                C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error getting the FB id for object '%s' with type '%s' : %s", this.f34205a, this.f34206b, facebookRequestError);
            }
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22721a(C10351j c10351j) {
            JSONObject optJSONObject;
            JSONObject m23205b = C10213ae.m23205b(c10351j.f33959a, this.f34205a);
            if (m23205b == null || (optJSONObject = m23205b.optJSONObject("og_object")) == null) {
                return;
            }
            this.f34219e = optJSONObject.optString("id");
        }
    }

    /* renamed from: com.facebook.share.internal.a$f */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$f.class */
    final class C10467f extends AbstractC10461a implements AbstractC10470i {

        /* renamed from: f */
        private boolean f34222f;

        /* renamed from: g */
        private String f34223g;

        /* renamed from: h */
        private final String f34224h;

        /* renamed from: i */
        private final LikeView.EnumC10509e f34225i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10467f(String str, LikeView.EnumC10509e enumC10509e) {
            super(str, enumC10509e);
            C10446a.this = r9;
            this.f34222f = r9.f34165a;
            this.f34224h = str;
            this.f34225i = enumC10509e;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,application");
            bundle.putString("object", str);
            m22726a(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, EnumC10352k.GET));
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22722a(FacebookRequestError facebookRequestError) {
            C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error fetching like status for object '%s' with type '%s' : %s", this.f34224h, this.f34225i, facebookRequestError);
            C10446a.m22772a(C10446a.this, "get_og_object_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22721a(C10351j c10351j) {
            JSONArray m23199c = C10213ae.m23199c(c10351j.f33959a, "data");
            if (m23199c != null) {
                for (int i = 0; i < m23199c.length(); i++) {
                    JSONObject optJSONObject = m23199c.optJSONObject(i);
                    if (optJSONObject != null) {
                        this.f34222f = true;
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("application");
                        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                        if (optJSONObject2 != null && AccessToken.isCurrentAccessTokenActive() && C10213ae.m23233a(currentAccessToken.getApplicationId(), optJSONObject2.optString("id"))) {
                            this.f34223g = optJSONObject.optString("id");
                        }
                    }
                }
            }
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10470i
        /* renamed from: b */
        public final boolean mo22724b() {
            return this.f34222f;
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10470i
        /* renamed from: c */
        public final String mo22723c() {
            return this.f34223g;
        }
    }

    /* renamed from: com.facebook.share.internal.a$g */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$g.class */
    public final class C10468g extends AbstractC10461a {

        /* renamed from: e */
        String f34226e;

        /* renamed from: f */
        boolean f34227f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10468g(String str, LikeView.EnumC10509e enumC10509e) {
            super(str, enumC10509e);
            C10446a.this = r9;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            bundle.putString("ids", str);
            m22726a(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, EnumC10352k.GET));
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22722a(FacebookRequestError facebookRequestError) {
            C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error getting the FB id for object '%s' with type '%s' : %s", this.f34205a, this.f34206b, facebookRequestError);
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22721a(C10351j c10351j) {
            JSONObject m23205b = C10213ae.m23205b(c10351j.f33959a, this.f34205a);
            if (m23205b != null) {
                String optString = m23205b.optString("id");
                this.f34226e = optString;
                this.f34227f = !C10213ae.m23230a(optString);
            }
        }
    }

    /* renamed from: com.facebook.share.internal.a$h */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$h.class */
    final class C10469h extends AbstractC10461a implements AbstractC10470i {

        /* renamed from: f */
        private boolean f34230f;

        /* renamed from: g */
        private String f34231g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10469h(String str) {
            super(str, LikeView.EnumC10509e.PAGE);
            C10446a.this = r9;
            this.f34230f = r9.f34165a;
            this.f34231g = str;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            m22726a(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/likes/".concat(String.valueOf(str)), bundle, EnumC10352k.GET));
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22722a(FacebookRequestError facebookRequestError) {
            C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error fetching like status for page id '%s': %s", this.f34231g, facebookRequestError);
            C10446a.m22772a(C10446a.this, "get_page_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22721a(C10351j c10351j) {
            JSONArray m23199c = C10213ae.m23199c(c10351j.f33959a, "data");
            if (m23199c == null || m23199c.length() <= 0) {
                return;
            }
            this.f34230f = true;
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10470i
        /* renamed from: b */
        public final boolean mo22724b() {
            return this.f34230f;
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10470i
        /* renamed from: c */
        public final String mo22723c() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.share.internal.a$i */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$i.class */
    public interface AbstractC10470i extends AbstractC10475n {
        /* renamed from: b */
        boolean mo22724b();

        /* renamed from: c */
        String mo22723c();
    }

    /* renamed from: com.facebook.share.internal.a$j */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$j.class */
    public static final class RunnableC10471j implements Runnable {

        /* renamed from: a */
        private static ArrayList<String> f34232a = new ArrayList<>();

        /* renamed from: b */
        private String f34233b;

        /* renamed from: c */
        private boolean f34234c;

        RunnableC10471j(String str, boolean z) {
            this.f34233b = str;
            this.f34234c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                String str = this.f34233b;
                if (str != null) {
                    f34232a.remove(str);
                    f34232a.add(0, this.f34233b);
                }
                if (!this.f34234c || f34232a.size() < 128) {
                    return;
                }
                while (64 < f34232a.size()) {
                    ArrayList<String> arrayList = f34232a;
                    C10446a.f34157e.remove(arrayList.remove(arrayList.size() - 1));
                }
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.share.internal.a$k */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$k.class */
    public final class C10472k extends AbstractC10461a {

        /* renamed from: e */
        String f34235e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10472k(String str, LikeView.EnumC10509e enumC10509e) {
            super(str, enumC10509e);
            C10446a.this = r9;
            Bundle bundle = new Bundle();
            bundle.putString("object", str);
            m22726a(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, EnumC10352k.POST));
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22722a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorCode() == 3501) {
                this.f34207c = null;
                return;
            }
            C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error liking object '%s' with type '%s' : %s", this.f34205a, this.f34206b, facebookRequestError);
            C10446a.m22772a(C10446a.this, "publish_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22721a(C10351j c10351j) {
            this.f34235e = C10213ae.m23216a(c10351j.f33959a, "id");
        }
    }

    /* renamed from: com.facebook.share.internal.a$l */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$l.class */
    public final class C10473l extends AbstractC10461a {

        /* renamed from: f */
        private String f34238f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10473l(String str) {
            super(null, null);
            C10446a.this = r9;
            this.f34238f = str;
            m22726a(new GraphRequest(AccessToken.getCurrentAccessToken(), str, null, EnumC10352k.DELETE));
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22722a(FacebookRequestError facebookRequestError) {
            C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Error unliking object with unlike token '%s' : %s", this.f34238f, facebookRequestError);
            C10446a.m22772a(C10446a.this, "publish_unlike", facebookRequestError);
        }

        @Override // com.facebook.share.internal.C10446a.AbstractC10461a
        /* renamed from: a */
        protected final void mo22721a(C10351j c10351j) {
        }
    }

    /* renamed from: com.facebook.share.internal.a$m */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$m.class */
    public interface AbstractC10474m {
        /* renamed from: a */
        void mo22720a();
    }

    /* renamed from: com.facebook.share.internal.a$n */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$n.class */
    interface AbstractC10475n {
        /* renamed from: a */
        FacebookRequestError mo22719a();

        /* renamed from: a */
        void mo22718a(C10193i c10193i);
    }

    /* renamed from: com.facebook.share.internal.a$o */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$o.class */
    public static final class RunnableC10476o implements Runnable {

        /* renamed from: a */
        private String f34239a;

        /* renamed from: b */
        private String f34240b;

        RunnableC10476o(String str, String str2) {
            this.f34239a = str;
            this.f34240b = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                C10446a.m22766a(this.f34239a, this.f34240b);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    private C10446a(String str, LikeView.EnumC10509e enumC10509e) {
        this.f34167m = str;
        this.f34168n = enumC10509e;
    }

    /* renamed from: a */
    private static void m22780a(final AbstractC10464c abstractC10464c, final C10446a c10446a, final FacebookException facebookException) {
        if (abstractC10464c == null) {
            return;
        }
        f34160h.post(new Runnable() { // from class: com.facebook.share.internal.a.7
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    abstractC10464c.mo22680a(c10446a, facebookException);
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
    }

    /* renamed from: a */
    private void m22779a(final AbstractC10474m abstractC10474m) {
        if (!C10213ae.m23230a(this.f34174t)) {
            abstractC10474m.mo22720a();
            return;
        }
        final C10466e c10466e = new C10466e(this.f34167m, this.f34168n);
        final C10468g c10468g = new C10468g(this.f34167m, this.f34168n);
        C10193i c10193i = new C10193i();
        c10466e.mo22718a(c10193i);
        c10468g.mo22718a(c10193i);
        c10193i.m23271a(new C10193i.AbstractC10194a() { // from class: com.facebook.share.internal.a.3
            @Override // com.facebook.C10193i.AbstractC10194a
            /* renamed from: a */
            public final void mo22729a() {
                C10446a.this.f34174t = c10466e.f34219e;
                if (C10213ae.m23230a(C10446a.this.f34174t)) {
                    C10446a.this.f34174t = c10468g.f34226e;
                    C10446a.this.f34175u = c10468g.f34227f;
                }
                if (C10213ae.m23230a(C10446a.this.f34174t)) {
                    C10336x.m22992a(EnumC10396m.DEVELOPER_ERRORS, C10446a.f34155c, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", C10446a.this.f34167m);
                    C10446a.m22772a(C10446a.this, "get_verified_id", c10468g.mo22719a() != null ? c10468g.mo22719a() : c10466e.mo22719a());
                }
                AbstractC10474m abstractC10474m2 = abstractC10474m;
                if (abstractC10474m2 != null) {
                    abstractC10474m2.mo22720a();
                }
            }
        });
        GraphRequest.m23780b(c10193i);
    }

    /* renamed from: a */
    static /* synthetic */ void m22778a(C10446a c10446a) {
        if (AccessToken.isCurrentAccessTokenActive()) {
            c10446a.m22779a(new AbstractC10474m() { // from class: com.facebook.share.internal.a.12
                @Override // com.facebook.share.internal.C10446a.AbstractC10474m
                /* renamed from: a */
                public final void mo22720a() {
                    C10467f c10467f;
                    if (C104554.f34198a[C10446a.this.f34168n.ordinal()] != 1) {
                        C10446a c10446a2 = C10446a.this;
                        c10467f = new C10467f(c10446a2.f34174t, C10446a.this.f34168n);
                    } else {
                        C10446a c10446a3 = C10446a.this;
                        c10467f = new C10469h(c10446a3.f34174t);
                    }
                    C10446a c10446a4 = C10446a.this;
                    final C10465d c10465d = new C10465d(c10446a4.f34174t, C10446a.this.f34168n);
                    C10193i c10193i = new C10193i();
                    c10467f.mo22718a(c10193i);
                    c10465d.mo22718a(c10193i);
                    final AbstractC10470i abstractC10470i = c10467f;
                    c10193i.m23271a(new C10193i.AbstractC10194a() { // from class: com.facebook.share.internal.a.12.1
                        @Override // com.facebook.C10193i.AbstractC10194a
                        /* renamed from: a */
                        public final void mo22729a() {
                            if (abstractC10470i.mo22719a() == null && c10465d.mo22719a() == null) {
                                C10446a.this.m22763a(abstractC10470i.mo22724b(), c10465d.f34214e, c10465d.f34215f, c10465d.f34216g, c10465d.f34217h, abstractC10470i.mo22723c());
                            } else {
                                C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Unable to refresh like state for id: '%s'", C10446a.this.f34167m);
                            }
                        }
                    });
                    GraphRequest.m23780b(c10193i);
                }
            });
            return;
        }
        C10478c c10478c = new C10478c(C10181g.m23290i(), C10181g.m23286m(), c10446a.f34167m);
        if (!c10478c.m23262a()) {
            return;
        }
        c10478c.f33643b = new AbstractServiceConnectionC10206aa.AbstractC10208a() { // from class: com.facebook.share.internal.a.2
            @Override // com.facebook.internal.AbstractServiceConnectionC10206aa.AbstractC10208a
            /* renamed from: a */
            public final void mo22730a(Bundle bundle) {
                if (bundle == null || !bundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED")) {
                    return;
                }
                C10446a.this.m22763a(bundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED"), bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") ? bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") : C10446a.this.f34169o, bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") ? bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") : C10446a.this.f34170p, bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") ? bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") : C10446a.this.f34171q, bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") ? bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") : C10446a.this.f34172r, bundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN") ? bundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN") : C10446a.this.f34173s);
            }
        };
    }

    /* renamed from: a */
    static /* synthetic */ void m22777a(C10446a c10446a, int i, int i2, Intent intent) {
        final Bundle bundle = c10446a.f34177w;
        C10480e.m22710a(i, intent, new AbstractC10479d(null) { // from class: com.facebook.share.internal.a.9
            @Override // com.facebook.share.internal.AbstractC10479d
            /* renamed from: a */
            public final void mo22714a(C10203a c10203a) {
                mo22712a(c10203a, new FacebookOperationCanceledException());
            }

            @Override // com.facebook.share.internal.AbstractC10479d
            /* renamed from: a */
            public final void mo22713a(C10203a c10203a, Bundle bundle2) {
                if (bundle2 == null || !bundle2.containsKey("object_is_liked")) {
                    return;
                }
                boolean z = bundle2.getBoolean("object_is_liked");
                String str = C10446a.this.f34169o;
                String str2 = C10446a.this.f34170p;
                if (bundle2.containsKey("like_count_string")) {
                    str = bundle2.getString("like_count_string");
                    str2 = str;
                }
                String str3 = C10446a.this.f34171q;
                String str4 = C10446a.this.f34172r;
                if (bundle2.containsKey("social_sentence")) {
                    str3 = bundle2.getString("social_sentence");
                    str4 = str3;
                }
                String string = bundle2.containsKey("object_is_liked") ? bundle2.getString("unlike_token") : C10446a.this.f34173s;
                Bundle bundle3 = bundle;
                Bundle bundle4 = bundle3;
                if (bundle3 == null) {
                    bundle4 = new Bundle();
                }
                bundle4.putString("call_id", c10203a.m23269a().toString());
                C10446a.this.m22754c().m23412c("fb_like_control_dialog_did_succeed", bundle4);
                C10446a.this.m22763a(z, str, str2, str3, str4, string);
            }

            @Override // com.facebook.share.internal.AbstractC10479d
            /* renamed from: a */
            public final void mo22712a(C10203a c10203a, FacebookException facebookException) {
                C10336x.m22992a(EnumC10396m.REQUESTS, C10446a.f34155c, "Like Dialog failed with error : %s", facebookException);
                Bundle bundle2 = bundle;
                Bundle bundle3 = bundle2;
                if (bundle2 == null) {
                    bundle3 = new Bundle();
                }
                bundle3.putString("call_id", c10203a.m23269a().toString());
                C10446a.this.m22768a("present_dialog", bundle3);
                C10446a.m22773a(C10446a.this, "com.facebook.sdk.LikeActionController.DID_ERROR", C10340z.m22964a(facebookException));
            }
        });
        c10446a.f34177w = null;
        f34161i = null;
        C10181g.m23290i().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", f34161i).apply();
    }

    /* renamed from: a */
    static /* synthetic */ void m22776a(C10446a c10446a, Bundle bundle) {
        boolean z = c10446a.f34165a;
        if (z == c10446a.f34176v || c10446a.m22764a(z, bundle)) {
            return;
        }
        c10446a.m22755b(!c10446a.f34165a);
    }

    /* renamed from: a */
    private static void m22775a(C10446a c10446a, LikeView.EnumC10509e enumC10509e, AbstractC10464c abstractC10464c) {
        C10446a c10446a2;
        FacebookException facebookException;
        LikeView.EnumC10509e m22706a = C10480e.m22706a(enumC10509e, c10446a.f34168n);
        if (m22706a == null) {
            facebookException = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", c10446a.f34167m, c10446a.f34168n.toString(), enumC10509e.toString());
            c10446a2 = null;
        } else {
            c10446a.f34168n = m22706a;
            c10446a2 = c10446a;
            facebookException = null;
        }
        m22780a(abstractC10464c, c10446a2, facebookException);
    }

    /* renamed from: a */
    public static void m22773a(C10446a c10446a, String str, Bundle bundle) {
        Intent intent = new Intent(str);
        Bundle bundle2 = bundle;
        if (c10446a != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", c10446a.f34167m);
        }
        if (bundle2 != null) {
            intent.putExtras(bundle2);
        }
        C1179a.m43410a(C10181g.m23290i()).m43409a(intent);
    }

    /* renamed from: a */
    static /* synthetic */ void m22772a(C10446a c10446a, String str, FacebookRequestError facebookRequestError) {
        JSONObject requestResult;
        Bundle bundle = new Bundle();
        if (facebookRequestError != null && (requestResult = facebookRequestError.getRequestResult()) != null) {
            bundle.putString("error", requestResult.toString());
        }
        c10446a.m22768a(str, bundle);
    }

    @Deprecated
    /* renamed from: a */
    public static void m22767a(String str, LikeView.EnumC10509e enumC10509e, AbstractC10464c abstractC10464c) {
        if (!f34162j) {
            m22737i();
        }
        C10446a m22757b = m22757b(str);
        if (m22757b != null) {
            m22775a(m22757b, enumC10509e, abstractC10464c);
        } else {
            f34159g.m23146a(new RunnableC10463b(str, enumC10509e, abstractC10464c));
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m22766a(String str, String str2) {
        OutputStream outputStream = null;
        OutputStream outputStream2 = null;
        try {
            try {
                OutputStream m23009b = f34156d.m23009b(str, null);
                outputStream2 = m23009b;
                outputStream = m23009b;
                m23009b.write(str2.getBytes());
                C10213ae.m23238a(m23009b);
            } catch (IOException e) {
                outputStream2 = outputStream;
                Log.e(f34155c, "Unable to serialize controller to disk", e);
                if (outputStream == null) {
                    return;
                }
                C10213ae.m23238a(outputStream);
            }
        } catch (Throwable th) {
            if (outputStream2 != null) {
                C10213ae.m23238a(outputStream2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public void m22763a(boolean z, String str, String str2, String str3, String str4, String str5) {
        String m23227a = C10213ae.m23227a(str, (String) null);
        String m23227a2 = C10213ae.m23227a(str2, (String) null);
        String m23227a3 = C10213ae.m23227a(str3, (String) null);
        String m23227a4 = C10213ae.m23227a(str4, (String) null);
        String m23227a5 = C10213ae.m23227a(str5, (String) null);
        if (!(z != this.f34165a || !C10213ae.m23233a(m23227a, this.f34169o) || !C10213ae.m23233a(m23227a2, this.f34170p) || !C10213ae.m23233a(m23227a3, this.f34171q) || !C10213ae.m23233a(m23227a4, this.f34172r) || !C10213ae.m23233a(m23227a5, this.f34173s))) {
            return;
        }
        this.f34165a = z;
        this.f34169o = m23227a;
        this.f34170p = m23227a2;
        this.f34171q = m23227a3;
        this.f34172r = m23227a4;
        this.f34173s = m23227a5;
        m22732m(this);
        m22773a(this, "com.facebook.sdk.LikeActionController.UPDATED", (Bundle) null);
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m22781a(final int i, final int i2, final Intent intent) {
        if (C10213ae.m23230a(f34161i)) {
            f34161i = C10181g.m23290i().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
        }
        if (C10213ae.m23230a(f34161i)) {
            return false;
        }
        m22767a(f34161i, LikeView.EnumC10509e.UNKNOWN, new AbstractC10464c() { // from class: com.facebook.share.internal.a.1
            @Override // com.facebook.share.internal.C10446a.AbstractC10464c
            /* renamed from: a */
            public final void mo22680a(C10446a c10446a, FacebookException facebookException) {
                if (facebookException == null) {
                    C10446a.m22777a(c10446a, i, i2, intent);
                } else {
                    C10213ae.m23228a(C10446a.f34155c, (Exception) facebookException);
                }
            }
        });
        return true;
    }

    /* renamed from: b */
    private static C10446a m22757b(String str) {
        String m22744e = m22744e(str);
        C10446a c10446a = f34157e.get(m22744e);
        if (c10446a != null) {
            f34158f.m23146a(new RunnableC10471j(m22744e, false));
        }
        return c10446a;
    }

    /* renamed from: b */
    static /* synthetic */ void m22756b(String str, LikeView.EnumC10509e enumC10509e, AbstractC10464c abstractC10464c) {
        C10446a m22757b = m22757b(str);
        if (m22757b != null) {
            m22775a(m22757b, enumC10509e, abstractC10464c);
            return;
        }
        C10446a m22750c = m22750c(str);
        C10446a c10446a = m22750c;
        if (m22750c == null) {
            c10446a = new C10446a(str, enumC10509e);
            m22732m(c10446a);
        }
        String m22744e = m22744e(str);
        f34158f.m23146a(new RunnableC10471j(m22744e, true));
        f34157e.put(m22744e, c10446a);
        f34160h.post(new Runnable() { // from class: com.facebook.share.internal.a.5
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    C10446a.m22778a(C10446a.this);
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
        m22780a(abstractC10464c, c10446a, (FacebookException) null);
    }

    /* renamed from: b */
    public void m22755b(boolean z) {
        m22765a(z);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
        m22773a(this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008d  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.facebook.share.internal.C10446a m22750c(java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r4
            java.lang.String r0 = m22744e(r0)     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L63
            r4 = r0
            com.facebook.internal.r r0 = com.facebook.share.internal.C10446a.f34156d     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L63
            r1 = r4
            r2 = 0
            java.io.InputStream r0 = r0.m23012a(r1, r2)     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L63
            r8 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L49
            r0 = r8
            r9 = r0
            r0 = r8
            java.lang.String r0 = com.facebook.internal.C10213ae.m23236a(r0)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L87
            r10 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            boolean r0 = com.facebook.internal.C10213ae.m23230a(r0)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L87
            if (r0 != 0) goto L49
            r0 = r8
            r9 = r0
            r0 = r10
            com.facebook.share.internal.a r0 = m22747d(r0)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L87
            r4 = r0
            goto L49
        L42:
            r7 = move-exception
            r0 = r8
            r4 = r0
            goto L66
        L49:
            r0 = r4
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L84
            r0 = r4
            r9 = r0
        L54:
            r0 = r8
            com.facebook.internal.C10213ae.m23238a(r0)
            goto L84
        L5c:
            r4 = move-exception
            r0 = 0
            r9 = r0
            goto L88
        L63:
            r7 = move-exception
            r0 = 0
            r4 = r0
        L66:
            r0 = r4
            r9 = r0
            java.lang.String r0 = com.facebook.share.internal.C10446a.f34155c     // Catch: java.lang.Throwable -> L87
            java.lang.String r1 = "Unable to deserialize controller from disk"
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)     // Catch: java.lang.Throwable -> L87
            r0 = r6
            r9 = r0
            r0 = r4
            if (r0 == 0) goto L84
            r0 = r5
            r9 = r0
            r0 = r4
            r8 = r0
            goto L54
        L84:
            r0 = r9
            return r0
        L87:
            r4 = move-exception
        L88:
            r0 = r9
            if (r0 == 0) goto L92
            r0 = r9
            com.facebook.internal.C10213ae.m23238a(r0)
        L92:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.internal.C10446a.m22750c(java.lang.String):com.facebook.share.internal.a");
    }

    /* renamed from: d */
    private static C10446a m22747d(String str) {
        C10446a c10446a;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            Log.e(f34155c, "Unable to deserialize controller from JSON", e);
            c10446a = null;
        }
        if (jSONObject.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3) {
            return null;
        }
        c10446a = new C10446a(jSONObject.getString("object_id"), LikeView.EnumC10509e.fromInt(jSONObject.optInt("object_type", LikeView.EnumC10509e.UNKNOWN.getValue())));
        c10446a.f34169o = jSONObject.optString("like_count_string_with_like", null);
        c10446a.f34170p = jSONObject.optString("like_count_string_without_like", null);
        c10446a.f34171q = jSONObject.optString("social_sentence_with_like", null);
        c10446a.f34172r = jSONObject.optString("social_sentence_without_like", null);
        c10446a.f34165a = jSONObject.optBoolean("is_object_liked");
        c10446a.f34173s = jSONObject.optString("unlike_token", null);
        JSONObject optJSONObject = jSONObject.optJSONObject("facebook_dialog_analytics_bundle");
        if (optJSONObject != null) {
            c10446a.f34177w = BundleJSONConverter.convertToBundle(optJSONObject);
        }
        return c10446a;
    }

    /* renamed from: e */
    private static String m22744e(String str) {
        String token = AccessToken.isCurrentAccessTokenActive() ? AccessToken.getCurrentAccessToken().getToken() : null;
        String str2 = token;
        if (token != null) {
            str2 = C10213ae.m23209b(token);
        }
        return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", str, C10213ae.m23227a(str2, ""), Integer.valueOf(f34163k));
    }

    /* renamed from: i */
    private static void m22737i() {
        synchronized (C10446a.class) {
            try {
                if (f34162j) {
                    return;
                }
                f34160h = new Handler(Looper.getMainLooper());
                f34163k = C10181g.m23290i().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getInt("OBJECT_SUFFIX", 1);
                f34156d = new C10312r(f34155c, new C10312r.C10318d());
                f34164l = new AbstractC10174d() { // from class: com.facebook.share.internal.a.8
                    @Override // com.facebook.AbstractC10174d
                    /* renamed from: a */
                    public final void mo22727a(AccessToken accessToken) {
                        Context m23290i = C10181g.m23290i();
                        if (accessToken == null) {
                            int unused = C10446a.f34163k = (C10446a.f34163k + 1) % 1000;
                            m23290i.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", C10446a.f34163k).apply();
                            C10446a.f34157e.clear();
                            C10312r c10312r = C10446a.f34156d;
                            File file = c10312r.f33885a;
                            C10312r.C10313a c10313a = C10312r.C10313a.f33893a;
                            File[] listFiles = file.listFiles(C10312r.C10313a.m23008a());
                            c10312r.f33886b.set(System.currentTimeMillis());
                            if (listFiles != null) {
                                C10181g.m23293f().execute(new C10312r.RunnableC10323h(listFiles));
                            }
                        }
                        C10446a.m22773a((C10446a) null, "com.facebook.sdk.LikeActionController.DID_RESET", (Bundle) null);
                    }
                };
                C10263c.m23086a(C10263c.EnumC10266c.Like.toRequestCode(), new C10263c.AbstractC10264a() { // from class: com.facebook.share.internal.a.6
                    @Override // com.facebook.internal.C10263c.AbstractC10264a
                    /* renamed from: a */
                    public final boolean mo22728a(int i, Intent intent) {
                        return C10446a.m22781a(C10263c.EnumC10266c.Like.toRequestCode(), i, intent);
                    }
                });
                f34162j = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: m */
    private static void m22732m(C10446a c10446a) {
        String m22731n = m22731n(c10446a);
        String m22744e = m22744e(c10446a.f34167m);
        if (C10213ae.m23230a(m22731n) || C10213ae.m23230a(m22744e)) {
            return;
        }
        f34159g.m23146a(new RunnableC10476o(m22744e, m22731n));
    }

    /* renamed from: n */
    private static String m22731n(C10446a c10446a) {
        JSONObject convertToJSON;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
            jSONObject.put("object_id", c10446a.f34167m);
            jSONObject.put("object_type", c10446a.f34168n.getValue());
            jSONObject.put("like_count_string_with_like", c10446a.f34169o);
            jSONObject.put("like_count_string_without_like", c10446a.f34170p);
            jSONObject.put("social_sentence_with_like", c10446a.f34171q);
            jSONObject.put("social_sentence_without_like", c10446a.f34172r);
            jSONObject.put("is_object_liked", c10446a.f34165a);
            jSONObject.put("unlike_token", c10446a.f34173s);
            Bundle bundle = c10446a.f34177w;
            if (bundle != null && (convertToJSON = BundleJSONConverter.convertToJSON(bundle)) != null) {
                jSONObject.put("facebook_dialog_analytics_bundle", convertToJSON);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.e(f34155c, "Unable to serialize controller to JSON", e);
            return null;
        }
    }

    @Deprecated
    /* renamed from: a */
    public final String m22783a() {
        return this.f34165a ? this.f34169o : this.f34170p;
    }

    /* renamed from: a */
    public void m22768a(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putString("object_id", this.f34167m);
        bundle2.putString("object_type", this.f34168n.toString());
        bundle2.putString("current_action", str);
        m22754c().m23413b("fb_like_control_error", bundle2);
    }

    /* renamed from: a */
    public final void m22765a(boolean z) {
        m22763a(z, this.f34169o, this.f34170p, this.f34171q, this.f34172r, this.f34173s);
    }

    /* renamed from: a */
    public final boolean m22764a(boolean z, final Bundle bundle) {
        boolean z2;
        if (m22749d()) {
            if (z) {
                this.f34166b = true;
                m22779a(new AbstractC10474m() { // from class: com.facebook.share.internal.a.10
                    @Override // com.facebook.share.internal.C10446a.AbstractC10474m
                    /* renamed from: a */
                    public final void mo22720a() {
                        if (C10213ae.m23230a(C10446a.this.f34174t)) {
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
                            C10446a.m22773a(C10446a.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle2);
                            return;
                        }
                        C10193i c10193i = new C10193i();
                        C10446a c10446a = C10446a.this;
                        final C10472k c10472k = new C10472k(c10446a.f34174t, C10446a.this.f34168n);
                        c10472k.mo22718a(c10193i);
                        c10193i.m23271a(new C10193i.AbstractC10194a() { // from class: com.facebook.share.internal.a.10.1
                            @Override // com.facebook.C10193i.AbstractC10194a
                            /* renamed from: a */
                            public final void mo22729a() {
                                C10446a.this.f34166b = false;
                                if (c10472k.mo22719a() != null) {
                                    C10446a.this.m22755b(false);
                                    return;
                                }
                                C10446a.this.f34173s = C10213ae.m23227a(c10472k.f34235e, (String) null);
                                C10446a.this.f34176v = true;
                                C10446a.this.m22754c().m23413b("fb_like_control_did_like", bundle);
                                C10446a.m22776a(C10446a.this, bundle);
                            }
                        });
                        GraphRequest.m23780b(c10193i);
                    }
                });
                z2 = true;
            } else if (!C10213ae.m23230a(this.f34173s)) {
                this.f34166b = true;
                C10193i c10193i = new C10193i();
                final C10473l c10473l = new C10473l(this.f34173s);
                c10473l.mo22718a(c10193i);
                c10193i.m23271a(new C10193i.AbstractC10194a() { // from class: com.facebook.share.internal.a.11
                    @Override // com.facebook.C10193i.AbstractC10194a
                    /* renamed from: a */
                    public final void mo22729a() {
                        C10446a.this.f34166b = false;
                        if (c10473l.mo22719a() != null) {
                            C10446a.this.m22755b(true);
                            return;
                        }
                        C10446a.this.f34173s = null;
                        C10446a.this.f34176v = false;
                        C10446a.this.m22754c().m23413b("fb_like_control_did_unlike", bundle);
                        C10446a.m22776a(C10446a.this, bundle);
                    }
                });
                GraphRequest.m23780b(c10193i);
                z2 = true;
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    @Deprecated
    /* renamed from: b */
    public final String m22762b() {
        return this.f34165a ? this.f34171q : this.f34172r;
    }

    /* renamed from: c */
    public final C10097m m22754c() {
        if (this.f34178x == null) {
            this.f34178x = new C10097m(C10181g.m23290i());
        }
        return this.f34178x;
    }

    /* renamed from: d */
    public final boolean m22749d() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        return !this.f34175u && this.f34174t != null && AccessToken.isCurrentAccessTokenActive() && currentAccessToken.getPermissions() != null && currentAccessToken.getPermissions().contains("publish_actions");
    }
}
