package com.p456lb.video_trimmer_library.p458b;

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
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18418l;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J;\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0002\u0010\fJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\bH\u0002¨\u0006\u0013"}, m4298d2 = {"Lcom/lb/video_trimmer_library/utils/FileUtils;", "", "()V", "getDataColumn", "", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "selection", "selectionArgs", "", "(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;", "getPath", "isDownloadsDocument", "", "isExternalStorageDocument", "isGooglePhotosUri", "isMediaDocument", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
/* renamed from: com.lb.video_trimmer_library.b.b */
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/b.class */
public final class C16598b {

    /* renamed from: a */
    public static final C16598b f58413a = new C16598b();

    private C16598b() {
    }

    /* renamed from: a */
    public static String m6927a(Context context, Uri uri) {
        List list;
        Uri uri2;
        List list2;
        String[] strArr;
        C18524p.m3841c(context, "context");
        C18524p.m3841c(uri, "uri");
        if (Build.VERSION.SDK_INT >= 19 && DocumentsContract.isDocumentUri(context, uri)) {
            if (C18524p.m3850a((Object) "com.android.externalstorage.documents", (Object) uri.getAuthority())) {
                String docId = DocumentsContract.getDocumentId(uri);
                C18524p.m3849a((Object) docId, "docId");
                List<String> m3982b = new C18418l(":").m3982b(docId);
                if (!m3982b.isEmpty()) {
                    ListIterator<String> listIterator = m3982b.listIterator(m3982b.size());
                    while (listIterator.hasPrevious()) {
                        if (!(listIterator.previous().length() == 0)) {
                            list2 = C18282n.m4141b((Iterable) m3982b, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                list2 = C18297z.f63400a;
                Collection collection = list2;
                if (collection == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
                }
                Object[] array = collection.toArray(new String[0]);
                if (array == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                if (!C18425p.m3961a("primary", ((String[]) array)[0])) {
                    return null;
                }
                return Environment.getExternalStorageDirectory().toString() + "/" + strArr[1];
            } else if (C18524p.m3850a((Object) "com.android.providers.downloads.documents", (Object) uri.getAuthority())) {
                String id = DocumentsContract.getDocumentId(uri);
                try {
                    Uri parse = Uri.parse("content://downloads/public_downloads");
                    Long valueOf = Long.valueOf(id);
                    C18524p.m3849a((Object) valueOf, "java.lang.Long.valueOf(id)");
                    return m6926a(context, ContentUris.withAppendedId(parse, valueOf.longValue()), null, null);
                } catch (NumberFormatException e) {
                    C18524p.m3849a((Object) id, "id");
                    if (C18425p.m3957a(id, "raw:/", false)) {
                        String substring = id.substring(5);
                        C18524p.m3849a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                        if (new File(substring).exists()) {
                            return substring;
                        }
                    }
                }
            } else if (C18524p.m3850a((Object) "com.android.providers.media.documents", (Object) uri.getAuthority())) {
                String docId2 = DocumentsContract.getDocumentId(uri);
                C18524p.m3849a((Object) docId2, "docId");
                List<String> m3982b2 = new C18418l(":").m3982b(docId2);
                if (!m3982b2.isEmpty()) {
                    ListIterator<String> listIterator2 = m3982b2.listIterator(m3982b2.size());
                    while (listIterator2.hasPrevious()) {
                        if (!(listIterator2.previous().length() == 0)) {
                            list = C18282n.m4141b((Iterable) m3982b2, listIterator2.nextIndex() + 1);
                            break;
                        }
                    }
                }
                list = C18297z.f63400a;
                Collection collection2 = list;
                if (collection2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
                }
                Object[] array2 = collection2.toArray(new String[0]);
                if (array2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
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
                return m6926a(context, uri2, "_id=?", new String[]{strArr2[1]});
            }
        }
        String scheme = uri.getScheme();
        if (scheme == null) {
            C18524p.m3855a();
        }
        if (C18425p.m3961a(Constants.VAST_TRACKER_CONTENT, scheme)) {
            return C18524p.m3850a((Object) "com.google.android.apps.photos.content", (Object) uri.getAuthority()) ? uri.getLastPathSegment() : m6926a(context, uri, null, null);
        }
        String scheme2 = uri.getScheme();
        if (scheme2 == null) {
            C18524p.m3855a();
        }
        if (!C18425p.m3961a("file", scheme2)) {
            return null;
        }
        return uri.getPath();
    }

    /* renamed from: a */
    private static String m6926a(Context context, Uri uri, String str, String[] strArr) {
        Throwable th;
        Cursor cursor;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            if (uri == null) {
                C18524p.m3855a();
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
            cursor = null;
        }
    }
}
