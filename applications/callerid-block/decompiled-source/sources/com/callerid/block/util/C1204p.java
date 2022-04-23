package com.callerid.block.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.widget.ImageView;
import com.bumptech.glide.ComponentCallbacks2C0700b;
import com.bumptech.glide.g;
/* renamed from: com.callerid.block.util.p */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/p.class */
public class C1204p {
    /* renamed from: a */
    public static void m9639a(Activity activity, Object obj, int i, ImageView imageView) {
        if (Build.VERSION.SDK_INT < 17) {
            try {
                ComponentCallbacks2C0700b.m11331t(activity).r(obj).m10690b0(i).m10687d().B0(imageView);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (activity != null && !activity.isDestroyed()) {
            ComponentCallbacks2C0700b.m11331t(activity).r(obj).m10690b0(i).m10687d().B0(imageView);
        }
    }

    /* renamed from: b */
    public static void m9638b(Context context, Object obj, int i, ImageView imageView) {
        if (context != null) {
            try {
                ComponentCallbacks2C0700b.m11330u(context).r(obj).m10690b0(i).m10687d().B0(imageView);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public static void m9637c(Activity activity, Uri uri, String str, int i, ImageView imageView) {
        try {
            if (Build.VERSION.SDK_INT < 17) {
                ((str == null || "".equals(str)) ? ComponentCallbacks2C0700b.m11331t(activity).q(uri).m10690b0(i).m10687d() : (g) ComponentCallbacks2C0700b.m11331t(activity).q(uri).v0(ComponentCallbacks2C0700b.m11331t(activity).s(str).m10690b0(i).m10687d()).m10690b0(i).m10687d()).B0(imageView);
            } else if (activity != null && !activity.isDestroyed()) {
                ((str == null || "".equals(str)) ? ComponentCallbacks2C0700b.m11331t(activity).q(uri).m10690b0(i).m10687d() : (g) ComponentCallbacks2C0700b.m11331t(activity).q(uri).v0(ComponentCallbacks2C0700b.m11331t(activity).s(str).m10690b0(i).m10687d()).m10690b0(i).m10687d()).B0(imageView);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
