package com.bumptech.glide.load.resource.p123b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.List;
/* renamed from: com.bumptech.glide.load.resource.b.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/e.class */
public final class C3845e implements AbstractC3824j<Uri, Drawable> {

    /* renamed from: a */
    private final Context f14197a;

    public C3845e(Context context) {
        this.f14197a = context.getApplicationContext();
    }

    /* renamed from: a */
    private static int m37308a(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return m37305b(context, uri);
        }
        if (pathSegments.size() != 1) {
            throw new IllegalArgumentException("Unrecognized Uri format: ".concat(String.valueOf(uri)));
        }
        return m37304b(uri);
    }

    /* renamed from: a */
    private Context m37306a(Uri uri, String str) {
        if (str.equals(this.f14197a.getPackageName())) {
            return this.f14197a;
        }
        try {
            return this.f14197a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (!str.contains(this.f14197a.getPackageName())) {
                throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: ".concat(String.valueOf(uri)), e);
            }
            return this.f14197a;
        }
    }

    /* renamed from: b */
    private static int m37305b(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        int i = identifier;
        if (identifier == 0) {
            i = Resources.getSystem().getIdentifier(str2, str, Constants.ANDROID_PLATFORM);
        }
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("Failed to find resource id for: ".concat(String.valueOf(uri)));
    }

    /* renamed from: b */
    private static int m37304b(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: ".concat(String.valueOf(uri)), e);
        }
    }

    /* renamed from: a */
    public final AbstractC3811u<Drawable> m37307a(Uri uri) {
        Context m37306a = m37306a(uri, uri.getAuthority());
        return C3844d.m37309a(C3841a.m37313a(this.f14197a, m37306a, m37308a(m37306a, uri)));
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3811u<Drawable> mo37196a(Uri uri, int i, int i2, C3822h c3822h) throws IOException {
        return m37307a(uri);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ boolean mo37195a(Uri uri, C3822h c3822h) throws IOException {
        return uri.getScheme().equals("android.resource");
    }
}
