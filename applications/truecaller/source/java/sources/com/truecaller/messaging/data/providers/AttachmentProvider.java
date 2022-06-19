package com.truecaller.messaging.data.providers;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.webkit.MimeTypeMap;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.p233k0.C6160a;
import p193e.p194a.p195a.p231g.p233k0.EnumC6162c;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
import w3.c.a.a.a.h;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b3\u0010/J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004JM\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJW\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010\f\u001a\u0004\u0018\u00010\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u000e\u0010\u0012J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J1\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ5\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\b0\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020\u0005H\u0002¢\u0006\u0004\b*\u0010+R\u001c\u00100\u001a\u00020\u001e8B@\u0002X\u0082\u0004¢\u0006\f\u0012\u0004\b.\u0010/\u001a\u0004\b,\u0010-R\u0016\u00102\u001a\u00020\u001e8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b1\u0010-¨\u00064"}, d2 = {"Lcom/truecaller/messaging/data/providers/AttachmentProvider;", "Landroid/content/ContentProvider;", "", "onCreate", "()Z", "Landroid/net/Uri;", "uri", "", "", "projection", "selection", "selectionArgs", "sortOrder", "Landroid/database/Cursor;", SearchIntents.EXTRA_QUERY, "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;", "getType", "(Landroid/net/Uri;)Ljava/lang/String;", "", "delete", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", AnalyticsConstants.MODE, "Landroid/os/ParcelFileDescriptor;", "openFile", "(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;", "", "columns", "Ljava/io/File;", "parent", "", "", "f", "(Landroid/net/Uri;Ljava/lang/Iterable;Ljava/io/File;)Ljava/util/List;", "e", "(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;", "d", "(Landroid/net/Uri;Ljava/io/File;)Landroid/os/ParcelFileDescriptor;", "contentUri", "Le/a/a/g/k0/c;", AbstractC2405c.f7629a, "(Landroid/net/Uri;)Le/a/a/g/k0/c;", C22021b.f61237c, "()Ljava/io/File;", "getPublicDir$annotations", "()V", "publicDir", "a", "privateDir", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/providers/AttachmentProvider.class */
public final class AttachmentProvider extends ContentProvider {
    /* renamed from: a */
    public final File m35072a() {
        Context context = getContext();
        return new File(context != null ? context.getFilesDir() : null, "media");
    }

    /* renamed from: b */
    public final File m35071b() {
        return new File(Environment.getExternalStorageDirectory(), "Truecaller");
    }

