package com.facebook.share.internal;

import android.app.Activity;
import android.app.Fragment;
import com.facebook.internal.c;
import com.facebook.internal.f;
import com.facebook.internal.s;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/b.class */
public final class b extends f<LikeContent, Object> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f20216b = c.EnumC0402c.Like.toRequestCode();

    @Deprecated
    public b(Activity activity) {
        super(activity, f20216b);
    }

    @Deprecated
    public b(Fragment fragment) {
        this(new s(fragment));
    }

    @Deprecated
    public b(androidx.fragment.app.Fragment fragment) {
        this(new s(fragment));
    }

    @Deprecated
    public b(s sVar) {
        super(sVar, f20216b);
    }

    @Deprecated
    public static boolean a() {
        return false;
    }

    @Deprecated
    public static boolean b() {
        return false;
    }
}
