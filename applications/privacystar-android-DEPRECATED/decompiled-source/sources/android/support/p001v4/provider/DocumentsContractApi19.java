package android.support.p001v4.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
import android.util.Log;
@RequiresApi(19)
/* renamed from: android.support.v4.provider.DocumentsContractApi19 */
/* loaded from: classes-dex2jar.jar:android/support/v4/provider/DocumentsContractApi19.class */
class DocumentsContractApi19 {
    private static final int FLAG_VIRTUAL_DOCUMENT = 512;
    private static final String TAG = "DocumentFile";

    private DocumentsContractApi19() {
    }

    public static boolean canRead(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(getRawType(context, uri));
    }

    public static boolean canWrite(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String rawType = getRawType(context, uri);
        int queryForInt = queryForInt(context, uri, "flags", 0);
        if (TextUtils.isEmpty(rawType)) {
            return false;
        }
        if ((queryForInt & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(rawType) || (queryForInt & 8) == 0) {
            return !TextUtils.isEmpty(rawType) && (queryForInt & 2) != 0;
        }
        return true;
    }

    private static void closeQuietly(@Nullable AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static boolean exists(Context context, Uri uri) {
        Throwable th;
        Exception e;
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = false;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = contentResolver.query(uri, new String[]{"document_id"}, null, null, null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (cursor.getCount() > 0) {
                z = true;
            }
            closeQuietly(cursor);
            return z;
        } catch (Exception e3) {
            e = e3;
            StringBuilder sb = new StringBuilder();
            sb.append("Failed query: ");
            sb.append(e);
            cursor2 = cursor;
            Log.w(TAG, sb.toString());
            closeQuietly(cursor);
            return false;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            closeQuietly(cursor2);
            throw th;
        }
    }

    public static long getFlags(Context context, Uri uri) {
        return queryForLong(context, uri, "flags", 0L);
    }

    @Nullable
    public static String getName(Context context, Uri uri) {
        return queryForString(context, uri, "_display_name", null);
    }

    @Nullable
    private static String getRawType(Context context, Uri uri) {
        return queryForString(context, uri, "mime_type", null);
    }

    @Nullable
    public static String getType(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        if ("vnd.android.document/directory".equals(rawType)) {
            return null;
        }
        return rawType;
    }

    public static boolean isDirectory(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(getRawType(context, uri));
    }

    public static boolean isFile(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        return !"vnd.android.document/directory".equals(rawType) && !TextUtils.isEmpty(rawType);
    }

    public static boolean isVirtual(Context context, Uri uri) {
        boolean z = false;
        if (!DocumentsContract.isDocumentUri(context, uri)) {
            return false;
        }
        if ((getFlags(context, uri) & 512) != 0) {
            z = true;
        }
        return z;
    }

    public static long lastModified(Context context, Uri uri) {
        return queryForLong(context, uri, "last_modified", 0L);
    }

    public static long length(Context context, Uri uri) {
        return queryForLong(context, uri, "_size", 0L);
    }

    private static int queryForInt(Context context, Uri uri, String str, int i) {
        return (int) queryForLong(context, uri, str, i);
    }

    private static long queryForLong(Context context, Uri uri, String str, long j) {
        Throwable th;
        Exception e;
        ContentResolver contentResolver = context.getContentResolver();
        r8 = null;
        Cursor cursor = null;
        try {
            try {
                cursor = contentResolver.query(uri, new String[]{str}, null, null, null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (!cursor.moveToFirst() || cursor.isNull(0)) {
                closeQuietly(cursor);
                return j;
            }
            long j2 = cursor.getLong(0);
            closeQuietly(cursor);
            return j2;
        } catch (Exception e3) {
            e = e3;
            StringBuilder sb = new StringBuilder();
            sb.append("Failed query: ");
            sb.append(e);
            cursor = cursor;
            Log.w(TAG, sb.toString());
            closeQuietly(cursor);
            return j;
        } catch (Throwable th3) {
            th = th3;
            closeQuietly(cursor);
            throw th;
        }
    }

    @Nullable
    private static String queryForString(Context context, Uri uri, String str, @Nullable String str2) {
        Throwable th;
        Exception e;
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = contentResolver.query(uri, new String[]{str}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            if (!cursor.moveToFirst() || cursor.isNull(0)) {
                closeQuietly(cursor);
                return str2;
            }
            String string = cursor.getString(0);
            closeQuietly(cursor);
            return string;
        } catch (Exception e3) {
            e = e3;
            StringBuilder sb = new StringBuilder();
            sb.append("Failed query: ");
            sb.append(e);
            Log.w(TAG, sb.toString());
            closeQuietly(cursor);
            return str2;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            closeQuietly(cursor2);
            throw th;
        }
    }
}
