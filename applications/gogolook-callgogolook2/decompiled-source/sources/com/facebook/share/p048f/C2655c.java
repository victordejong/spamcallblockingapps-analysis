package com.facebook.share.p048f;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.facebook.AccessToken;
import com.facebook.appevents.C2283m;
import com.facebook.internal.AbstractC2404f;
import com.facebook.internal.AbstractC2414h;
import com.facebook.internal.C2371a;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2406g;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2486r;
import com.facebook.internal.C2504z;
import com.facebook.share.AbstractC2568c;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.p046d.C2576c;
import com.facebook.share.p046d.C2622m;
import com.facebook.share.p046d.C2627q;
import com.facebook.share.p046d.C2633s;
import com.facebook.share.p046d.C2645u;
import com.facebook.share.p046d.EnumC2570a;
import com.facebook.share.p046d.EnumC2623n;
import com.facebook.share.p046d.EnumC2632r;
import com.facebook.share.p046d.EnumC2644t;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* renamed from: com.facebook.share.f.c */
/* loaded from: classes-dex2jar.jar:com/facebook/share/f/c.class */
public final class C2655c extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a> implements AbstractC2568c {

    /* renamed from: h */
    public static final String f3587h = "c";

    /* renamed from: f */
    public boolean f3588f;

    /* renamed from: g */
    public boolean f3589g;

