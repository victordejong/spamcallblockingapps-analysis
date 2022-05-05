package com.facebook.share.p046d;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.AbstractC2404f;
import com.facebook.internal.AbstractC2414h;
import com.facebook.internal.C2371a;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2406g;
import com.facebook.internal.C2486r;
import com.facebook.share.internal.LikeContent;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* renamed from: com.facebook.share.d.h */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/h.class */
public class C2613h extends AbstractC2414h<LikeContent, Object> {

    /* renamed from: f */
    public static final int f3527f = C2398d.EnumC2400b.Like.m34900a();

    /* renamed from: com.facebook.share.d.h$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/h$a.class */
    public class C2614a extends AbstractC2414h<LikeContent, Object>.AbstractC2415a {

        /* renamed from: com.facebook.share.d.h$a$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/d/h$a$a.class */
        public class C2615a implements C2406g.AbstractC2407a {

            /* renamed from: a */
            public final /* synthetic */ LikeContent f3529a;

            public C2615a(C2614a aVar, LikeContent likeContent) {
                this.f3529a = likeContent;
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            /* renamed from: a */
            public Bundle mo33979a() {
                Log.e("LikeDialog", "Attempting to present the Like Dialog with an outdated Facebook app on the device");
                return new Bundle();
            }

            @Override // com.facebook.internal.C2406g.AbstractC2407a
            public Bundle getParameters() {
                return C2613h.m34176c(this.f3529a);
            }
        }

        public C2614a() {
            super(C2613h.this);
        }

        public /* synthetic */ C2614a(C2613h hVar, C2612g gVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(LikeContent likeContent) {
            C2371a b = C2613h.this.mo33997b();
            C2406g.m34885a(b, new C2615a(this, likeContent), C2613h.m34172i());
            return b;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(LikeContent likeContent, boolean z) {
            return false;
        }
    }

    /* renamed from: com.facebook.share.d.h$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/h$b.class */
    public class C2616b extends AbstractC2414h<LikeContent, Object>.AbstractC2415a {
        public C2616b() {
            super(C2613h.this);
        }

        public /* synthetic */ C2616b(C2613h hVar, C2612g gVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C2371a mo33974a(LikeContent likeContent) {
            C2371a b = C2613h.this.mo33997b();
            C2406g.m34886a(b, C2613h.m34176c(likeContent), C2613h.m34172i());
            return b;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo33973a(LikeContent likeContent, boolean z) {
            return false;
        }
    }

    @Deprecated
    public C2613h(Activity activity) {
        super(activity, f3527f);
    }

    @Deprecated
    public C2613h(C2486r rVar) {
        super(rVar, f3527f);
    }

    /* renamed from: c */
    public static Bundle m34176c(LikeContent likeContent) {
        Bundle bundle = new Bundle();
        bundle.putString("object_id", likeContent.m33956a());
        bundle.putString("object_type", likeContent.m33955b());
        return bundle;
    }

    @Deprecated
    /* renamed from: g */
    public static boolean m34174g() {
        return false;
    }

    @Deprecated
    /* renamed from: h */
    public static boolean m34173h() {
        return false;
    }

    /* renamed from: i */
    public static AbstractC2404f m34172i() {
        return EnumC2617i.LIKE_DIALOG;
    }

    @Deprecated
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo34178a(LikeContent likeContent) {
    }

    @Override // com.facebook.internal.AbstractC2414h
    /* renamed from: b */
    public C2371a mo33997b() {
        return new C2371a(m34795e());
    }

    @Override // com.facebook.internal.AbstractC2414h
    /* renamed from: d */
    public List<AbstractC2414h<LikeContent, Object>.AbstractC2415a> mo33991d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2614a(this, null));
        arrayList.add(new C2616b(this, null));
        return arrayList;
    }
}
