package com.callapp.contacts.util.glide;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import androidx.l.a.a.b;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.b.a;
import com.bumptech.glide.e.b.d;
import com.bumptech.glide.e.g;
import com.bumptech.glide.e.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.resource.d.c;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.RoundedCornersTransformation;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.util.Date;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils.class */
public class GlideUtils {

    /* renamed from: a  reason: collision with root package name */
    public static int f16193a = 1080;

    /* renamed from: b  reason: collision with root package name */
    public static int f16194b = 720;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f16195c = false;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f16196d = new Object();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener.class */
    public interface AnimationEndsListener {
        void a();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$CustomViewListener.class */
    public interface CustomViewListener {
        void onResourceReady(Drawable drawable, d<? super Drawable> dVar);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$GifPlayer.class */
    public static class GifPlayer implements g<c> {

        /* renamed from: a  reason: collision with root package name */
        private c f16197a;

        /* renamed from: b  reason: collision with root package name */
        private int f16198b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f16199c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f16200d;
        private int e;
        private AnimationEndsListener f;

        public GifPlayer(Context context, ImageView imageView, int i, int i2, boolean z) {
            this.f16197a = null;
            this.f16198b = 1;
            this.f16200d = false;
            this.e = 0;
            this.f16198b = i2;
            this.f16199c = z;
            GlideUtils.b(context).i().a(Integer.valueOf(i)).a(this).m().a(imageView);
        }

        public GifPlayer(Context context, ImageView imageView, int i, int i2, boolean z, boolean z2, int i3, AnimationEndsListener animationEndsListener) {
            this.f16197a = null;
            this.f16198b = 1;
            this.f16200d = false;
            this.e = 0;
            this.f16198b = i2;
            this.f16199c = z;
            this.e = i3;
            this.f16200d = z2;
            this.f = animationEndsListener;
            GlideUtils.b(context).i().a(Integer.valueOf(i)).a(this).m().a(imageView);
        }

        public GifPlayer(Context context, ImageView imageView, String str) {
            this.f16197a = null;
            this.f16198b = 1;
            this.f16200d = false;
            this.e = 0;
            GlideUtils.b(context).i().a(str).a(this).m().a(imageView);
        }

        public GifPlayer(Context context, ImageView imageView, String str, int i, int i2, boolean z) {
            this.f16197a = null;
            this.f16198b = 1;
            this.f16200d = false;
            this.e = 0;
            this.f16198b = i2;
            this.f16199c = z;
            GlideUtils.b(context).i().a(i).a(str).a(this).m().a(imageView);
        }

        public final void a() {
            c cVar = this.f16197a;
            if (cVar == null) {
                return;
            }
            if (this.f16200d) {
                cVar.a(new b.a() { // from class: com.callapp.contacts.util.glide.GlideUtils.GifPlayer.1

                    /* renamed from: b  reason: collision with root package name */
                    private int f16202b;

                    {
                        this.f16202b = GifPlayer.this.f16198b;
                    }

                    @Override // androidx.l.a.a.b.a
                    public final void a(Drawable drawable) {
                        super.a(drawable);
                        int i = this.f16202b - 1;
                        this.f16202b = i;
                        if (i > 0) {
                            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.util.glide.GlideUtils.GifPlayer.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    GifPlayer.this.f16197a.start();
                                }
                            }, GifPlayer.this.e);
                        } else if (GifPlayer.this.f != null) {
                            GifPlayer.this.f.a();
                        }
                    }
                });
                this.f16197a.a(1);
                this.f16197a.start();
                return;
            }
            cVar.a(this.f16198b);
            this.f16197a.start();
        }

        @Override // com.bumptech.glide.e.g
        public final boolean a(GlideException glideException, Object obj, j<c> jVar, boolean z) {
            return false;
        }

