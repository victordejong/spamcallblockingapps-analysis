package com.bumptech.glide.load.p083c.p086c;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import java.util.List;
/* renamed from: com.bumptech.glide.load.c.c.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/c/d.class */
public class C1635d implements AbstractC1782i<Uri, Drawable> {

    /* renamed from: a */
    private final Context f5033a;

    public C1635d(Context context) {
        this.f5033a = context.getApplicationContext();
    }

    /* renamed from: a */
    private int m16684a(Uri uri) {
        Integer num;
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            String authority = uri.getAuthority();
            num = Integer.valueOf(this.f5033a.getResources().getIdentifier(pathSegments.get(1), pathSegments.get(0), authority));
        } else if (pathSegments.size() == 1) {
            try {
                num = Integer.valueOf(pathSegments.get(0));
            } catch (NumberFormatException e) {
                num = null;
            }
        } else {
            num = null;
        }
        if (num == null) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
        }
        if (num.intValue() != 0) {
            return num.intValue();
        }
        throw new IllegalArgumentException("Failed to obtain resource id for: " + uri);
    }

    /* renamed from: a */
    private Context m16681a(Uri uri, String str) {
        try {
            return this.f5033a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    /* renamed from: a */
    public AbstractC1771t<Drawable> mo16319a(Uri uri, int i, int i2, C1781h c1781h) {
        int m16684a = m16684a(uri);
        String authority = uri.getAuthority();
        return C1634c.m16685a(C1632a.m16690a(this.f5033a, authority.equals(this.f5033a.getPackageName()) ? this.f5033a : m16681a(uri, authority), m16684a));
    }

    /* renamed from: a */
    public boolean mo16318a(Uri uri, C1781h c1781h) {
        return uri.getScheme().equals("android.resource");
    }
}
