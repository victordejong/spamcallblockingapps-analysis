package com.bumptech.glide.load.resource.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/e.class */
public final class e implements j<Uri, Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f7636a;

    public e(Context context) {
        this.f7636a = context.getApplicationContext();
    }

    private static int a(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return b(context, uri);
        }
        if (pathSegments.size() == 1) {
            return b(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: ".concat(String.valueOf(uri)));
    }

    private Context a(Uri uri, String str) {
        if (str.equals(this.f7636a.getPackageName())) {
            return this.f7636a;
        }
        try {
            return this.f7636a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (str.contains(this.f7636a.getPackageName())) {
                return this.f7636a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: ".concat(String.valueOf(uri)), e);
        }
    }

    private static int b(Context context, Uri uri) {
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

    private static int b(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: ".concat(String.valueOf(uri)), e);
        }
    }

    public final u<Drawable> a(Uri uri) {
        Context a2 = a(uri, uri.getAuthority());
        return d.a(a.a(this.f7636a, a2, a(a2, uri)));
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ u<Drawable> a(Uri uri, int i, int i2, h hVar) throws IOException {
        return a(uri);
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ boolean a(Uri uri, h hVar) throws IOException {
        return uri.getScheme().equals("android.resource");
    }
}