    /* renamed from: c */
    public final EnumC6162c m35070c(Uri uri) {
        EnumC6162c enumC6162c;
        List<String> pathSegments = uri.getPathSegments();
        l.d(pathSegments, "contentUri.pathSegments");
        String str = (String) i.D(pathSegments);
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 108243) {
                if (hashCode != 870994574) {
                    if (hashCode == 959285800 && str.equals("private_media")) {
                        enumC6162c = EnumC6162c.PrivateMedia;
                    }
                } else if (str.equals("public_media")) {
                    enumC6162c = EnumC6162c.PublicMedia;
                }
            } else if (str.equals("mms")) {
                enumC6162c = EnumC6162c.Mms;
            }
            return enumC6162c;
        }
        enumC6162c = EnumC6162c.Unsupported;
        return enumC6162c;
    }

    /* renamed from: d */
    public final ParcelFileDescriptor m35069d(Uri uri, File file) {
        File m31724a = C6160a.m31724a(uri, file);
        if (m31724a == null || !m31724a.exists()) {
            throw new FileNotFoundException(uri.toString());
        }
        ParcelFileDescriptor open = ParcelFileDescriptor.open(m31724a, 268435456);
        l.d(open, "ParcelFileDescriptor.ope…escriptor.MODE_READ_ONLY)");
        return open;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006c A[RETURN] */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int delete(android.net.Uri r4, java.lang.String r5, java.lang.String[] r6) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "uri"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            java.util.List r0 = r0.getPathSegments()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "uri.pathSegments"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.Object r0 = s1.u.i.D(r0)
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L20
            goto L61
        L20:
            r0 = r5
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            r1 = 870994574(0x33ea528e, float:1.0911491E-7)
            if (r0 == r1) goto L4c
            r0 = r7
            r1 = 959285800(0x392d8a28, float:1.6550033E-4)
            if (r0 == r1) goto L37
            goto L61
        L37:
            r0 = r5
            java.lang.String r1 = "private_media"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L61
            r0 = r4
            r1 = r3
            java.io.File r1 = r1.m35072a()
            java.io.File r0 = p193e.p194a.p195a.p231g.p233k0.C6160a.m31724a(r0, r1)
            r4 = r0
            goto L63
        L4c:
            r0 = r5
            java.lang.String r1 = "public_media"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L61
            r0 = r4
            r1 = r3
            java.io.File r1 = r1.m35071b()
            java.io.File r0 = p193e.p194a.p195a.p231g.p233k0.C6160a.m31724a(r0, r1)
            r4 = r0
            goto L63
        L61:
            r0 = 0
            r4 = r0
        L63:
            r0 = r4
            if (r0 == 0) goto L6c
            r0 = r4
            boolean r0 = r0.delete()
            return r0
        L6c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.providers.AttachmentProvider.delete(android.net.Uri, java.lang.String, java.lang.String[]):int");
    }

    /* renamed from: e */
    public final ParcelFileDescriptor m35068e(Uri uri) {
        String str;
        ContentResolver contentResolver;
        ParcelFileDescriptor openFileDescriptor;
        try {
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null || (str = (String) i.D(v.T(lastPathSegment, new char[]{'.'}, false, 0, 6))) == null) {
                throw new FileNotFoundException(uri.toString());
            }
            if (!h.n(str)) {
                throw new FileNotFoundException(uri.toString());
            }
            Uri build = C6160a.f20751a.buildUpon().appendPath(str).build();
            Context context = getContext();
            if (context != null && (contentResolver = context.getContentResolver()) != null && (openFileDescriptor = contentResolver.openFileDescriptor(build, "r")) != null) {
                return openFileDescriptor;
            }
            throw new FileNotFoundException(uri.toString());
        } catch (IOException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [java.lang.Long] */
    /* renamed from: f */
    public final List<Object> m35067f(Uri uri, Iterable<String> iterable, File file) {
        ArrayList arrayList = new ArrayList(C25225a.m4004J(iterable, 10));
        for (String str : iterable) {
            int hashCode = str.hashCode();
            String str2 = null;
            ParcelFileDescriptor parcelFileDescriptor = null;
            switch (hashCode) {
                case -488395321:
                    if (str.equals("_display_name")) {
                        StringBuilder m8728C = C22128a.m8728C("attachment.");
                        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(uri.getQueryParameter("mime"));
                        if (extensionFromMimeType == null) {
                            extensionFromMimeType = "bin";
                        }
                        m8728C.append(extensionFromMimeType);
                        str2 = m8728C.toString();
                        break;
                    } else {
                        break;
                    }
                case -196041627:
                    if (str.equals("mime_type")) {
                        str2 = uri.getQueryParameter("mime");
                        break;
                    } else {
                        break;
                    }
                case 90810505:
                    if (str.equals("_data")) {
                        str2 = uri.toString();
                        break;
                    } else {
                        break;
                    }
                case 91265248:
                    if (str.equals("_size")) {
                        try {
                            ParcelFileDescriptor m35069d = m35069d(uri, file);
                            long statSize = m35069d.getStatSize();
                            m35069d.close();
                            str2 = Long.valueOf(statSize);
                            break;
                        } catch (Throwable th) {
                            if (0 != 0) {
                                parcelFileDescriptor.close();
                            }
                            throw th;
                        }
                    } else {
                        continue;
                    }
            }
            arrayList.add(str2);
        }
        return arrayList;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        l.e(uri, "uri");
        return uri.getQueryParameter("mime");
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        l.e(uri, "uri");
        throw new UnsupportedOperationException("No inserts allowed");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptor;
        l.e(uri, "uri");
        l.e(str, AnalyticsConstants.MODE);
        if (!(!l.a(str, "r"))) {
            int ordinal = m35070c(uri).ordinal();
            if (ordinal == 0) {
                throw new IllegalArgumentException(C22128a.m8571s2("Unsupported path: ", uri));
            }
            if (ordinal == 1) {
                parcelFileDescriptor = m35069d(uri, m35072a());
            } else if (ordinal == 2) {
                parcelFileDescriptor = m35069d(uri, m35071b());
            } else if (ordinal != 3) {
                throw new s1.i();
            } else {
                parcelFileDescriptor = m35068e(uri);
            }
            return parcelFileDescriptor;
        }
        throw new IllegalArgumentException(C22128a.m8725C2("Open mode \"", str, "\" is not allowed"));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        l.e(uri, "uri");
        return query(uri, strArr, str, strArr2, str2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v90, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.messaging.data.providers.AttachmentProvider] */
    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        ArrayList arrayList;
        String str3;
        String str4;
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2;
        Throwable th;
        l.e(uri, "uri");
        EnumC6162c m35070c = m35070c(uri);
        Iterable m3866o = C25225a.m3866o(strArr != null ? strArr : new String[0]);
        String[] strArr3 = C6160a.f20752b;
        ArrayList arrayList2 = new ArrayList();
        int length = strArr3.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                break;
            }
            String str5 = strArr3[i];
            if (strArr == null || !C25225a.m3976Q(strArr, str5)) {
                z = false;
            }
            if (!z) {
                arrayList2.add(str5);
            }
            i++;
        }
        List j0 = i.j0(m3866o, arrayList2);
        Object[] array = j0.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        MatrixCursor matrixCursor = new MatrixCursor((String[]) array, 1);
        int ordinal = m35070c.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                arrayList = m35067f(uri, j0, m35072a());
            } else if (ordinal == 2) {
                arrayList = m35067f(uri, j0, m35071b());
            } else if (ordinal != 3) {
                throw new s1.i();
            } else {
                ArrayList arrayList3 = new ArrayList(C25225a.m4004J(j0, 10));
                Iterator it = j0.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (it.hasNext()) {
                        String str6 = (String) it.next();
                        switch (str6.hashCode()) {
                            case -488395321:
                                str3 = null;
                                if (!str6.equals("_display_name")) {
                                    break;
                                } else {
                                    str3 = uri.getLastPathSegment();
                                    break;
                                }
                            case -196041627:
                                str3 = null;
                                if (!str6.equals("mime_type")) {
                                    break;
                                } else {
                                    str3 = getType(uri);
                                    break;
                                }
                            case 90810505:
                                str3 = null;
                                if (!str6.equals("_data")) {
                                    break;
                                } else {
                                    str3 = uri.toString();
                                    break;
                                }
                            case 91265248:
                                str3 = null;
                                if (str6.equals("_size")) {
                                    try {
                                        parcelFileDescriptor = m35068e(uri);
                                        try {
                                            str4 = Long.valueOf(parcelFileDescriptor.getStatSize());
                                        } catch (FileNotFoundException e) {
                                            parcelFileDescriptor2 = parcelFileDescriptor;
                                            str3 = null;
                                            if (parcelFileDescriptor2 != null) {
                                                parcelFileDescriptor = parcelFileDescriptor2;
                                                str4 = null;
                                                parcelFileDescriptor.close();
                                                str3 = str4;
                                                arrayList3.add(str3);
                                            } else {
                                                arrayList3.add(str3);
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            if (parcelFileDescriptor != null) {
                                                parcelFileDescriptor.close();
                                            }
                                            throw th;
                                        }
                                    } catch (FileNotFoundException e2) {
                                        parcelFileDescriptor2 = null;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        parcelFileDescriptor = null;
                                    }
                                    parcelFileDescriptor.close();
                                    str3 = str4;
                                }
                            default:
                                str3 = null;
                                break;
                        }
                        arrayList3.add(str3);
                    }
                }
            }
            Object[] array2 = arrayList.toArray(new Object[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            matrixCursor.addRow(array2);
            return matrixCursor;
        }
        throw new IllegalArgumentException(C22128a.m8571s2("Unsupported uri: ", uri));
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        l.e(uri, "uri");
        throw new UnsupportedOperationException("No updates allowed");
    }
}
