package com.android.contacts;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.view.p;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ImageView;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.PhoneCapabilityTester;
import junit.framework.Assert;
/* loaded from: classes-dex2jar.jar:com/android/contacts/k.class */
public abstract class k implements ComponentCallbacks2 {
    private static final Uri e = Uri.parse("defaultimage://");
    private static boolean f = false;
    private static int g = -1;
    private static boolean h = false;

    /* renamed from: a  reason: collision with root package name */
    public static final c f1578a = new a((byte) 0);

    /* renamed from: b  reason: collision with root package name */
    public static final c f1579b = new b((byte) 0);
    public static final c c = new e((byte) 0);
    public static final c d = new f((byte) 0);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k$a.class */
    private static final class a extends c {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // com.android.contacts.k.c
        public final void a(ImageView imageView, int i, boolean z, int i2, boolean z2, d dVar) {
            switch (imageView.getTag() != null ? k.a(imageView.getContext(), i, z, ((Integer) imageView.getTag()).intValue(), i2) : k.a(imageView.getContext(), z)) {
                case p.POSITION_UNCHANGED /* -1 */:
                    dVar = new d(null, "gruop_detail_dark", z2);
                    break;
                case 2131165288:
                    dVar = new d(null, null, 2, z2);
                    break;
                case 2131165300:
                    dVar = new d(null, null, 3, z2);
                    break;
                case 2131165451:
                case 2131165878:
                    dVar = new d(null, null, 8, z2);
                    break;
                case 2131165452:
                    dVar = new d(null, null, 7, z2);
                    break;
            }
            imageView.setImageDrawable(k.a(imageView.getResources(), dVar, z));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k$b.class */
    private static final class b extends c {

        /* renamed from: a  reason: collision with root package name */
        private static Drawable f1583a;

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        @Override // com.android.contacts.k.c
        public final void a(ImageView imageView, int i, boolean z, int i2, boolean z2, d dVar) {
            if (f1583a == null) {
                f1583a = new ColorDrawable(imageView.getContext().getResources().getColor(2131034375));
            }
            imageView.setImageDrawable(f1583a);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k$c.class */
    public static abstract class c {
        public abstract void a(ImageView imageView, int i, boolean z, int i2, boolean z2, d dVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k$d.class */
    public static final class d {
        public static d g = new d();
        public static d h = new d(null, null, 2, false);
        public static d i = new d(null, null, true);
        public static d j = new d(null, null, 2, true);

        /* renamed from: a  reason: collision with root package name */
        public String f1591a;

        /* renamed from: b  reason: collision with root package name */
        public String f1592b;
        public int c;
        public float d;
        public float e;
        public boolean f;

        public d() {
            this.c = 1;
            this.d = 1.0f;
            this.e = 0.0f;
            this.f = false;
        }

        public d(String str, String str2, int i2, boolean z) {
            this(str, str2, i2, z, (byte) 0);
        }

        private d(String str, String str2, int i2, boolean z, byte b2) {
            this.c = 1;
            this.d = 1.0f;
            this.e = 0.0f;
            this.f = false;
            this.f1591a = str;
            this.f1592b = str2;
            this.c = i2;
            this.d = 1.0f;
            this.e = 0.0f;
            this.f = z;
        }

        public d(String str, String str2, boolean z) {
            this(str, str2, 1, z, (byte) 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k$e.class */
    private static final class e extends c {
        private e() {
        }

        /* synthetic */ e(byte b2) {
            this();
        }

        @Override // com.android.contacts.k.c
        public final void a(ImageView imageView, int i, boolean z, int i2, boolean z2, d dVar) {
            String str;
            switch (imageView.getTag() != null ? k.a(imageView.getContext(), 1, ((Integer) imageView.getTag()).intValue(), i2) : k.a(imageView.getContext(), 1)) {
                case p.POSITION_UNCHANGED /* -1 */:
                    str = "gruop_detail_dark";
                    break;
                default:
                    str = null;
                    break;
            }
            imageView.setImageDrawable(k.a(imageView.getResources(), k.f ? new d(null, str, 5, z2) : new d(null, str, 4, z2), z));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k$f.class */
    private static final class f extends c {
        private f() {
        }

        /* synthetic */ f(byte b2) {
            this();
        }

        @Override // com.android.contacts.k.c
        public final void a(ImageView imageView, int i, boolean z, int i2, boolean z2, d dVar) {
            String str;
            switch (imageView.getTag() != null ? k.a(imageView.getContext(), 2, ((Integer) imageView.getTag()).intValue(), i2) : k.a(imageView.getContext(), 2)) {
                case p.POSITION_UNCHANGED /* -1 */:
                    str = "gruop_detail_dark";
                    break;
                default:
                    str = null;
                    break;
            }
            imageView.setImageDrawable(k.a(imageView.getResources(), new d(null, str, 6, z2), z));
        }
    }

    public static int a(int i, boolean z) {
        return z ? i == 2 ? 2131165379 : 2131165378 : 2131165377;
    }

    public static int a(Context context, int i) {
        if (g == -1) {
            g = (int) TypedValue.applyDimension(1, 180.0f, context.getResources().getDisplayMetrics());
        }
        return a(i, com.android.contacts.simcardmanage.b.a(context));
    }

    public static int a(Context context, int i, int i2, int i3) {
        int i4;
        if (g == -1) {
            g = (int) TypedValue.applyDimension(1, 180.0f, context.getResources().getDisplayMetrics());
        }
        if (!com.android.contacts.simcardmanage.b.a(context)) {
            i = -1;
        }
        switch (i3) {
            case 1:
                i4 = 2131165321;
                if (i2 != 0) {
                    i4 = -1;
                    break;
                }
                break;
            case 2:
                i4 = 2131165321;
                if (i2 != 0) {
                    i4 = -1;
                    break;
                }
                break;
            default:
                if (i != 2) {
                    if (i != 1) {
                        i4 = 2131165279;
                        break;
                    } else {
                        i4 = 2131165284;
                        break;
                    }
                } else {
                    i4 = 2131165286;
                    break;
                }
        }
        return i4;
    }

    public static int a(Context context, int i, boolean z, int i2, int i3) {
        int i4;
        if (g == -1) {
            g = (int) TypedValue.applyDimension(1, 180.0f, context.getResources().getDisplayMetrics());
        }
        boolean z2 = i != -1 && i > g;
        switch (i3) {
            case 1:
                i4 = -1;
                if (i2 == 0) {
                    i4 = 2131165321;
                    break;
                }
                break;
            case 2:
                i4 = -1;
                if (i2 == 0) {
                    i4 = 2131165321;
                    break;
                }
                break;
            case 3:
                i4 = -1;
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    i4 = -1;
                    if (!PhoneCapabilityTester.isVerizon()) {
                        i4 = 2131165277;
                        break;
                    }
                }
                break;
            default:
                if (h) {
                    if (i2 != 2) {
                        if (i2 != 6 && i2 != 7) {
                            if (i2 != 5) {
                                i4 = 2131165321;
                                break;
                            } else {
                                i4 = 2131165288;
                                break;
                            }
                        } else {
                            i4 = 2131165380;
                            break;
                        }
                    } else {
                        i4 = 2131165300;
                        break;
                    }
                } else if (i2 == 0) {
                    if (!z) {
                        i4 = 2131165278;
                        break;
                    }
                    i4 = 2131165278;
                    break;
                } else if (i2 == 1) {
                    if (!z) {
                        i4 = 2131165278;
                        break;
                    }
                    i4 = 2131165278;
                } else if (i2 == 2) {
                    if (!z2 || !z) {
                        if (!z2) {
                            if (!z) {
                                i4 = 2131165300;
                                break;
                            } else {
                                i4 = 2131165300;
                                break;
                            }
                        } else {
                            i4 = 2131165300;
                            break;
                        }
                    } else {
                        i4 = 2131165300;
                        break;
                    }
                } else if (i2 == 3) {
                    if (!z2 || !z) {
                        if (!z2) {
                            if (!z) {
                                i4 = 2131165452;
                                break;
                            } else {
                                i4 = 2131165452;
                                break;
                            }
                        } else {
                            i4 = 2131165452;
                            break;
                        }
                    } else {
                        i4 = 2131165452;
                        break;
                    }
                } else if (i2 == 4) {
                    if (!z2 || !z) {
                        if (!z2) {
                            if (!z) {
                                i4 = 2131165451;
                                break;
                            } else {
                                i4 = 2131165451;
                                break;
                            }
                        } else {
                            i4 = 2131165451;
                            break;
                        }
                    } else {
                        i4 = 2131165451;
                        break;
                    }
                } else if (i2 == 5) {
                    if (!z2 || !z) {
                        if (!z2) {
                            if (!z) {
                                i4 = 2131165288;
                                break;
                            } else {
                                i4 = 2131165288;
                                break;
                            }
                        } else {
                            i4 = 2131165288;
                            break;
                        }
                    } else {
                        i4 = 2131165288;
                        break;
                    }
                } else if (i2 == 6) {
                    i4 = 2131165878;
                    break;
                } else {
                    if (i2 == 7) {
                        i4 = 2131165288;
                        break;
                    }
                    i4 = 2131165278;
                }
                break;
        }
        return i4;
    }

    public static int a(Context context, boolean z) {
        if (g == -1) {
            g = (int) TypedValue.applyDimension(1, 180.0f, context.getResources().getDisplayMetrics());
        }
        return a(z);
    }

    public static int a(boolean z) {
        int i;
        if (h) {
            i = 2131165321;
        } else {
            i = 2131165278;
            if (z) {
                i = 2131165278;
            }
        }
        return i;
    }

    public static Drawable a(Resources resources, d dVar, boolean z) {
        com.android.contacts.i.a aVar = new com.android.contacts.i.a(resources, z);
        if (dVar != null) {
            if (TextUtils.isEmpty(dVar.f1592b)) {
                aVar.a(dVar.f1591a, null);
            } else {
                aVar.a(dVar.f1591a, dVar.f1592b);
            }
            aVar.f1435a = dVar.c;
            aVar.f1436b = dVar.d;
            float f2 = dVar.e;
            Assert.assertTrue(f2 >= -0.5f && f2 <= 0.5f);
            aVar.c = f2;
            aVar.d = dVar.f;
        }
        return aVar;
    }

    public static k a(Context context) {
        Context applicationContext = context.getApplicationContext();
        k kVar = (k) applicationContext.getSystemService("contactPhotos");
        k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = b(applicationContext);
            Log.e("ContactPhotoManager", "No contact photo service in context: " + applicationContext);
        }
        h = h.a(context);
        f = com.android.contacts.simcardmanage.b.a(context);
        return kVar2;
    }

    public static boolean a(Uri uri) {
        boolean z;
        if (uri == null) {
            z = false;
        } else {
            String encodedFragment = uri.getEncodedFragment();
            z = false;
            if (!TextUtils.isEmpty(encodedFragment)) {
                z = false;
                if (encodedFragment.equals("2")) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static k b(Context context) {
        l lVar;
        synchronized (k.class) {
            try {
                lVar = new l(context);
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    public abstract void a();

    public abstract void a(Uri uri, Bitmap bitmap, byte[] bArr);

    public final void a(ImageView imageView, long j, int i) {
        if (j == -2) {
            a(imageView, (Uri) null, 801, d, i);
        } else {
            a(imageView, (Uri) null, 801, c, i);
        }
    }

    public final void a(ImageView imageView, long j, boolean z) {
        if (j >= 0) {
            a(imageView, j, z, false, (d) null, f1578a);
        } else if (j == -2) {
            a(imageView, 0L, z, false, (d) null, d);
        } else {
            a(imageView, 0L, z, false, (d) null, c);
        }
    }

    public final void a(ImageView imageView, long j, boolean z, d dVar) {
        if (j >= 0) {
            a(imageView, j, z, true, dVar, f1578a);
        } else if (j == -2) {
            a(imageView, 0L, z, true, dVar, d);
        } else {
            a(imageView, 0L, z, true, dVar, c);
        }
    }

    public abstract void a(ImageView imageView, long j, boolean z, boolean z2, d dVar, c cVar);

    public final void a(ImageView imageView, Uri uri, int i) {
        a(imageView, uri, i, -1);
    }

    public final void a(ImageView imageView, Uri uri, int i, int i2) {
        if (uri == null) {
            a(imageView, uri, i, f1578a, i2);
        } else if (uri.getAuthority().compareTo("sim") != 0) {
            a(imageView, uri, i, f1578a, i2);
        } else if (uri.getLastPathSegment().equals("2")) {
            a(imageView, 0L, false, false, (d) null, d);
        } else {
            a(imageView, 0L, false, false, (d) null, c);
        }
    }

    public abstract void a(ImageView imageView, Uri uri, int i, c cVar, int i2);

    public abstract void a(ImageView imageView, Uri uri, int i, boolean z, c cVar, boolean z2, d dVar);

    public final void a(ImageView imageView, Uri uri, int i, boolean z, boolean z2, d dVar) {
        a(imageView, uri, i, z, f1578a, z2, dVar);
    }

    public abstract void a(ImageView imageView, Uri uri, c cVar);

    public final void a(ImageView imageView, Uri uri, d dVar) {
        if (uri != null) {
            String authority = uri.getAuthority();
            if (authority == null || authority.compareTo("sim") != 0) {
                a(imageView, uri, -1, false, f1578a, true, dVar);
            } else if (uri.getLastPathSegment().equals("2")) {
                a(imageView, 0L, false, true, dVar, d);
            } else {
                a(imageView, 0L, false, true, dVar, c);
            }
        } else {
            a(imageView, uri, -1, false, f1578a, true, dVar);
        }
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public abstract void e();

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
    }
}
