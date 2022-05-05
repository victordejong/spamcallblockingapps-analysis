package com.facebook.share.p048f;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.C2283m;
import com.facebook.internal.AbstractC2404f;
import com.facebook.internal.AbstractC2414h;
import com.facebook.internal.C2371a;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2406g;
import com.facebook.internal.C2486r;
import com.facebook.share.AbstractC2568c;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.p046d.C2576c;
import com.facebook.share.p046d.C2622m;
import com.facebook.share.p046d.C2627q;
import com.facebook.share.p046d.C2633s;
import com.facebook.share.p046d.EnumC2619k;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.share.f.a */
/* loaded from: classes-dex2jar.jar:com/facebook/share/f/a.class */
public final class C2649a extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a> implements AbstractC2568c {

    /* renamed from: f */
    public boolean f3579f;

    /* renamed from: com.facebook.share.f.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/a$b.class */
    public class C2651b extends AbstractC2414h<ShareContent, AbstractC2568c.C2569a>.AbstractC2415a {

        /* renamed from: com.facebook.share.f.a$b$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/f/a$b$a.class */
        public class C2652a implements C2406g.AbstractC2407a {

            /* renamed from: a */
            public final /* synthetic */ C2371a f3581a;

            /* renamed from: b */
            public final /* synthetic */ ShareContent f3582b;

            /* renamed from: c */
            public final /* synthetic */ boolean f3583c;

            public C2652a(C2651b bVar, C2371a aVar, ShareContent shareContent, boolean z) {
                this.f3581a = aVar;
                this.f3582b = shareContent;
                this.f3583c = z;
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            /* renamed from: a */
            public Bundle mo33979a() {
                return C2576c.m34268a(this.f3581a.m34982a(), this.f3582b, this.f3583c);
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            public Bundle getParameters() {
                return C2622m.m34133a(this.f3581a.m34982a(), this.f3582b, this.f3583c);
            }
        }

        public C2651b() {
            super(C2649a.this);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(ShareContent shareContent) {
            C2627q.m34126a(shareContent);
            C2371a b = C2649a.this.mo33997b();
            boolean f = C2649a.this.m34010f();
            C2649a.m34013b(C2649a.this.m34796c(), shareContent, b);
            C2406g.m34885a(b, new C2652a(this, b, shareContent, f), C2649a.m34011c(shareContent.getClass()));
            return b;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(ShareContent shareContent, boolean z) {
            return shareContent != null && C2649a.m34012b(shareContent.getClass());
        }
    }

    static {
        C2398d.EnumC2400b.Message.m34900a();
    }

    public C2649a(Activity activity, int i) {
        super(activity, i);
        this.f3579f = false;
        C2633s.m34064a(i);
    }

    public C2649a(Fragment fragment, int i) {
        this(new C2486r(fragment), i);
    }

    public C2649a(androidx.fragment.app.Fragment fragment, int i) {
        this(new C2486r(fragment), i);
    }

    public C2649a(C2486r rVar, int i) {
        super(rVar, i);
        this.f3579f = false;
        C2633s.m34064a(i);
    }

    /* renamed from: b */
    public static void m34013b(Context context, ShareContent shareContent, C2371a aVar) {
        AbstractC2404f c = m34011c(shareContent.getClass());
        String str = c == EnumC2619k.MESSAGE_DIALOG ? "status" : c == EnumC2619k.MESSENGER_GENERIC_TEMPLATE ? "GenericTemplate" : c == EnumC2619k.MESSENGER_MEDIA_TEMPLATE ? "MediaTemplate" : c == EnumC2619k.MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE ? "OpenGraphMusicTemplate" : "unknown";
        C2283m mVar = new C2283m(context);
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_content_type", str);
        bundle.putString("fb_share_dialog_content_uuid", aVar.m34982a().toString());
        bundle.putString("fb_share_dialog_content_page_id", shareContent.m33922b());
        mVar.m35293b("fb_messenger_share_dialog_show", bundle);
    }

    /* renamed from: b */
    public static boolean m34012b(Class<? extends ShareContent> cls) {
        AbstractC2404f c = m34011c(cls);
        return c != null && C2406g.m34881a(c);
    }

    /* renamed from: c */
    public static AbstractC2404f m34011c(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return EnumC2619k.MESSAGE_DIALOG;
        }
        if (ShareMessengerGenericTemplateContent.class.isAssignableFrom(cls)) {
            return EnumC2619k.MESSENGER_GENERIC_TEMPLATE;
        }
        if (ShareMessengerOpenGraphMusicTemplateContent.class.isAssignableFrom(cls)) {
            return EnumC2619k.MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE;
        }
        if (ShareMessengerMediaTemplateContent.class.isAssignableFrom(cls)) {
            return EnumC2619k.MESSENGER_MEDIA_TEMPLATE;
        }
        return null;
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
        arrayList.add(new C2651b());
        return arrayList;
    }

    /* renamed from: f */
    public boolean m34010f() {
        return this.f3579f;
    }
}
