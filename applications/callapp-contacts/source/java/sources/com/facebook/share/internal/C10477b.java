package com.facebook.share.internal;

import android.app.Activity;
import android.app.Fragment;
import com.facebook.internal.AbstractC10281f;
import com.facebook.internal.C10263c;
import com.facebook.internal.C10326s;
@Deprecated
/* renamed from: com.facebook.share.internal.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/b.class */
public final class C10477b extends AbstractC10281f<LikeContent, Object> {

    /* renamed from: b */
    private static final int f34241b = C10263c.EnumC10266c.Like.toRequestCode();

    @Deprecated
    public C10477b(Activity activity) {
        super(activity, f34241b);
    }

    @Deprecated
    public C10477b(Fragment fragment) {
        this(new C10326s(fragment));
    }

    @Deprecated
    public C10477b(androidx.fragment.app.Fragment fragment) {
        this(new C10326s(fragment));
    }

    @Deprecated
    public C10477b(C10326s c10326s) {
        super(c10326s, f34241b);
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m22717a() {
        return false;
    }

    @Deprecated
    /* renamed from: b */
    public static boolean m22716b() {
        return false;
    }
}
