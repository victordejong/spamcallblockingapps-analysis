package com.bumptech.glide.load.p214j.p216e;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import java.util.List;
/* renamed from: com.bumptech.glide.load.j.e.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/e/d.class */
public class C4247d implements AbstractC4146f<Uri, Drawable> {

    /* renamed from: a */
    private final Context f13142a;

    public C4247d(Context context) {
        this.f13142a = context.getApplicationContext();
    }

    /* renamed from: d */
    private Context m23059d(Uri uri, String str) {
        if (str.equals(this.f13142a.getPackageName())) {
            return this.f13142a;
        }
        try {
            return this.f13142a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (str.contains(this.f13142a.getPackageName())) {
                return this.f13142a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    /* renamed from: e */
    private int m23058e(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e);
        }
    }

    /* renamed from: f */
    private int m23057f(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        int i = identifier;
        if (identifier == 0) {
            i = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    /* renamed from: g */
    private int m23056g(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return m23057f(context, uri);
        }
        if (pathSegments.size() == 1) {
            return m23058e(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    /* renamed from: c */
    public AbstractC4083s<Drawable> mo22861b(Uri uri, int i, int i2, C4032e c4032e) {
        Context m23059d = m23059d(uri, uri.getAuthority());
        return C4246c.m23061f(C4244a.m23066b(this.f13142a, m23059d, m23056g(m23059d, uri)));
    }

    /* renamed from: h */
    public boolean mo22862a(Uri uri, C4032e c4032e) {
        return uri.getScheme().equals("android.resource");
    }
}