        @Override // com.bumptech.glide.e.g
        public final /* bridge */ /* synthetic */ boolean a(c cVar, Object obj, j<c> jVar, a aVar, boolean z) {
            c cVar2 = cVar;
            if (!(cVar2 instanceof c)) {
                return false;
            }
            this.f16197a = cVar2;
            cVar2.a(this.f16198b);
            if (!this.f16199c) {
                return false;
            }
            a();
            return false;
        }

        public final void b() {
            c cVar = this.f16197a;
            if (cVar != null) {
                cVar.stop();
            }
        }

        public boolean isPlaying() {
            c cVar = this.f16197a;
            if (cVar != null) {
                return cVar.isRunning();
            }
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder.class */
    public static class GlideRequestBuilder {
        private int A;
        private boolean B;
        private int C;
        private boolean D;
        private Drawable E;
        private RoundedCornersTransformation.CornerType F;

        /* renamed from: a  reason: collision with root package name */
        public ImageView f16204a;

        /* renamed from: b  reason: collision with root package name */
        int f16205b;

        /* renamed from: c  reason: collision with root package name */
        int f16206c;

        /* renamed from: d  reason: collision with root package name */
        public ViewSwitcher f16207d;
        public Context e;
        public String f;
        public Integer g;
        public Drawable h;
        public float i;
        public boolean j;
        public int k;
        public boolean l;
        public boolean m;
        public g n;
        public int o;
        public boolean p;
        public boolean q;
        public String r;
        public boolean s;
        public boolean t;
        private View u;
        private CustomViewListener v;
        private RemoteAccountHelper w;
        private int x;
        private PorterDuff.Mode y = PorterDuff.Mode.CLEAR;
        private int z;

        public GlideRequestBuilder(int i) {
            this.f = ImageUtils.getResourceUri(i);
        }

        public GlideRequestBuilder(Context context, String str, View view, CustomViewListener customViewListener) {
            this.e = context;
            this.f = str;
            this.u = view;
            this.v = customViewListener;
        }

        public GlideRequestBuilder(ImageView imageView, int i, Context context) {
            this.f16204a = imageView;
            this.f = ImageUtils.getResourceUri(i);
            this.e = context;
        }

        public GlideRequestBuilder(ImageView imageView, Drawable drawable, Context context) {
            this.f16204a = imageView;
            this.E = drawable;
            this.e = context;
        }

        public GlideRequestBuilder(ImageView imageView, String str, Context context) {
            this.f16204a = imageView;
            this.f = str;
            this.e = context;
        }

        public GlideRequestBuilder(String str) {
            this.f = str;
        }

        private GlideRequest a(GlideRequest glideRequest) {
            if (this.q) {
                return glideRequest;
            }
            if (this.B) {
                return glideRequest.b(new h().a((l<Bitmap>) new RoundedCornersTransformation(this.C, 0, this.F)));
            } else if (this.m) {
                return glideRequest.b(new h().a((l<Bitmap>) BlurTransformation.getInstance()));
            } else {
                Integer num = this.g;
                int i = this.x;
                PorterDuff.Mode mode = this.y;
                return glideRequest.b(new h().a((l<Bitmap>) new CircleBackgroundCrop(num, i != 0 ? new PorterDuffColorFilter(i, mode) : null, this.z, this.A, this.i, this.l, StringUtils.c(this.f))).b(this.h));
            }
        }

        private GlideRequest a(boolean z) {
            GlideRequests b2 = GlideUtils.b(this.e);
            if (this.w != FacebookHelper.get() && StringUtils.c(this.f, "https://graph.facebook.com/") && (StringUtils.c(this.f, "/picture?type=normal") || StringUtils.c(this.f, "/picture?width="))) {
                this.w = FacebookHelper.get();
            }
            if (z) {
                return this.w != null ? b2.j().a((Object) this.w.c(this.f)).b(this.p).a((f) f()) : (StringUtils.c(this.f) || this.p) ? b2.j().a(this.f).a((f) e()) : this.s ? b2.a(this.f).a((f) GlideUtils.b(this.f)) : b2.j().a(this.f);
            }
            if (this.D) {
                return this.w != null ? b2.h().a((Object) this.w.c(this.f)).b(this.p).a((f) f()) : this.s ? b2.a(this.f).a((f) GlideUtils.b(this.f)) : (StringUtils.c(this.f) || this.p) ? b2.h().a(this.f).a((f) e()) : b2.h().a(this.f);
            }
            RemoteAccountHelper remoteAccountHelper = this.w;
            return remoteAccountHelper != null ? b2.a(remoteAccountHelper.c(this.f)).b(this.p).a((f) f()) : this.s ? b2.a(this.f).a((f) GlideUtils.b(this.f)) : (StringUtils.c(this.f) || this.p) ? b2.a(this.f).a((f) e()) : b2.a(this.f);
        }

        private void b(GlideRequest glideRequest) {
            glideRequest.a((GlideRequest) new com.bumptech.glide.e.a.d<View, Drawable>(this.u) { // from class: com.callapp.contacts.util.glide.GlideUtils.GlideRequestBuilder.2
                @Override // com.bumptech.glide.e.a.j
                public final void a(Drawable drawable) {
                    CustomViewListener unused = GlideRequestBuilder.this.v;
                }

                @Override // com.bumptech.glide.e.a.j
                public final /* synthetic */ void a(Object obj, d dVar) {
                    GlideRequestBuilder.this.v.onResourceReady((Drawable) obj, dVar);
                }

                @Override // com.bumptech.glide.e.a.d
                public final void d() {
                    CustomViewListener unused = GlideRequestBuilder.this.v;
                }
            });
        }

        private GlideUrl e() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f);
            sb.append("_");
            sb.append(this.g);
            sb.append("_");
            sb.append(this.x);
            sb.append("_");
            sb.append(this.y.name());
            sb.append("_");
            sb.append(this.z);
            sb.append("_");
            sb.append(this.A);
            sb.append("_");
            sb.append(this.i);
            sb.append("_");
            sb.append(Prefs.dh.get());
            sb.append("_");
            sb.append(((ThemeState) Prefs.di.get()).isLightTheme() ? "light" : "dark");
            sb.append("_");
            sb.append(Prefs.n.get().booleanValue() ? 1620035082410L : Prefs.T.get().intValue());
            return new GlideUrl(sb.toString());
        }

