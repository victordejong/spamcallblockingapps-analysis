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
import androidx.p057l.p058a.p059a.AbstractC1196b;
import androidx.swiperefreshlayout.widget.C2808b;
import com.bumptech.glide.AbstractC3657l;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.resource.p123b.C3843c;
import com.bumptech.glide.load.resource.p125d.C3909c;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.AbstractFutureC3598c;
import com.bumptech.glide.p112e.C3605h;
import com.bumptech.glide.p112e.p113a.AbstractC3576d;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
import com.bumptech.glide.p112e.p114b.C3590a;
import com.bumptech.glide.p115f.C3615d;
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

    /* renamed from: a */
    public static int f28216a = 1080;

    /* renamed from: b */
    public static int f28217b = 720;

    /* renamed from: c */
    private static boolean f28218c = false;

    /* renamed from: d */
    private static final Object f28219d = new Object();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener.class */
    public interface AnimationEndsListener {
        /* renamed from: a */
        void mo26574a();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$CustomViewListener.class */
    public interface CustomViewListener {
        void onResourceReady(Drawable drawable, AbstractC3595d<? super Drawable> abstractC3595d);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$GifPlayer.class */
    public static class GifPlayer implements AbstractC3604g<C3909c> {

        /* renamed from: a */
        private C3909c f28220a;

        /* renamed from: b */
        private int f28221b;

        /* renamed from: c */
        private boolean f28222c;

        /* renamed from: d */
        private boolean f28223d;

        /* renamed from: e */
        private int f28224e;

        /* renamed from: f */
        private AnimationEndsListener f28225f;

        public GifPlayer(Context context, ImageView imageView, int i, int i2, boolean z) {
            this.f28220a = null;
            this.f28221b = 1;
            this.f28223d = false;
            this.f28224e = 0;
            this.f28221b = i2;
            this.f28222c = z;
            GlideUtils.m27035b(context).m27042i().mo27090a(Integer.valueOf(i)).mo27099a(this).m27058m().m37562a(imageView);
        }

        public GifPlayer(Context context, ImageView imageView, int i, int i2, boolean z, boolean z2, int i3, AnimationEndsListener animationEndsListener) {
            this.f28220a = null;
            this.f28221b = 1;
            this.f28223d = false;
            this.f28224e = 0;
            this.f28221b = i2;
            this.f28222c = z;
            this.f28224e = i3;
            this.f28223d = z2;
            this.f28225f = animationEndsListener;
            GlideUtils.m27035b(context).m27042i().mo27090a(Integer.valueOf(i)).mo27099a(this).m27058m().m37562a(imageView);
        }

        public GifPlayer(Context context, ImageView imageView, String str) {
            this.f28220a = null;
            this.f28221b = 1;
            this.f28223d = false;
            this.f28224e = 0;
            GlideUtils.m27035b(context).m27042i().mo27088a(str).mo27099a(this).m27058m().m37562a(imageView);
        }

        public GifPlayer(Context context, ImageView imageView, String str, int i, int i2, boolean z) {
            this.f28220a = null;
            this.f28221b = 1;
            this.f28223d = false;
            this.f28224e = 0;
            this.f28221b = i2;
            this.f28222c = z;
            GlideUtils.m27035b(context).m27042i().mo27104a(i).mo27088a(str).mo27099a(this).m27058m().m37562a(imageView);
        }

        /* renamed from: a */
        public final void m27033a() {
            C3909c c3909c = this.f28220a;
            if (c3909c != null) {
                if (!this.f28223d) {
                    c3909c.m37222a(this.f28221b);
                    this.f28220a.start();
                    return;
                }
                c3909c.m37221a(new AbstractC1196b.AbstractC1197a() { // from class: com.callapp.contacts.util.glide.GlideUtils.GifPlayer.1

                    /* renamed from: b */
                    private int f28227b;

                    {
                        GifPlayer.this = this;
                        this.f28227b = this.f28221b;
                    }

                    @Override // androidx.p057l.p058a.p059a.AbstractC1196b.AbstractC1197a
                    /* renamed from: a */
                    public final void mo10346a(Drawable drawable) {
                        super.mo10346a(drawable);
                        int i = this.f28227b - 1;
                        this.f28227b = i;
                        if (i > 0) {
                            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.util.glide.GlideUtils.GifPlayer.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    GifPlayer.this.f28220a.start();
                                }
                            }, GifPlayer.this.f28224e);
                        } else if (GifPlayer.this.f28225f == null) {
                        } else {
                            GifPlayer.this.f28225f.mo26574a();
                        }
                    }
                });
                this.f28220a.m37222a(1);
                this.f28220a.start();
            }
        }

        @Override // com.bumptech.glide.p112e.AbstractC3604g
        /* renamed from: a */
        public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j<C3909c> abstractC3585j, boolean z) {
            return false;
        }

        @Override // com.bumptech.glide.p112e.AbstractC3604g
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo26383a(C3909c c3909c, Object obj, AbstractC3585j<C3909c> abstractC3585j, EnumC3658a enumC3658a, boolean z) {
            C3909c c3909c2 = c3909c;
            if (c3909c2 instanceof C3909c) {
                this.f28220a = c3909c2;
                c3909c2.m37222a(this.f28221b);
                if (!this.f28222c) {
                    return false;
                }
                m27033a();
                return false;
            }
            return false;
        }

        /* renamed from: b */
        public final void m27031b() {
            C3909c c3909c = this.f28220a;
            if (c3909c != null) {
                c3909c.stop();
            }
        }

        public boolean isPlaying() {
            C3909c c3909c = this.f28220a;
            if (c3909c != null) {
                return c3909c.isRunning();
            }
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder.class */
    public static class GlideRequestBuilder {

        /* renamed from: A */
        private int f28229A;

        /* renamed from: B */
        private boolean f28230B;

        /* renamed from: C */
        private int f28231C;

        /* renamed from: D */
        private boolean f28232D;

        /* renamed from: E */
        private Drawable f28233E;

        /* renamed from: F */
        private RoundedCornersTransformation.CornerType f28234F;

        /* renamed from: a */
        public ImageView f28235a;

        /* renamed from: b */
        int f28236b;

        /* renamed from: c */
        int f28237c;

        /* renamed from: d */
        public ViewSwitcher f28238d;

        /* renamed from: e */
        public Context f28239e;

        /* renamed from: f */
        public String f28240f;

        /* renamed from: g */
        public Integer f28241g;

        /* renamed from: h */
        public Drawable f28242h;

        /* renamed from: i */
        public float f28243i;

        /* renamed from: j */
        public boolean f28244j;

        /* renamed from: k */
        public int f28245k;

        /* renamed from: l */
        public boolean f28246l;

        /* renamed from: m */
        public boolean f28247m;

        /* renamed from: n */
        public AbstractC3604g f28248n;

        /* renamed from: o */
        public int f28249o;

        /* renamed from: p */
        public boolean f28250p;

        /* renamed from: q */
        public boolean f28251q;

        /* renamed from: r */
        public String f28252r;

        /* renamed from: s */
        public boolean f28253s;

        /* renamed from: t */
        public boolean f28254t;

        /* renamed from: u */
        private View f28255u;

        /* renamed from: v */
        private CustomViewListener f28256v;

        /* renamed from: w */
        private RemoteAccountHelper f28257w;

        /* renamed from: x */
        private int f28258x;

        /* renamed from: y */
        private PorterDuff.Mode f28259y = PorterDuff.Mode.CLEAR;

        /* renamed from: z */
        private int f28260z;

        public GlideRequestBuilder(int i) {
            this.f28240f = ImageUtils.getResourceUri(i);
        }

        public GlideRequestBuilder(Context context, String str, View view, CustomViewListener customViewListener) {
            this.f28239e = context;
            this.f28240f = str;
            this.f28255u = view;
            this.f28256v = customViewListener;
        }

        public GlideRequestBuilder(ImageView imageView, int i, Context context) {
            this.f28235a = imageView;
            this.f28240f = ImageUtils.getResourceUri(i);
            this.f28239e = context;
        }

        public GlideRequestBuilder(ImageView imageView, Drawable drawable, Context context) {
            this.f28235a = imageView;
            this.f28233E = drawable;
            this.f28239e = context;
        }

        public GlideRequestBuilder(ImageView imageView, String str, Context context) {
            this.f28235a = imageView;
            this.f28240f = str;
            this.f28239e = context;
        }

        public GlideRequestBuilder(String str) {
            this.f28240f = str;
        }

        /* renamed from: a */
        private GlideRequest m27022a(GlideRequest glideRequest) {
            if (this.f28251q) {
                return glideRequest;
            }
            if (this.f28230B) {
                return glideRequest.mo27083b(new C3605h().mo27093a((AbstractC3826l<Bitmap>) new RoundedCornersTransformation(this.f28231C, 0, this.f28234F)));
            } else if (this.f28247m) {
                return glideRequest.mo27083b(new C3605h().mo27093a((AbstractC3826l<Bitmap>) BlurTransformation.getInstance()));
            } else {
                Integer num = this.f28241g;
                int i = this.f28258x;
                PorterDuff.Mode mode = this.f28259y;
                return glideRequest.mo27083b(new C3605h().mo27093a((AbstractC3826l<Bitmap>) new CircleBackgroundCrop(num, i != 0 ? new PorterDuffColorFilter(i, mode) : null, this.f28260z, this.f28229A, this.f28243i, this.f28246l, StringUtils.m26038c(this.f28240f))).mo27084b(this.f28242h));
            }
        }

        /* renamed from: a */
        private GlideRequest m27020a(boolean z) {
            GlideRequests m27035b = GlideUtils.m27035b(this.f28239e);
            if (this.f28257w != FacebookHelper.get() && StringUtils.m26037c(this.f28240f, "https://graph.facebook.com/") && (StringUtils.m26037c(this.f28240f, "/picture?type=normal") || StringUtils.m26037c(this.f28240f, "/picture?width="))) {
                this.f28257w = FacebookHelper.get();
            }
            if (z) {
                return this.f28257w != null ? m27035b.m27041j().mo27089a((Object) this.f28257w.mo29209c(this.f28240f)).mo27075b(this.f28250p).mo27095a((AbstractC3818f) m27010f()) : (StringUtils.m26038c(this.f28240f) || this.f28250p) ? m27035b.m27041j().mo27088a(this.f28240f).mo27095a((AbstractC3818f) m27011e()) : this.f28253s ? m27035b.mo27052a(this.f28240f).mo27095a((AbstractC3818f) GlideUtils.m27034b(this.f28240f)) : m27035b.m27041j().mo27088a(this.f28240f);
            } else if (this.f28232D) {
                return this.f28257w != null ? m27035b.m27043h().mo27089a((Object) this.f28257w.mo29209c(this.f28240f)).mo27075b(this.f28250p).mo27095a((AbstractC3818f) m27010f()) : this.f28253s ? m27035b.mo27052a(this.f28240f).mo27095a((AbstractC3818f) GlideUtils.m27034b(this.f28240f)) : (StringUtils.m26038c(this.f28240f) || this.f28250p) ? m27035b.m27043h().mo27088a(this.f28240f).mo27095a((AbstractC3818f) m27011e()) : m27035b.m27043h().mo27088a(this.f28240f);
            } else {
                RemoteAccountHelper remoteAccountHelper = this.f28257w;
                return remoteAccountHelper != null ? m27035b.mo27053a(remoteAccountHelper.mo29209c(this.f28240f)).mo27075b(this.f28250p).mo27095a((AbstractC3818f) m27010f()) : this.f28253s ? m27035b.mo27052a(this.f28240f).mo27095a((AbstractC3818f) GlideUtils.m27034b(this.f28240f)) : (StringUtils.m26038c(this.f28240f) || this.f28250p) ? m27035b.mo27052a(this.f28240f).mo27095a((AbstractC3818f) m27011e()) : m27035b.mo27052a(this.f28240f);
            }
        }

        /* renamed from: b */
        private void m27017b(GlideRequest glideRequest) {
            glideRequest.m37561a((GlideRequest) new AbstractC3576d<View, Drawable>(this.f28255u) { // from class: com.callapp.contacts.util.glide.GlideUtils.GlideRequestBuilder.2
                @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
                /* renamed from: a */
                public final void mo27009a(Drawable drawable) {
                    CustomViewListener unused = GlideRequestBuilder.this.f28256v;
                }

                @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
                /* renamed from: a */
                public final /* synthetic */ void mo27008a(Object obj, AbstractC3595d abstractC3595d) {
                    GlideRequestBuilder.this.f28256v.onResourceReady((Drawable) obj, abstractC3595d);
                }

                @Override // com.bumptech.glide.p112e.p113a.AbstractC3576d
                /* renamed from: d */
                public final void mo27007d() {
                    CustomViewListener unused = GlideRequestBuilder.this.f28256v;
                }
            });
        }

        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        /* renamed from: e */
        private GlideUrl m27011e() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f28240f);
            sb.append("_");
            sb.append(this.f28241g);
            sb.append("_");
            sb.append(this.f28258x);
            sb.append("_");
            sb.append(this.f28259y.name());
            sb.append("_");
            sb.append(this.f28260z);
            sb.append("_");
            sb.append(this.f28229A);
            sb.append("_");
            sb.append(this.f28243i);
            sb.append("_");
            sb.append(Prefs.f26416dh.get());
            sb.append("_");
            sb.append(((ThemeState) Prefs.f26417di.get()).isLightTheme() ? "light" : "dark");
            sb.append("_");
            sb.append((long) (Prefs.f26657n.get().booleanValue() ? (char) 39082 : Prefs.f26216T.get().intValue()));
            return new GlideUrl(sb.toString());
        }

        /* renamed from: f */
        private GlideUrl m27010f() {
            return new GlideUrl(this.f28240f + "_" + Prefs.f26216T.get());
        }

        /* renamed from: a */
        public final GlideRequestBuilder m27027a() {
            C2808b c2808b = new C2808b(this.f28239e);
            c2808b.m39857a(10.0f);
            c2808b.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099786), PorterDuff.Mode.SRC_ATOP));
            c2808b.m39858a();
            c2808b.start();
            this.f28242h = c2808b;
            return this;
        }

        /* renamed from: a */
        public final GlideRequestBuilder m27026a(int i, int i2) {
            this.f28236b = i;
            this.f28237c = i2;
            return this;
        }

        /* renamed from: a */
        public final GlideRequestBuilder m27025a(int i, PorterDuff.Mode mode) {
            this.f28258x = i;
            this.f28259y = mode;
            return this;
        }

        /* renamed from: a */
        public final GlideRequestBuilder m27024a(int i, RoundedCornersTransformation.CornerType cornerType) {
            this.f28230B = true;
            this.f28234F = cornerType;
            this.f28231C = i;
            return this;
        }

        /* renamed from: a */
        public final GlideRequestBuilder m27023a(DataSource dataSource) {
            if (dataSource != null) {
                this.f28257w = RemoteAccountHelper.m29244a(dataSource);
            }
            return this;
        }

        /* renamed from: b */
        public final GlideRequestBuilder m27018b(int i, int i2) {
            this.f28229A = i2;
            this.f28260z = i;
            return this;
        }

        /* renamed from: b */
        public final void m27019b() {
            try {
                m27020a(true).mo27099a(this.f28248n).m37555b().get();
            } catch (InterruptedException | ExecutionException e) {
            }
        }

        /* renamed from: c */
        public final AbstractFutureC3598c<Drawable> m27015c() {
            return m27022a(m27020a(false).mo27099a(this.f28248n)).m37555b();
        }

        /* renamed from: d */
        public final void m27013d() {
            GlideRequest glideRequest;
            Context context = this.f28239e;
            if ((context == null || ((this.f28235a == null && this.f28255u == null) || ((context instanceof Activity) && !Activities.m27696a((Activity) context)))) && !this.f28254t) {
                return;
            }
            GlideRequest m27022a = m27022a(this.f28233E != null ? GlideUtils.m27035b(this.f28239e).mo27055a(this.f28233E) : m27020a(false));
            int i = this.f28245k;
            if (i > 0) {
                C3843c m37311a = C3843c.m37311a(i);
                C3590a.C3591a c3591a = new C3590a.C3591a();
                c3591a.f13658a = true;
                glideRequest = m27022a.mo27097a((AbstractC3657l) m37311a.m37310a(c3591a.m37667a()));
            } else {
                glideRequest = m27022a.m27057n();
            }
            int i2 = this.f28249o;
            GlideRequest glideRequest2 = glideRequest;
            if (i2 != 0) {
                glideRequest2 = glideRequest.mo27086b(i2);
            }
            Drawable drawable = this.f28242h;
            GlideRequest glideRequest3 = glideRequest2;
            if (drawable != null) {
                glideRequest3 = glideRequest2.mo27084b(drawable);
            }
            GlideRequest glideRequest4 = glideRequest3;
            if (StringUtils.m26045b((CharSequence) this.f28252r)) {
                glideRequest4 = glideRequest3.mo27095a((AbstractC3818f) new GlideUrl(this.f28252r));
            }
            int i3 = this.f28236b;
            GlideRequest glideRequest5 = glideRequest4;
            if (i3 != 0) {
                int i4 = this.f28237c;
                glideRequest5 = glideRequest4;
                if (i4 != 0) {
                    glideRequest5 = glideRequest4.mo27085b(i3, i4);
                }
            }
            GlideRequest mo27099a = glideRequest5.mo27099a(new AbstractC3604g() { // from class: com.callapp.contacts.util.glide.GlideUtils.GlideRequestBuilder.1
                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                    if (GlideRequestBuilder.this.f28248n != null) {
                        GlideRequestBuilder.this.f28248n.mo26384a(glideException, obj, abstractC3585j, z);
                        return false;
                    }
                    return false;
                }

                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                    if (GlideRequestBuilder.this.f28238d != null) {
                        GlideUtils.m27035b(GlideRequestBuilder.this.f28239e).m37549a(GlideRequestBuilder.this.f28238d.getCurrentView());
                        GlideRequestBuilder.this.f28238d.showNext();
                    }
                    if (GlideRequestBuilder.this.f28248n != null) {
                        GlideRequestBuilder.this.f28248n.mo26383a(obj, obj2, abstractC3585j, enumC3658a, z);
                        return false;
                    }
                    return false;
                }
            });
            if (this.f28254t) {
                mo27099a.m37550c();
                return;
            }
            ImageView imageView = this.f28235a;
            if (imageView != null) {
                mo27099a.m37562a(imageView);
            } else if (this.f28255u == null) {
            } else {
                m27017b(mo27099a);
            }
        }

        public Integer getBackgroundColor() {
            return this.f28241g;
        }

        public Bitmap getBitmap() {
            Bitmap bitmap;
            this.f28232D = true;
            try {
                bitmap = (Bitmap) m27022a(m27020a(false).mo27099a(this.f28248n)).m37555b().get();
            } catch (InterruptedException | ExecutionException e) {
                bitmap = null;
            }
            return bitmap;
        }

        public String getPhotoUrl() {
            return this.f28240f;
        }

        public Drawable getPlaceHolder() {
            return this.f28242h;
        }

        public AbstractFutureC3598c<Bitmap> getResizedBitmap(int i) {
            this.f28232D = true;
            return m27022a(m27020a(false).mo27099a(this.f28248n)).m37563a(i, i);
        }

        public AbstractFutureC3598c<Bitmap> getTargetBitmap() {
            this.f28232D = true;
            return m27022a(m27020a(false).mo27099a(this.f28248n)).m37555b();
        }

        public boolean isForce() {
            return this.f28250p;
        }

        public boolean isShowInitialsTextView() {
            return this.f28244j;
        }
    }

    /* renamed from: a */
    public static ComponentCallbacks2C3548c m27038a(Context context) {
        if (!f28218c) {
            synchronized (f28219d) {
                if (!f28218c) {
                    ComponentCallbacks2C3548c m27109a = GlideApp.m27109a(context);
                    f28218c = true;
                    return m27109a;
                }
            }
        }
        return GlideApp.m27109a(context);
    }

    /* renamed from: a */
    public static AbstractFutureC3598c<Bitmap> m27039a(int i, ContactData contactData) {
        GlideRequestBuilder glideRequestBuilder = new GlideRequestBuilder(i);
        glideRequestBuilder.f28246l = true;
        GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(-1, PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf((contactData == null || !contactData.isSpammer()) ? ThemeUtils.getColor(2131099786) : ThemeUtils.getColor(2131099676));
        m27025a.f28239e = CallAppApplication.get();
        return m27025a.getResizedBitmap(Activities.getNotificationLargeIconHeight());
    }

    /* renamed from: a */
    public static AbstractFutureC3598c<Bitmap> m27037a(String str) {
        GlideRequestBuilder glideRequestBuilder = new GlideRequestBuilder(str);
        glideRequestBuilder.f28246l = true;
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.f28239e = CallAppApplication.get();
        return glideRequestBuilder.getTargetBitmap();
    }

    /* renamed from: a */
    public static AbstractFutureC3598c<Bitmap> m27036a(String str, ContactData contactData) {
        GlideRequestBuilder m27023a = new GlideRequestBuilder(str).m27023a(contactData != null ? contactData.getPhotoDataSource() : null);
        m27023a.f28246l = true;
        m27023a.f28241g = Integer.valueOf((contactData == null || contactData.getPhotoBGColor() == null) ? ThemeUtils.getColor(2131100228) : contactData.getPhotoBGColor().intValue());
        m27023a.f28239e = CallAppApplication.get();
        CallAppRequestListener callAppRequestListener = null;
        if (contactData != null) {
            callAppRequestListener = new CallAppRequestListener(str, contactData);
        }
        m27023a.f28248n = callAppRequestListener;
        return m27023a.getTargetBitmap();
    }

    /* renamed from: a */
    public static void m27040a() {
        File file;
        File parentFile;
        CLog.m27611a(GlideUtils.class, "Start task deleting glide cache");
        try {
            file = m27035b(CallAppApplication.get()).m27041j().mo27090a((Integer) 2131232037).m37555b().get();
        } catch (InterruptedException | ExecutionException e) {
            file = null;
        }
        if (file == null || !file.exists() || (parentFile = file.getParentFile()) == null || !parentFile.exists()) {
            return;
        }
        CLog.m27611a(GlideUtils.class, "Glide cache directory: ".concat(String.valueOf(parentFile)));
        File[] listFiles = parentFile.listFiles();
        if (!CollectionUtils.m26066b(listFiles)) {
            CLog.m27611a(GlideUtils.class, "Cache dir is empty");
            return;
        }
        int length = listFiles.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                CLog.m27611a(GlideUtils.class, "Finished deleting from cache (" + i3 + "/" + listFiles.length + ")");
                return;
            }
            File file2 = listFiles[i];
            int i4 = i3;
            if (DateUtils.m27119b(new Date(file2.lastModified()), 2131427408)) {
                file2.delete();
                i4 = i3 + 1;
                CLog.m27611a(GlideUtils.class, file2.getName() + " Deleted (" + i4 + "/" + listFiles.length + ")");
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: b */
    public static C3615d m27034b(String str) {
        return StringUtils.m26045b((CharSequence) str) ? new C3615d("", new File(str).lastModified(), 0) : new C3615d("", 0L, 0);
    }

    /* renamed from: b */
    public static GlideRequests m27035b(Context context) {
        if (!f28218c) {
            synchronized (f28219d) {
                if (!f28218c) {
                    GlideRequests m27108b = GlideApp.m27108b(context);
                    f28218c = true;
                    return m27108b;
                }
            }
        }
        return GlideApp.m27108b(context);
    }

    public static AbstractFutureC3598c<Bitmap> getFutureTargetForResourceTarget(int i) {
        GlideRequestBuilder glideRequestBuilder = new GlideRequestBuilder(i);
        glideRequestBuilder.f28239e = CallAppApplication.get();
        return glideRequestBuilder.getTargetBitmap();
    }
}
