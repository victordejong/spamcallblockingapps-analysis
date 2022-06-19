package p107g9;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import p107g9.AbstractC2968x;
import p107g9.C2953s;
/* renamed from: g9.y */
/* loaded from: classes2-dex2jar.jar:g9/y.class */
public class C2970y extends AbstractC2968x {

    /* renamed from: a */
    public final Context f9987a;

    public C2970y(Context context) {
        this.f9987a = context;
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: c */
    public boolean mo2800c(C2964v c2964v) {
        if (c2964v.f9957d != 0) {
            return true;
        }
        return "android.resource".equals(c2964v.f9956c.getScheme());
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: f */
    public AbstractC2968x.C2969a mo2799f(C2964v c2964v, int i) throws IOException {
        Resources resources;
        Uri uri;
        Context context = this.f9987a;
        StringBuilder sb = C2929d0.f9877a;
        if (c2964v.f9957d != 0 || (uri = c2964v.f9956c) == null) {
            resources = context.getResources();
        } else {
            String authority = uri.getAuthority();
            if (authority == null) {
                StringBuilder m8752j = C0082b.m8752j("No package provided: ");
                m8752j.append(c2964v.f9956c);
                throw new FileNotFoundException(m8752j.toString());
            }
            try {
                resources = context.getPackageManager().getResourcesForApplication(authority);
            } catch (PackageManager.NameNotFoundException e) {
                StringBuilder m8752j2 = C0082b.m8752j("Unable to obtain resources for package: ");
                m8752j2.append(c2964v.f9956c);
                throw new FileNotFoundException(m8752j2.toString());
            }
        }
        int i2 = c2964v.f9957d;
        boolean z = true;
        int i3 = i2;
        if (i2 == 0) {
            Uri uri2 = c2964v.f9956c;
            if (uri2 == null) {
                i3 = i2;
            } else {
                String authority2 = uri2.getAuthority();
                if (authority2 == null) {
                    StringBuilder m8752j3 = C0082b.m8752j("No package provided: ");
                    m8752j3.append(c2964v.f9956c);
                    throw new FileNotFoundException(m8752j3.toString());
                }
                List<String> pathSegments = c2964v.f9956c.getPathSegments();
                if (pathSegments == null || pathSegments.isEmpty()) {
                    StringBuilder m8752j4 = C0082b.m8752j("No path segments: ");
                    m8752j4.append(c2964v.f9956c);
                    throw new FileNotFoundException(m8752j4.toString());
                } else if (pathSegments.size() == 1) {
                    try {
                        i3 = Integer.parseInt(pathSegments.get(0));
                    } catch (NumberFormatException e2) {
                        StringBuilder m8752j5 = C0082b.m8752j("Last path segment is not a resource ID: ");
                        m8752j5.append(c2964v.f9956c);
                        throw new FileNotFoundException(m8752j5.toString());
                    }
                } else if (pathSegments.size() != 2) {
                    StringBuilder m8752j6 = C0082b.m8752j("More than two path segments: ");
                    m8752j6.append(c2964v.f9956c);
                    throw new FileNotFoundException(m8752j6.toString());
                } else {
                    i3 = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority2);
                }
            }
        }
        BitmapFactory.Options m2803d = AbstractC2968x.m2803d(c2964v);
        if (m2803d == null || !m2803d.inJustDecodeBounds) {
            z = false;
        }
        if (z) {
            BitmapFactory.decodeResource(resources, i3, m2803d);
            AbstractC2968x.m2804b(c2964v.f9959f, c2964v.f9960g, m2803d, c2964v);
        }
        Bitmap decodeResource = BitmapFactory.decodeResource(resources, i3, m2803d);
        C2953s.EnumC2958d enumC2958d = C2953s.EnumC2958d.DISK;
        Objects.requireNonNull(decodeResource, "bitmap == null");
        return new AbstractC2968x.C2969a(decodeResource, null, enumC2958d, 0);
    }
}