    /* renamed from: com.facebook.share.f.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$a.class */
    public static /* synthetic */ class C2656a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3590a = new int[EnumC2660d.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f3590a[EnumC2660d.AUTOMATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3590a[EnumC2660d.WEB.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3590a[EnumC2660d.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.facebook.share.f.c$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$b.class */
    public class C2657b extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a>.AbstractC2415a {

        /* renamed from: com.facebook.share.f.c$b$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$b$a.class */
        public class C2658a implements C2406g.AbstractC2407a {

            /* renamed from: a */
            public final /* synthetic */ C2371a f3592a;

            /* renamed from: b */
            public final /* synthetic */ ShareContent f3593b;

            /* renamed from: c */
            public final /* synthetic */ boolean f3594c;

            public C2658a(C2657b bVar, C2371a aVar, ShareContent shareContent, boolean z) {
                this.f3592a = aVar;
                this.f3593b = shareContent;
                this.f3594c = z;
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            /* renamed from: a */
            public Bundle mo33979a() {
                return C2576c.m34268a(this.f3592a.m34982a(), this.f3593b, this.f3594c);
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            public Bundle getParameters() {
                return C2622m.m34133a(this.f3592a.m34982a(), this.f3593b, this.f3594c);
            }
        }

        public C2657b() {
            super(C2655c.this);
        }

        public /* synthetic */ C2657b(C2655c cVar, C2656a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(ShareContent shareContent) {
            C2627q.m34102b(shareContent);
            C2371a b = C2655c.this.mo33997b();
            C2406g.m34885a(b, new C2658a(this, b, shareContent, C2655c.this.m33988f()), C2655c.m33989e(shareContent.getClass()));
            return b;
        }

        @Override // com.facebook.internal.AbstractC2414h.AbstractC2415a
        /* renamed from: a */
        public Object mo33978a() {
            return EnumC2660d.NATIVE;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareCameraEffectContent) && C2655c.m33992c((Class<? extends ShareContent>) shareContent.getClass());
        }
    }

    /* renamed from: com.facebook.share.f.c$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$c.class */
    public class C2659c extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a>.AbstractC2415a {
        public C2659c() {
            super(C2655c.this);
        }

        public /* synthetic */ C2659c(C2655c cVar, C2656a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(ShareContent shareContent) {
            Bundle bundle;
            C2655c cVar = C2655c.this;
            cVar.m34002a(cVar.m34796c(), shareContent, EnumC2660d.FEED);
            C2371a b = C2655c.this.mo33997b();
            if (shareContent instanceof ShareLinkContent) {
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent;
                C2627q.m34084d(shareLinkContent);
                bundle = C2645u.m34018b(shareLinkContent);
            } else {
                bundle = C2645u.m34023a((ShareFeedContent) shareContent);
            }
            C2406g.m34882a(b, "feed", bundle);
            return b;
        }

        @Override // com.facebook.internal.AbstractC2414h.AbstractC2415a
        /* renamed from: a */
        public Object mo33978a() {
            return EnumC2660d.FEED;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareLinkContent) || (shareContent instanceof ShareFeedContent);
        }
    }

    /* renamed from: com.facebook.share.f.c$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$d.class */
    public enum EnumC2660d {
        AUTOMATIC,
        NATIVE,
        WEB,
        FEED
    }

    /* renamed from: com.facebook.share.f.c$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$e.class */
    public class C2661e extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a>.AbstractC2415a {

        /* renamed from: com.facebook.share.f.c$e$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$e$a.class */
        public class C2662a implements C2406g.AbstractC2407a {

            /* renamed from: a */
            public final /* synthetic */ C2371a f3602a;

            /* renamed from: b */
            public final /* synthetic */ ShareContent f3603b;

            /* renamed from: c */
            public final /* synthetic */ boolean f3604c;

            public C2662a(C2661e eVar, C2371a aVar, ShareContent shareContent, boolean z) {
                this.f3602a = aVar;
                this.f3603b = shareContent;
                this.f3604c = z;
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            /* renamed from: a */
            public Bundle mo33979a() {
                return C2576c.m34268a(this.f3602a.m34982a(), this.f3603b, this.f3604c);
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            public Bundle getParameters() {
                return C2622m.m34133a(this.f3602a.m34982a(), this.f3603b, this.f3604c);
            }
        }

        public C2661e() {
            super(C2655c.this);
        }

        public /* synthetic */ C2661e(C2655c cVar, C2656a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(ShareContent shareContent) {
            C2655c cVar = C2655c.this;
            cVar.m34002a(cVar.m34796c(), shareContent, EnumC2660d.NATIVE);
            C2627q.m34102b(shareContent);
            C2371a b = C2655c.this.mo33997b();
            C2406g.m34885a(b, new C2662a(this, b, shareContent, C2655c.this.m33988f()), C2655c.m33989e(shareContent.getClass()));
            return b;
        }

        @Override // com.facebook.internal.AbstractC2414h.AbstractC2415a
        /* renamed from: a */
        public Object mo33978a() {
            return EnumC2660d.NATIVE;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(ShareContent shareContent, boolean z) {
            boolean z2;
            boolean z3 = false;
            if (shareContent != null) {
                z3 = false;
                if (!(shareContent instanceof ShareCameraEffectContent)) {
                    if (shareContent instanceof ShareStoryContent) {
                        z3 = false;
                    } else {
                        if (!z) {
                            boolean a = shareContent.m33918f() != null ? C2406g.m34881a(EnumC2632r.HASHTAG) : true;
                            z2 = a;
                            if (shareContent instanceof ShareLinkContent) {
                                z2 = a;
                                if (!C2408g0.m34816d(((ShareLinkContent) shareContent).m33895j())) {
                                    z2 = a & C2406g.m34881a(EnumC2632r.LINK_SHARE_QUOTES);
                                }
                            }
                        } else {
                            z2 = true;
                        }
                        z3 = false;
                        if (z2) {
                            z3 = false;
                            if (C2655c.m33992c((Class<? extends ShareContent>) shareContent.getClass())) {
                                z3 = true;
                            }
                        }
                    }
                }
            }
            return z3;
        }
    }

    /* renamed from: com.facebook.share.f.c$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$f.class */
    public class C2663f extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a>.AbstractC2415a {

        /* renamed from: com.facebook.share.f.c$f$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$f$a.class */
        public class C2664a implements C2406g.AbstractC2407a {

            /* renamed from: a */
            public final /* synthetic */ C2371a f3606a;

            /* renamed from: b */
            public final /* synthetic */ ShareContent f3607b;

            /* renamed from: c */
            public final /* synthetic */ boolean f3608c;

            public C2664a(C2663f fVar, C2371a aVar, ShareContent shareContent, boolean z) {
                this.f3606a = aVar;
                this.f3607b = shareContent;
                this.f3608c = z;
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            /* renamed from: a */
            public Bundle mo33979a() {
                return C2576c.m34268a(this.f3606a.m34982a(), this.f3607b, this.f3608c);
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            public Bundle getParameters() {
                return C2622m.m34133a(this.f3606a.m34982a(), this.f3607b, this.f3608c);
            }
        }

        public C2663f() {
            super(C2655c.this);
        }

        public /* synthetic */ C2663f(C2655c cVar, C2656a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(ShareContent shareContent) {
            C2627q.m34086c(shareContent);
            C2371a b = C2655c.this.mo33997b();
            C2406g.m34885a(b, new C2664a(this, b, shareContent, C2655c.this.m33988f()), C2655c.m33989e(shareContent.getClass()));
            return b;
        }

        @Override // com.facebook.internal.AbstractC2414h.AbstractC2415a
        /* renamed from: a */
        public Object mo33978a() {
            return EnumC2660d.NATIVE;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareStoryContent) && C2655c.m33992c((Class<? extends ShareContent>) shareContent.getClass());
        }
    }

    /* renamed from: com.facebook.share.f.c$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/c$g.class */
    public class C2665g extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a>.AbstractC2415a {
        public C2665g() {
            super(C2655c.this);
        }

        public /* synthetic */ C2665g(C2655c cVar, C2656a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(ShareContent shareContent) {
            C2655c cVar = C2655c.this;
            cVar.m34002a(cVar.m34796c(), shareContent, EnumC2660d.WEB);
            C2371a b = C2655c.this.mo33997b();
            C2627q.m34084d(shareContent);
            C2406g.m34882a(b, m33972b(shareContent), shareContent instanceof ShareLinkContent ? C2645u.m34021a((ShareLinkContent) shareContent) : shareContent instanceof SharePhotoContent ? C2645u.m34019a(m33975a((SharePhotoContent) shareContent, b.m34982a())) : C2645u.m34020a((ShareOpenGraphContent) shareContent));
            return b;
        }

        /* renamed from: a */
        public final SharePhotoContent m33975a(SharePhotoContent sharePhotoContent, UUID uuid) {
            SharePhotoContent.C2707b a = new SharePhotoContent.C2707b().m33831a(sharePhotoContent);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < sharePhotoContent.m33835g().size(); i++) {
                SharePhoto sharePhoto = sharePhotoContent.m33835g().get(i);
                Bitmap c = sharePhoto.m33854c();
                SharePhoto sharePhoto2 = sharePhoto;
                if (c != null) {
                    C2504z.C2506b a2 = C2504z.m34542a(uuid, c);
                    SharePhoto.C2705b a3 = new SharePhoto.C2705b().m33845a(sharePhoto);
                    a3.m33848a(Uri.parse(a2.m34535a()));
                    a3.m33849a((Bitmap) null);
                    sharePhoto2 = a3.m33850a();
                    arrayList2.add(a2);
                }
                arrayList.add(sharePhoto2);
            }
            a.m33829c(arrayList);
            C2504z.m34544a(arrayList2);
            return a.m33834a();
        }

        @Override // com.facebook.internal.AbstractC2414h.AbstractC2415a
        /* renamed from: a */
        public Object mo33978a() {
            return EnumC2660d.WEB;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(ShareContent shareContent, boolean z) {
            return shareContent != null && C2655c.m33995b(shareContent);
        }

        /* renamed from: b */
        public final String m33972b(ShareContent shareContent) {
            if ((shareContent instanceof ShareLinkContent) || (shareContent instanceof SharePhotoContent)) {
                return "share";
            }
            if (shareContent instanceof ShareOpenGraphContent) {
                return "share_open_graph";
            }
            return null;
        }
    }

    static {
        C2398d.EnumC2400b.Share.m34900a();
    }

    public C2655c(Activity activity, int i) {
        super(activity, i);
        this.f3588f = false;
        this.f3589g = true;
        C2633s.m34064a(i);
    }

    public C2655c(Fragment fragment, int i) {
        this(new C2486r(fragment), i);
    }

    public C2655c(androidx.fragment.app.Fragment fragment, int i) {
        this(new C2486r(fragment), i);
    }

    public C2655c(C2486r rVar, int i) {
        super(rVar, i);
        this.f3588f = false;
        this.f3589g = true;
        C2633s.m34064a(i);
    }

    /* renamed from: b */
    public static boolean m33995b(ShareContent shareContent) {
        if (!m33990d(shareContent.getClass())) {
            return false;
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) {
            return true;
        }
        try {
            C2633s.m34055a((ShareOpenGraphContent) shareContent);
            return true;
        } catch (Exception e) {
            C2408g0.m34850a(f3587h, "canShow returned false because the content of the Opem Graph object can't be shared via the web dialog", e);
            return false;
        }
    }

    /* renamed from: c */
    public static boolean m33992c(Class<? extends ShareContent> cls) {
        AbstractC2404f e = m33989e(cls);
        return e != null && C2406g.m34881a(e);
    }

    /* renamed from: d */
    public static boolean m33990d(Class<? extends ShareContent> cls) {
        return ShareLinkContent.class.isAssignableFrom(cls) || ShareOpenGraphContent.class.isAssignableFrom(cls) || (SharePhotoContent.class.isAssignableFrom(cls) && AccessToken.m35506C());
    }

    /* renamed from: e */
    public static AbstractC2404f m33989e(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return EnumC2632r.SHARE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(cls)) {
            return EnumC2632r.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(cls)) {
            return EnumC2632r.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(cls)) {
            return EnumC2623n.OG_ACTION_DIALOG;
        }
        if (ShareMediaContent.class.isAssignableFrom(cls)) {
            return EnumC2632r.MULTIMEDIA;
        }
        if (ShareCameraEffectContent.class.isAssignableFrom(cls)) {
            return EnumC2570a.SHARE_CAMERA_EFFECT;
        }
        if (ShareStoryContent.class.isAssignableFrom(cls)) {
            return EnumC2644t.SHARE_STORY_ASSET;
        }
        return null;
    }

    /* renamed from: a */
    public final void m34002a(Context context, ShareContent shareContent, EnumC2660d dVar) {
        if (this.f3589g) {
            dVar = EnumC2660d.AUTOMATIC;
        }
        int i = C2656a.f3590a[dVar.ordinal()];
        String str = "unknown";
        String str2 = i != 1 ? i != 2 ? i != 3 ? "unknown" : "native" : "web" : "automatic";
        AbstractC2404f e = m33989e(shareContent.getClass());
        if (e == EnumC2632r.SHARE_DIALOG) {
            str = "status";
        } else if (e == EnumC2632r.PHOTOS) {
            str = "photo";
        } else if (e == EnumC2632r.VIDEO) {
            str = MimeTypes.BASE_TYPE_VIDEO;
        } else if (e == EnumC2623n.OG_ACTION_DIALOG) {
            str = "open_graph";
        }
        C2283m mVar = new C2283m(context);
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_show", str2);
        bundle.putString("fb_share_dialog_content_type", str);
        mVar.m35293b("fb_share_dialog_show", bundle);
    }

    @Override // com.facebook.internal.AbstractC2414h
    /* renamed from: b */
    public C2371a mo33997b() {
        return new C2371a(m34795e());
    }

    @Override // com.facebook.internal.AbstractC2414h
    /* renamed from: d */
    public List<AbstractC2414h<ShareContent, AbstractC2568c.C2569a>.AbstractC2415a> mo33991d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2661e(this, null));
        arrayList.add(new C2659c(this, null));
        arrayList.add(new C2665g(this, null));
        arrayList.add(new C2657b(this, null));
        arrayList.add(new C2663f(this, null));
        return arrayList;
    }

    /* renamed from: f */
    public boolean m33988f() {
        return this.f3588f;
    }
}
