package com.lb.video_trimmer_library.b;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import com.mopub.common.Constants;
import java.io.File;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.h.l;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J;\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0002\u0010\fJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002¨\u0006\u0013"}, d2 = {"Lcom/lb/video_trimmer_library/utils/FileUtils;", "", "()V", "getDataColumn", "", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "selection", "selectionArgs", "", "(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;", "getPath", "isDownloadsDocument", "", "isExternalStorageDocument", "isGooglePhotosUri", "isMediaDocument", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f33629a = new b();

    private b() {
    }

    public static String a(Context context, Uri uri) {
        z zVar;
        Uri uri2;
        z zVar2;
        String[] strArr;
        p.c(context, "context");
        p.c(uri, "uri");
        if (Build.VERSION.SDK_INT >= 19 && DocumentsContract.isDocumentUri(context, uri)) {
            if (p.a((Object) "com.android.externalstorage.documents", (Object) uri.getAuthority())) {
                String docId = DocumentsContract.getDocumentId(uri);
                p.a((Object) docId, "docId");
                List<String> b2 = new l(":").b(docId);
                if (!b2.isEmpty()) {
                    ListIterator<String> listIterator = b2.listIterator(b2.size());
                    while (listIterator.hasPrevious()) {
                        if (!(listIterator.previous().length() == 0)) {
                            zVar2 = n.b((Iterable) b2, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                zVar2 = z.f36608a;
                Collection collection = zVar2;
                if (collection != null) {
                    Object[] array = collection.toArray(new String[0]);
                    if (array != null) {
                        if (!kotlin.h.p.a("primary", ((String[]) array)[0])) {
                            return null;
                        }
                        return Environment.getExternalStorageDirectory().toString() + "/" + strArr[1];
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
            } else if (p.a((Object) "com.android.providers.downloads.documents", (Object) uri.getAuthority())) {
                String id = DocumentsContract.getDocumentId(uri);
                try {
                    Uri parse = Uri.parse("content://downloads/public_downloads");
                    Long valueOf = Long.valueOf(id);
                    p.a((Object) valueOf, "java.lang.Long.valueOf(id)");
                    return a(context, ContentUris.withAppendedId(parse, valueOf.longValue()), null, null);
                } catch (NumberFormatException e) {
                    p.a((Object) id, "id");
                    if (kotlin.h.p.a(id, "raw:/", false)) {
                        String substring = id.substring(5);
                        p.a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                        if (new File(substring).exists()) {
                            return substring;
                        }
                    }
                }
            } else if (p.a((Object) "com.android.providers.media.documents", (Object) uri.getAuthority())) {
                String docId2 = DocumentsContract.getDocumentId(uri);
                p.a((Object) docId2, "docId");
                List<String> b3 = new l(":").b(docId2);
                if (!b3.isEmpty()) {
                    ListIterator<String> listIterator2 = b3.listIterator(b3.size());
                    while (listIterator2.hasPrevious()) {
                        if (!(listIterator2.previous().length() == 0)) {
                            zVar = n.b((Iterable) b3, listIterator2.nextIndex() + 1);
                            break;
                        }
                    }
                }
                zVar = z.f36608a;
                Collection collection2 = zVar;
                if (collection2 != null) {
                    Object[] array2 = collection2.toArray(new String[0]);
                    if (array2 != null) {
                        String[] strArr2 = (String[]) array2;
                        String str = strArr2[0];
                        int hashCode = str.hashCode();
                        if (hashCode == 93166550) {
                            uri2 = null;
                            if (str.equals("audio")) {
                                uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                            }
                        } else if (hashCode == 100313435) {
                            uri2 = null;
                            if (str.equals("image")) {
                                uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                            }
                        } else if (hashCode != 112202875) {
                            uri2 = null;
                        } else {
                            uri2 = null;
                            if (str.equals("video")) {
                                uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                            }
                        }
                        return a(context, uri2, "_id=?", new String[]{strArr2[1]});
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
            }
        }
        String scheme = uri.getScheme();
        if (scheme == null) {
            p.a();
        }
        if (kotlin.h.p.a(Constants.VAST_TRACKER_CONTENT, scheme)) {
            return p.a((Object) "com.google.android.apps.photos.content", (Object) uri.getAuthority()) ? uri.getLastPathSegment() : a(context, uri, null, null);
        }
        String scheme2 = uri.getScheme();
        if (scheme2 == null) {
            p.a();
        }
        if (kotlin.h.p.a("file", scheme2)) {
            return uri.getPath();
        }
        return null;
    }

    private static String a(Context context, Uri uri, String str, String[] strArr) {
        Throwable th;
        Cursor cursor = null;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            if (uri == null) {
                p.a();
            }
            cursor = contentResolver.query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
                        cursor.close();
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor == null) {
                return null;
            }
            cursor.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