        private GlideUrl f() {
            return new GlideUrl(this.f + "_" + Prefs.T.get());
        }

        public final GlideRequestBuilder a() {
            androidx.swiperefreshlayout.widget.b bVar = new androidx.swiperefreshlayout.widget.b(this.e);
            bVar.a(10.0f);
            bVar.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099786), PorterDuff.Mode.SRC_ATOP));
            bVar.a();
            bVar.start();
            this.h = bVar;
            return this;
        }

        public final GlideRequestBuilder a(int i, int i2) {
            this.f16205b = i;
            this.f16206c = i2;
            return this;
        }

        public final GlideRequestBuilder a(int i, PorterDuff.Mode mode) {
            this.x = i;
            this.y = mode;
            return this;
        }

        public final GlideRequestBuilder a(int i, RoundedCornersTransformation.CornerType cornerType) {
            this.B = true;
            this.F = cornerType;
            this.C = i;
            return this;
        }

        public final GlideRequestBuilder a(DataSource dataSource) {
            if (dataSource != null) {
                this.w = RemoteAccountHelper.a(dataSource);
            }
            return this;
        }

        public final GlideRequestBuilder b(int i, int i2) {
            this.A = i2;
            this.z = i;
            return this;
        }

        public final void b() {
            try {
                a(true).a(this.n).b().get();
            } catch (InterruptedException | ExecutionException e) {
            }
        }

        public final com.bumptech.glide.e.c<Drawable> c() {
            return a(a(false).a(this.n)).b();
        }

        public final void d() {
            GlideRequest glideRequest;
            Context context = this.e;
            if ((context != null && ((this.f16204a != null || this.u != null) && (!(context instanceof Activity) || Activities.a((Activity) context)))) || this.t) {
                GlideRequest a2 = a(this.E != null ? GlideUtils.b(this.e).a(this.E) : a(false));
                int i = this.k;
                if (i > 0) {
                    com.bumptech.glide.load.resource.b.c a3 = com.bumptech.glide.load.resource.b.c.a(i);
                    a.C0141a aVar = new a.C0141a();
                    aVar.f7301a = true;
                    glideRequest = a2.a((com.bumptech.glide.l) a3.a(aVar.a()));
                } else {
                    glideRequest = a2.n();
                }
                int i2 = this.o;
                GlideRequest glideRequest2 = glideRequest;
                if (i2 != 0) {
                    glideRequest2 = glideRequest.b(i2);
                }
                Drawable drawable = this.h;
                GlideRequest glideRequest3 = glideRequest2;
                if (drawable != null) {
                    glideRequest3 = glideRequest2.b(drawable);
                }
                GlideRequest glideRequest4 = glideRequest3;
                if (StringUtils.b((CharSequence) this.r)) {
                    glideRequest4 = glideRequest3.a((f) new GlideUrl(this.r));
                }
                int i3 = this.f16205b;
                GlideRequest glideRequest5 = glideRequest4;
                if (i3 != 0) {
                    int i4 = this.f16206c;
                    glideRequest5 = glideRequest4;
                    if (i4 != 0) {
                        glideRequest5 = glideRequest4.b(i3, i4);
                    }
                }
                GlideRequest c2 = glideRequest5.a(new g() { // from class: com.callapp.contacts.util.glide.GlideUtils.GlideRequestBuilder.1
                    @Override // com.bumptech.glide.e.g
                    public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                        if (GlideRequestBuilder.this.n == null) {
                            return false;
                        }
                        GlideRequestBuilder.this.n.a(glideException, obj, jVar, z);
                        return false;
                    }

                    @Override // com.bumptech.glide.e.g
                    public final boolean a(Object obj, Object obj2, j jVar, com.bumptech.glide.load.a aVar2, boolean z) {
                        if (GlideRequestBuilder.this.f16207d != null) {
                            GlideUtils.b(GlideRequestBuilder.this.e).a(GlideRequestBuilder.this.f16207d.getCurrentView());
                            GlideRequestBuilder.this.f16207d.showNext();
                        }
                        if (GlideRequestBuilder.this.n == null) {
                            return false;
                        }
                        GlideRequestBuilder.this.n.a(obj, obj2, jVar, aVar2, z);
                        return false;
                    }
                });
                if (this.t) {
                    c2.c();
                    return;
                }
                ImageView imageView = this.f16204a;
                if (imageView != null) {
                    c2.a(imageView);
                } else if (this.u != null) {
                    b(c2);
                }
            }
        }

        public Integer getBackgroundColor() {
            return this.g;
        }

        public Bitmap getBitmap() {
            Bitmap bitmap;
            this.D = true;
            try {
                bitmap = (Bitmap) a(a(false).a(this.n)).b().get();
            } catch (InterruptedException | ExecutionException e) {
                bitmap = null;
            }
            return bitmap;
        }

        public String getPhotoUrl() {
            return this.f;
        }

        public Drawable getPlaceHolder() {
            return this.h;
        }

        public com.bumptech.glide.e.c<Bitmap> getResizedBitmap(int i) {
            this.D = true;
            return a(a(false).a(this.n)).a(i, i);
        }

        public com.bumptech.glide.e.c<Bitmap> getTargetBitmap() {
            this.D = true;
            return a(a(false).a(this.n)).b();
        }

        public boolean isForce() {
            return this.p;
        }

        public boolean isShowInitialsTextView() {
            return this.j;
        }
    }

    public static com.bumptech.glide.c a(Context context) {
        if (!f16195c) {
            synchronized (f16196d) {
                if (!f16195c) {
                    com.bumptech.glide.c a2 = GlideApp.a(context);
                    f16195c = true;
                    return a2;
                }
            }
        }
        return GlideApp.a(context);
    }

    public static com.bumptech.glide.e.c<Bitmap> a(int i, ContactData contactData) {
        GlideRequestBuilder glideRequestBuilder = new GlideRequestBuilder(i);
        glideRequestBuilder.l = true;
        GlideRequestBuilder a2 = glideRequestBuilder.a(-1, PorterDuff.Mode.SRC_IN);
        a2.g = Integer.valueOf((contactData == null || !contactData.isSpammer()) ? ThemeUtils.getColor(2131099786) : ThemeUtils.getColor(2131099676));
        a2.e = CallAppApplication.get();
        return a2.getResizedBitmap(Activities.getNotificationLargeIconHeight());
    }

    public static com.bumptech.glide.e.c<Bitmap> a(String str) {
        GlideRequestBuilder glideRequestBuilder = new GlideRequestBuilder(str);
        glideRequestBuilder.l = true;
        glideRequestBuilder.q = true;
        glideRequestBuilder.e = CallAppApplication.get();
        return glideRequestBuilder.getTargetBitmap();
    }

    public static com.bumptech.glide.e.c<Bitmap> a(String str, ContactData contactData) {
        CallAppRequestListener callAppRequestListener = null;
        GlideRequestBuilder a2 = new GlideRequestBuilder(str).a(contactData != null ? contactData.getPhotoDataSource() : null);
        a2.l = true;
        a2.g = Integer.valueOf((contactData == null || contactData.getPhotoBGColor() == null) ? ThemeUtils.getColor(2131100228) : contactData.getPhotoBGColor().intValue());
        a2.e = CallAppApplication.get();
        if (contactData != null) {
            callAppRequestListener = new CallAppRequestListener(str, contactData);
        }
        a2.n = callAppRequestListener;
        return a2.getTargetBitmap();
    }

    public static void a() {
        File file;
        File parentFile;
        CLog.a(GlideUtils.class, "Start task deleting glide cache");
        try {
            file = b(CallAppApplication.get()).j().a((Integer) 2131232037).b().get();
        } catch (InterruptedException | ExecutionException e) {
            file = null;
        }
        if (file != null && file.exists() && (parentFile = file.getParentFile()) != null && parentFile.exists()) {
            CLog.a(GlideUtils.class, "Glide cache directory: ".concat(String.valueOf(parentFile)));
            File[] listFiles = parentFile.listFiles();
            if (CollectionUtils.b(listFiles)) {
                int i = 0;
                for (File file2 : listFiles) {
                    i = i;
                    if (DateUtils.b(new Date(file2.lastModified()), 2131427408)) {
                        file2.delete();
                        i++;
                        CLog.a(GlideUtils.class, file2.getName() + " Deleted (" + i + "/" + listFiles.length + ")");
                    }
                }
                CLog.a(GlideUtils.class, "Finished deleting from cache (" + i + "/" + listFiles.length + ")");
                return;
            }
            CLog.a(GlideUtils.class, "Cache dir is empty");
        }
    }

    public static com.bumptech.glide.f.d b(String str) {
        return StringUtils.b((CharSequence) str) ? new com.bumptech.glide.f.d("", new File(str).lastModified(), 0) : new com.bumptech.glide.f.d("", 0L, 0);
    }

    public static GlideRequests b(Context context) {
        if (!f16195c) {
            synchronized (f16196d) {
                if (!f16195c) {
                    GlideRequests b2 = GlideApp.b(context);
                    f16195c = true;
                    return b2;
                }
            }
        }
        return GlideApp.b(context);
    }

    public static com.bumptech.glide.e.c<Bitmap> getFutureTargetForResourceTarget(int i) {
        GlideRequestBuilder glideRequestBuilder = new GlideRequestBuilder(i);
        glideRequestBuilder.e = CallAppApplication.get();
        return glideRequestBuilder.getTargetBitmap();
    }
}
