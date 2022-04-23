package com.facebook.share.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.i;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.aa;
import com.facebook.internal.ae;
import com.facebook.internal.ah;
import com.facebook.internal.c;
import com.facebook.internal.r;
import com.facebook.internal.x;
import com.facebook.internal.z;
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
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a.class */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static final String f20173c = "a";

    /* renamed from: d  reason: collision with root package name */
    private static r f20174d;
    private static final ConcurrentHashMap<String, a> e = new ConcurrentHashMap<>();
    private static ah f = new ah(1);
    private static ah g = new ah(1);
    private static Handler h;
    private static String i;
    private static boolean j;
    private static volatile int k;
    private static com.facebook.d l;

    /* renamed from: a  reason: collision with root package name */
    public boolean f20175a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f20176b;
    private String m;
    private LikeView.e n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private boolean u;
    private boolean v;
    private Bundle w;
    private com.facebook.appevents.m x;

    /* renamed from: com.facebook.share.internal.a$4  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$4.class */
    static final /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f20196a;

        static {
            int[] iArr = new int[LikeView.e.values().length];
            f20196a = iArr;
            try {
                iArr[LikeView.e.PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.share.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$a.class */
    public abstract class AbstractC0407a implements n {

        /* renamed from: a  reason: collision with root package name */
        protected String f20203a;

        /* renamed from: b  reason: collision with root package name */
        protected LikeView.e f20204b;

        /* renamed from: c  reason: collision with root package name */
        protected FacebookRequestError f20205c;
        private GraphRequest e;

        protected AbstractC0407a(String str, LikeView.e eVar) {
            this.f20203a = str;
            this.f20204b = eVar;
        }

        @Override // com.facebook.share.internal.a.n
        public final FacebookRequestError a() {
            return this.f20205c;
        }

        protected void a(FacebookRequestError facebookRequestError) {
            x.a(com.facebook.m.REQUESTS, a.f20173c, "Error running request for object '%s' with type '%s' : %s", this.f20203a, this.f20204b, facebookRequestError);
        }

        protected final void a(GraphRequest graphRequest) {
            this.e = graphRequest;
            graphRequest.g = com.facebook.g.j();
            graphRequest.a(new GraphRequest.b() { // from class: com.facebook.share.internal.a.a.1
                @Override // com.facebook.GraphRequest.b
                public final void a(com.facebook.j jVar) {
                    AbstractC0407a.this.f20205c = jVar.f20037b;
                    if (AbstractC0407a.this.f20205c != null) {
                        AbstractC0407a aVar = AbstractC0407a.this;
                        aVar.a(aVar.f20205c);
                        return;
                    }
                    AbstractC0407a.this.a(jVar);
                }
            });
        }

        @Override // com.facebook.share.internal.a.n
        public final void a(com.facebook.i iVar) {
            iVar.add(this.e);
        }

        protected abstract void a(com.facebook.j jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$b.class */
    public static final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f20208a;

        /* renamed from: b  reason: collision with root package name */
        private LikeView.e f20209b;

        /* renamed from: c  reason: collision with root package name */
        private c f20210c;

        b(String str, LikeView.e eVar, c cVar) {
            this.f20208a = str;
            this.f20209b = eVar;
            this.f20210c = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    a.b(this.f20208a, this.f20209b, this.f20210c);
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$c.class */
    public interface c {
        void a(a aVar, FacebookException facebookException);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$d.class */
    final class d extends AbstractC0407a {
        String e;
        String f;
        String g;
        String h;

        d(String str, LikeView.e eVar) {
            super(str, eVar);
            this.e = a.this.o;
            this.f = a.this.p;
            this.g = a.this.q;
            this.h = a.this.r;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            bundle.putString("locale", Locale.getDefault().toString());
            a(new GraphRequest(AccessToken.getCurrentAccessToken(), str, bundle, com.facebook.k.GET));
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(FacebookRequestError facebookRequestError) {
            x.a(com.facebook.m.REQUESTS, a.f20173c, "Error fetching engagement for object '%s' with type '%s' : %s", this.f20203a, this.f20204b, facebookRequestError);
            a.a(a.this, "get_engagement", facebookRequestError);
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(com.facebook.j jVar) {
            JSONObject b2 = ae.b(jVar.f20036a, "engagement");
            if (b2 != null) {
                this.e = b2.optString("count_string_with_like", this.e);
                this.f = b2.optString("count_string_without_like", this.f);
                this.g = b2.optString("social_sentence_with_like", this.g);
                this.h = b2.optString("social_sentence_without_like", this.h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$e.class */
    public final class e extends AbstractC0407a {
        String e;

        e(String str, LikeView.e eVar) {
            super(str, eVar);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "og_object.fields(id)");
            bundle.putString("ids", str);
            a(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, com.facebook.k.GET));
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorMessage().contains("og_object")) {
                this.f20205c = null;
            } else {
                x.a(com.facebook.m.REQUESTS, a.f20173c, "Error getting the FB id for object '%s' with type '%s' : %s", this.f20203a, this.f20204b, facebookRequestError);
            }
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(com.facebook.j jVar) {
            JSONObject optJSONObject;
            JSONObject b2 = ae.b(jVar.f20036a, this.f20203a);
            if (b2 != null && (optJSONObject = b2.optJSONObject("og_object")) != null) {
                this.e = optJSONObject.optString("id");
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$f.class */
    final class f extends AbstractC0407a implements i {
        private boolean f;
        private String g;
        private final String h;
        private final LikeView.e i;

        f(String str, LikeView.e eVar) {
            super(str, eVar);
            this.f = a.this.f20175a;
            this.h = str;
            this.i = eVar;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,application");
            bundle.putString("object", str);
            a(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, com.facebook.k.GET));
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(FacebookRequestError facebookRequestError) {
            x.a(com.facebook.m.REQUESTS, a.f20173c, "Error fetching like status for object '%s' with type '%s' : %s", this.h, this.i, facebookRequestError);
            a.a(a.this, "get_og_object_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(com.facebook.j jVar) {
            JSONArray c2 = ae.c(jVar.f20036a, "data");
            if (c2 != null) {
                for (int i = 0; i < c2.length(); i++) {
                    JSONObject optJSONObject = c2.optJSONObject(i);
                    if (optJSONObject != null) {
                        this.f = true;
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("application");
                        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                        if (optJSONObject2 != null && AccessToken.isCurrentAccessTokenActive() && ae.a(currentAccessToken.getApplicationId(), optJSONObject2.optString("id"))) {
                            this.g = optJSONObject.optString("id");
                        }
                    }
                }
            }
        }

        @Override // com.facebook.share.internal.a.i
        public final boolean b() {
            return this.f;
        }

        @Override // com.facebook.share.internal.a.i
        public final String c() {
            return this.g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$g.class */
    public final class g extends AbstractC0407a {
        String e;
        boolean f;

        g(String str, LikeView.e eVar) {
            super(str, eVar);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            bundle.putString("ids", str);
            a(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, com.facebook.k.GET));
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(FacebookRequestError facebookRequestError) {
            x.a(com.facebook.m.REQUESTS, a.f20173c, "Error getting the FB id for object '%s' with type '%s' : %s", this.f20203a, this.f20204b, facebookRequestError);
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(com.facebook.j jVar) {
            JSONObject b2 = ae.b(jVar.f20036a, this.f20203a);
            if (b2 != null) {
                String optString = b2.optString("id");
                this.e = optString;
                this.f = !ae.a(optString);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$h.class */
    final class h extends AbstractC0407a implements i {
        private boolean f;
        private String g;

        h(String str) {
            super(str, LikeView.e.PAGE);
            this.f = a.this.f20175a;
            this.g = str;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            a(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/likes/".concat(String.valueOf(str)), bundle, com.facebook.k.GET));
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(FacebookRequestError facebookRequestError) {
            x.a(com.facebook.m.REQUESTS, a.f20173c, "Error fetching like status for page id '%s': %s", this.g, facebookRequestError);
            a.a(a.this, "get_page_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(com.facebook.j jVar) {
            JSONArray c2 = ae.c(jVar.f20036a, "data");
            if (c2 != null && c2.length() > 0) {
                this.f = true;
            }
        }

        @Override // com.facebook.share.internal.a.i
        public final boolean b() {
            return this.f;
        }

        @Override // com.facebook.share.internal.a.i
        public final String c() {
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$i.class */
    interface i extends n {
        boolean b();

        String c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$j.class */
    public static final class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private static ArrayList<String> f20211a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        private String f20212b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f20213c;

        j(String str, boolean z) {
            this.f20212b = str;
            this.f20213c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    String str = this.f20212b;
                    if (str != null) {
                        f20211a.remove(str);
                        f20211a.add(0, this.f20212b);
                    }
                    if (this.f20213c && f20211a.size() >= 128) {
                        while (64 < f20211a.size()) {
                            ArrayList<String> arrayList = f20211a;
                            a.e.remove(arrayList.remove(arrayList.size() - 1));
                        }
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$k.class */
    final class k extends AbstractC0407a {
        String e;

        k(String str, LikeView.e eVar) {
            super(str, eVar);
            Bundle bundle = new Bundle();
            bundle.putString("object", str);
            a(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, com.facebook.k.POST));
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorCode() == 3501) {
                this.f20205c = null;
                return;
            }
            x.a(com.facebook.m.REQUESTS, a.f20173c, "Error liking object '%s' with type '%s' : %s", this.f20203a, this.f20204b, facebookRequestError);
            a.a(a.this, "publish_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(com.facebook.j jVar) {
            this.e = ae.a(jVar.f20036a, "id");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$l.class */
    public final class l extends AbstractC0407a {
        private String f;

        l(String str) {
            super(null, null);
            this.f = str;
            a(new GraphRequest(AccessToken.getCurrentAccessToken(), str, null, com.facebook.k.DELETE));
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(FacebookRequestError facebookRequestError) {
            x.a(com.facebook.m.REQUESTS, a.f20173c, "Error unliking object with unlike token '%s' : %s", this.f, facebookRequestError);
            a.a(a.this, "publish_unlike", facebookRequestError);
        }

        @Override // com.facebook.share.internal.a.AbstractC0407a
        protected final void a(com.facebook.j jVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$m.class */
    public interface m {
        void a();
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$n.class */
    interface n {
        FacebookRequestError a();

        void a(com.facebook.i iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/a$o.class */
    public static final class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f20214a;

        /* renamed from: b  reason: collision with root package name */
        private String f20215b;

        o(String str, String str2) {
            this.f20214a = str;
            this.f20215b = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    a.a(this.f20214a, this.f20215b);
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    private a(String str, LikeView.e eVar) {
        this.m = str;
        this.n = eVar;
    }

    private static void a(final c cVar, final a aVar, final FacebookException facebookException) {
        if (cVar != null) {
            h.post(new Runnable() { // from class: com.facebook.share.internal.a.7
                @Override // java.lang.Runnable
                public final void run() {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        try {
                            c.this.a(aVar, facebookException);
                        } catch (Throwable th) {
                            com.facebook.internal.b.b.a.a(th, this);
                        }
                    }
                }
            });
        }
    }

    private void a(final m mVar) {
        if (!ae.a(this.t)) {
            mVar.a();
            return;
        }
        final e eVar = new e(this.m, this.n);
        final g gVar = new g(this.m, this.n);
        com.facebook.i iVar = new com.facebook.i();
        eVar.a(iVar);
        gVar.a(iVar);
        iVar.a(new i.a() { // from class: com.facebook.share.internal.a.3
            @Override // com.facebook.i.a
            public final void a() {
                a.this.t = eVar.e;
                if (ae.a(a.this.t)) {
                    a.this.t = gVar.e;
                    a.this.u = gVar.f;
                }
                if (ae.a(a.this.t)) {
                    x.a(com.facebook.m.DEVELOPER_ERRORS, a.f20173c, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", a.this.m);
                    a.a(a.this, "get_verified_id", gVar.a() != null ? gVar.a() : eVar.a());
                }
                m mVar2 = mVar;
                if (mVar2 != null) {
                    mVar2.a();
                }
            }
        });
        GraphRequest.b(iVar);
    }

    static /* synthetic */ void a(a aVar) {
        if (!AccessToken.isCurrentAccessTokenActive()) {
            com.facebook.share.internal.c cVar = new com.facebook.share.internal.c(com.facebook.g.i(), com.facebook.g.m(), aVar.m);
            if (cVar.a()) {
                cVar.f19805b = new aa.a() { // from class: com.facebook.share.internal.a.2
                    @Override // com.facebook.internal.aa.a
                    public final void a(Bundle bundle) {
                        if (bundle != null && bundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED")) {
                            a.this.a(bundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED"), bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") ? bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") : a.this.o, bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") ? bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") : a.this.p, bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") ? bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") : a.this.q, bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") ? bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") : a.this.r, bundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN") ? bundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN") : a.this.s);
                        }
                    }
                };
                return;
            }
            return;
        }
        aVar.a(new m() { // from class: com.facebook.share.internal.a.12
            @Override // com.facebook.share.internal.a.m
            public final void a() {
                final i iVar;
                if (AnonymousClass4.f20196a[a.this.n.ordinal()] != 1) {
                    a aVar2 = a.this;
                    iVar = new f(aVar2.t, a.this.n);
                } else {
                    a aVar3 = a.this;
                    iVar = new h(aVar3.t);
                }
                a aVar4 = a.this;
                final d dVar = new d(aVar4.t, a.this.n);
                com.facebook.i iVar2 = new com.facebook.i();
                iVar.a(iVar2);
                dVar.a(iVar2);
                iVar2.a(new i.a() { // from class: com.facebook.share.internal.a.12.1
                    @Override // com.facebook.i.a
                    public final void a() {
                        if (iVar.a() == null && dVar.a() == null) {
                            a.this.a(iVar.b(), dVar.e, dVar.f, dVar.g, dVar.h, iVar.c());
                        } else {
                            x.a(com.facebook.m.REQUESTS, a.f20173c, "Unable to refresh like state for id: '%s'", a.this.m);
                        }
                    }
                });
                GraphRequest.b(iVar2);
            }
        });
    }

    static /* synthetic */ void a(a aVar, int i2, int i3, Intent intent) {
        final Bundle bundle = aVar.w;
        com.facebook.share.internal.e.a(i2, intent, new com.facebook.share.internal.d(null) { // from class: com.facebook.share.internal.a.9
            @Override // com.facebook.share.internal.d
            public final void a(com.facebook.internal.a aVar2) {
                a(aVar2, new FacebookOperationCanceledException());
            }

            @Override // com.facebook.share.internal.d
            public final void a(com.facebook.internal.a aVar2, Bundle bundle2) {
                if (bundle2 != null && bundle2.containsKey("object_is_liked")) {
                    boolean z = bundle2.getBoolean("object_is_liked");
                    String str = a.this.o;
                    String str2 = a.this.p;
                    if (bundle2.containsKey("like_count_string")) {
                        str = bundle2.getString("like_count_string");
                        str2 = str;
                    }
                    String str3 = a.this.q;
                    String str4 = a.this.r;
                    if (bundle2.containsKey("social_sentence")) {
                        str3 = bundle2.getString("social_sentence");
                        str4 = str3;
                    }
                    String string = bundle2.containsKey("object_is_liked") ? bundle2.getString("unlike_token") : a.this.s;
                    Bundle bundle3 = bundle;
                    Bundle bundle4 = bundle3;
                    if (bundle3 == null) {
                        bundle4 = new Bundle();
                    }
                    bundle4.putString("call_id", aVar2.a().toString());
                    a.this.c().c("fb_like_control_dialog_did_succeed", bundle4);
                    a.this.a(z, str, str2, str3, str4, string);
                }
            }

            @Override // com.facebook.share.internal.d
            public final void a(com.facebook.internal.a aVar2, FacebookException facebookException) {
                x.a(com.facebook.m.REQUESTS, a.f20173c, "Like Dialog failed with error : %s", facebookException);
                Bundle bundle2 = bundle;
                Bundle bundle3 = bundle2;
                if (bundle2 == null) {
                    bundle3 = new Bundle();
                }
                bundle3.putString("call_id", aVar2.a().toString());
                a.this.a("present_dialog", bundle3);
                a.a(a.this, "com.facebook.sdk.LikeActionController.DID_ERROR", z.a(facebookException));
            }
        });
        aVar.w = null;
        i = null;
        com.facebook.g.i().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", i).apply();
    }

    static /* synthetic */ void a(a aVar, Bundle bundle) {
        boolean z = aVar.f20175a;
        if (z != aVar.v && !aVar.a(z, bundle)) {
            aVar.b(!aVar.f20175a);
        }
    }

    private static void a(a aVar, LikeView.e eVar, c cVar) {
        a aVar2;
        LikeView.e a2 = com.facebook.share.internal.e.a(eVar, aVar.n);
        FacebookException facebookException = null;
        if (a2 == null) {
            facebookException = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", aVar.m, aVar.n.toString(), eVar.toString());
            aVar2 = null;
        } else {
            aVar.n = a2;
            aVar2 = aVar;
        }
        a(cVar, aVar2, facebookException);
    }

    public static void a(a aVar, String str, Bundle bundle) {
        Intent intent = new Intent(str);
        Bundle bundle2 = bundle;
        if (aVar != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", aVar.m);
        }
        if (bundle2 != null) {
            intent.putExtras(bundle2);
        }
        androidx.i.a.a.a(com.facebook.g.i()).a(intent);
    }

    static /* synthetic */ void a(a aVar, String str, FacebookRequestError facebookRequestError) {
        JSONObject requestResult;
        Bundle bundle = new Bundle();
        if (!(facebookRequestError == null || (requestResult = facebookRequestError.getRequestResult()) == null)) {
            bundle.putString("error", requestResult.toString());
        }
        aVar.a(str, bundle);
    }

    @Deprecated
    public static void a(String str, LikeView.e eVar, c cVar) {
        if (!j) {
            i();
        }
        a b2 = b(str);
        if (b2 != null) {
            a(b2, eVar, cVar);
        } else {
            g.a(new b(str, eVar, cVar));
        }
    }

    static /* synthetic */ void a(String str, String str2) {
        OutputStream outputStream = null;
        OutputStream outputStream2 = null;
        try {
            try {
                OutputStream b2 = f20174d.b(str, null);
                outputStream2 = b2;
                outputStream = b2;
                b2.write(str2.getBytes());
                ae.a(b2);
            } catch (IOException e2) {
                outputStream2 = outputStream;
                Log.e(f20173c, "Unable to serialize controller to disk", e2);
                if (outputStream != null) {
                    ae.a(outputStream);
                }
            }
        } catch (Throwable th) {
            if (outputStream2 != null) {
                ae.a(outputStream2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str, String str2, String str3, String str4, String str5) {
        String a2 = ae.a(str, (String) null);
        String a3 = ae.a(str2, (String) null);
        String a4 = ae.a(str3, (String) null);
        String a5 = ae.a(str4, (String) null);
        String a6 = ae.a(str5, (String) null);
        if (z != this.f20175a || !ae.a(a2, this.o) || !ae.a(a3, this.p) || !ae.a(a4, this.q) || !ae.a(a5, this.r) || !ae.a(a6, this.s)) {
            this.f20175a = z;
            this.o = a2;
            this.p = a3;
            this.q = a4;
            this.r = a5;
            this.s = a6;
            m(this);
            a(this, "com.facebook.sdk.LikeActionController.UPDATED", (Bundle) null);
        }
    }

    @Deprecated
    public static boolean a(final int i2, final int i3, final Intent intent) {
        if (ae.a(i)) {
            i = com.facebook.g.i().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
        }
        if (ae.a(i)) {
            return false;
        }
        a(i, LikeView.e.UNKNOWN, new c() { // from class: com.facebook.share.internal.a.1
            @Override // com.facebook.share.internal.a.c
            public final void a(a aVar, FacebookException facebookException) {
                if (facebookException == null) {
                    a.a(aVar, i2, i3, intent);
                } else {
                    ae.a(a.f20173c, (Exception) facebookException);
                }
            }
        });
        return true;
    }

    private static a b(String str) {
        String e2 = e(str);
        a aVar = e.get(e2);
        if (aVar != null) {
            f.a(new j(e2, false));
        }
        return aVar;
    }

    static /* synthetic */ void b(String str, LikeView.e eVar, c cVar) {
        a b2 = b(str);
        if (b2 != null) {
            a(b2, eVar, cVar);
            return;
        }
        a c2 = c(str);
        a aVar = c2;
        if (c2 == null) {
            aVar = new a(str, eVar);
            m(aVar);
        }
        String e2 = e(str);
        f.a(new j(e2, true));
        e.put(e2, aVar);
        h.post(new Runnable() { // from class: com.facebook.share.internal.a.5
            @Override // java.lang.Runnable
            public final void run() {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        a.a(a.this);
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
        a(cVar, aVar, (FacebookException) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        a(z);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
        a(this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.facebook.share.internal.a c(java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r4
            java.lang.String r0 = e(r0)     // Catch: all -> 0x005c, IOException -> 0x0063
            r4 = r0
            com.facebook.internal.r r0 = com.facebook.share.internal.a.f20174d     // Catch: all -> 0x005c, IOException -> 0x0063
            r1 = r4
            r2 = 0
            java.io.InputStream r0 = r0.a(r1, r2)     // Catch: all -> 0x005c, IOException -> 0x0063
            r8 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0049
            r0 = r8
            r9 = r0
            r0 = r8
            java.lang.String r0 = com.facebook.internal.ae.a(r0)     // Catch: IOException -> 0x0042, all -> 0x0087
            r10 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            boolean r0 = com.facebook.internal.ae.a(r0)     // Catch: IOException -> 0x0042, all -> 0x0087
            if (r0 != 0) goto L_0x0049
            r0 = r8
            r9 = r0
            r0 = r10
            com.facebook.share.internal.a r0 = d(r0)     // Catch: IOException -> 0x0042, all -> 0x0087
            r4 = r0
            goto L_0x0049
        L_0x0042:
            r7 = move-exception
            r0 = r8
            r4 = r0
            goto L_0x0066
        L_0x0049:
            r0 = r4
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0084
            r0 = r4
            r9 = r0
        L_0x0054:
            r0 = r8
            com.facebook.internal.ae.a(r0)
            goto L_0x0084
        L_0x005c:
            r4 = move-exception
            r0 = 0
            r9 = r0
            goto L_0x0088
        L_0x0063:
            r7 = move-exception
            r0 = 0
            r4 = r0
        L_0x0066:
            r0 = r4
            r9 = r0
            java.lang.String r0 = com.facebook.share.internal.a.f20173c     // Catch: all -> 0x0087
            java.lang.String r1 = "Unable to deserialize controller from disk"
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)     // Catch: all -> 0x0087
            r0 = r6
            r9 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0084
            r0 = r5
            r9 = r0
            r0 = r4
            r8 = r0
            goto L_0x0054
        L_0x0084:
            r0 = r9
            return r0
        L_0x0087:
            r4 = move-exception
        L_0x0088:
            r0 = r9
            if (r0 == 0) goto L_0x0092
            r0 = r9
            com.facebook.internal.ae.a(r0)
        L_0x0092:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.internal.a.c(java.lang.String):com.facebook.share.internal.a");
    }

    private static a d(String str) {
        JSONObject jSONObject;
        a aVar = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e2) {
            Log.e(f20173c, "Unable to deserialize controller from JSON", e2);
        }
        if (jSONObject.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3) {
            return null;
        }
        aVar = new a(jSONObject.getString("object_id"), LikeView.e.fromInt(jSONObject.optInt("object_type", LikeView.e.UNKNOWN.getValue())));
        aVar.o = jSONObject.optString("like_count_string_with_like", null);
        aVar.p = jSONObject.optString("like_count_string_without_like", null);
        aVar.q = jSONObject.optString("social_sentence_with_like", null);
        aVar.r = jSONObject.optString("social_sentence_without_like", null);
        aVar.f20175a = jSONObject.optBoolean("is_object_liked");
        aVar.s = jSONObject.optString("unlike_token", null);
        JSONObject optJSONObject = jSONObject.optJSONObject("facebook_dialog_analytics_bundle");
        if (optJSONObject != null) {
            aVar.w = BundleJSONConverter.convertToBundle(optJSONObject);
        }
        return aVar;
    }

    private static String e(String str) {
        String token = AccessToken.isCurrentAccessTokenActive() ? AccessToken.getCurrentAccessToken().getToken() : null;
        String str2 = token;
        if (token != null) {
            str2 = ae.b(token);
        }
        return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", str, ae.a(str2, ""), Integer.valueOf(k));
    }

    private static void i() {
        synchronized (a.class) {
            try {
                if (!j) {
                    h = new Handler(Looper.getMainLooper());
                    k = com.facebook.g.i().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getInt("OBJECT_SUFFIX", 1);
                    f20174d = new r(f20173c, new r.d());
                    l = new com.facebook.d() { // from class: com.facebook.share.internal.a.8
                        @Override // com.facebook.d
                        public final void a(AccessToken accessToken) {
                            Context i2 = com.facebook.g.i();
                            if (accessToken == null) {
                                int unused = a.k = (a.k + 1) % 1000;
                                i2.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", a.k).apply();
                                a.e.clear();
                                r rVar = a.f20174d;
                                File file = rVar.f19977a;
                                r.a aVar = r.a.f19980a;
                                File[] listFiles = file.listFiles(r.a.a());
                                rVar.f19978b.set(System.currentTimeMillis());
                                if (listFiles != null) {
                                    com.facebook.g.f().execute(new r.h(listFiles));
                                }
                            }
                            a.a((a) null, "com.facebook.sdk.LikeActionController.DID_RESET", (Bundle) null);
                        }
                    };
                    com.facebook.internal.c.a(c.EnumC0402c.Like.toRequestCode(), new c.a() { // from class: com.facebook.share.internal.a.6
                        @Override // com.facebook.internal.c.a
                        public final boolean a(int i2, Intent intent) {
                            return a.a(c.EnumC0402c.Like.toRequestCode(), i2, intent);
                        }
                    });
                    j = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void m(a aVar) {
        String n2 = n(aVar);
        String e2 = e(aVar.m);
        if (!ae.a(n2) && !ae.a(e2)) {
            g.a(new o(e2, n2));
        }
    }

    private static String n(a aVar) {
        JSONObject convertToJSON;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
            jSONObject.put("object_id", aVar.m);
            jSONObject.put("object_type", aVar.n.getValue());
            jSONObject.put("like_count_string_with_like", aVar.o);
            jSONObject.put("like_count_string_without_like", aVar.p);
            jSONObject.put("social_sentence_with_like", aVar.q);
            jSONObject.put("social_sentence_without_like", aVar.r);
            jSONObject.put("is_object_liked", aVar.f20175a);
            jSONObject.put("unlike_token", aVar.s);
            Bundle bundle = aVar.w;
            if (!(bundle == null || (convertToJSON = BundleJSONConverter.convertToJSON(bundle)) == null)) {
                jSONObject.put("facebook_dialog_analytics_bundle", convertToJSON);
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            Log.e(f20173c, "Unable to serialize controller to JSON", e2);
            return null;
        }
    }

    @Deprecated
    public final String a() {
        return this.f20175a ? this.o : this.p;
    }

    public void a(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putString("object_id", this.m);
        bundle2.putString("object_type", this.n.toString());
        bundle2.putString("current_action", str);
        c().b("fb_like_control_error", bundle2);
    }

    public final void a(boolean z) {
        a(z, this.o, this.p, this.q, this.r, this.s);
    }

    public final boolean a(boolean z, final Bundle bundle) {
        boolean z2;
        if (d()) {
            if (z) {
                this.f20176b = true;
                a(new m() { // from class: com.facebook.share.internal.a.10
                    @Override // com.facebook.share.internal.a.m
                    public final void a() {
                        if (ae.a(a.this.t)) {
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
                            a.a(a.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle2);
                            return;
                        }
                        com.facebook.i iVar = new com.facebook.i();
                        a aVar = a.this;
                        final k kVar = new k(aVar.t, a.this.n);
                        kVar.a(iVar);
                        iVar.a(new i.a() { // from class: com.facebook.share.internal.a.10.1
                            @Override // com.facebook.i.a
                            public final void a() {
                                a.this.f20176b = false;
                                if (kVar.a() != null) {
                                    a.this.b(false);
                                    return;
                                }
                                a.this.s = ae.a(kVar.e, (String) null);
                                a.this.v = true;
                                a.this.c().b("fb_like_control_did_like", bundle);
                                a.a(a.this, bundle);
                            }
                        });
                        GraphRequest.b(iVar);
                    }
                });
                z2 = true;
            } else if (!ae.a(this.s)) {
                this.f20176b = true;
                com.facebook.i iVar = new com.facebook.i();
                final l lVar = new l(this.s);
                lVar.a(iVar);
                iVar.a(new i.a() { // from class: com.facebook.share.internal.a.11
                    @Override // com.facebook.i.a
                    public final void a() {
                        a.this.f20176b = false;
                        if (lVar.a() != null) {
                            a.this.b(true);
                            return;
                        }
                        a.this.s = null;
                        a.this.v = false;
                        a.this.c().b("fb_like_control_did_unlike", bundle);
                        a.a(a.this, bundle);
                    }
                });
                GraphRequest.b(iVar);
                z2 = true;
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    @Deprecated
    public final String b() {
        return this.f20175a ? this.q : this.r;
    }

    public final com.facebook.appevents.m c() {
        if (this.x == null) {
            this.x = new com.facebook.appevents.m(com.facebook.g.i());
        }
        return this.x;
    }

    public final boolean d() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        return !this.u && this.t != null && AccessToken.isCurrentAccessTokenActive() && currentAccessToken.getPermissions() != null && currentAccessToken.getPermissions().contains("publish_actions");
    }
}
