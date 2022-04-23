package com.asus.privatecontacts.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.b.e;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import com.asus.contacts.a;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/b/b.class */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f3003b = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f3002a = Uri.parse("android.resource://com.asus.contacts/drawable/group_cover_6_land");
    private static File c = null;
    private static File d = null;
    private static File e = null;
    private static File f = null;

    public static Intent a(Uri uri) {
        Intent intent = new Intent("com.android.camera.action.CROP");
        Uri fromFile = Uri.fromFile(new File(Environment.getExternalStorageDirectory(), "PrivateCustomPhoto"));
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("aspectX", 300);
        intent.putExtra("aspectY", 300);
        intent.putExtra("outputX", 300);
        intent.putExtra("outputY", 300);
        intent.putExtra("output", fromFile);
        return intent;
    }

    public static e<String> a(long[] jArr, ArrayList<String> arrayList) {
        e<String> eVar = new e<>();
        if (!(jArr == null || arrayList == null)) {
            for (int i = 0; i < arrayList.size(); i++) {
                eVar.a(jArr[i], arrayList.get(i));
            }
        }
        return eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.ByteArrayOutputStream a(android.content.ContentResolver r5, android.net.Uri r6) {
        /*
            r0 = r5
            r1 = r6
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: Exception -> 0x003e, all -> 0x0062
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r6
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r0)     // Catch: all -> 0x0077, Exception -> 0x007b
            r8 = r0
            r0 = r6
            r7 = r0
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: all -> 0x0077, Exception -> 0x007b
            r5 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            r0.<init>()     // Catch: all -> 0x0077, Exception -> 0x007b
            r0 = r6
            r7 = r0
            r0 = r8
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: all -> 0x0077, Exception -> 0x0081
            r2 = 100
            r3 = r5
            boolean r0 = r0.compress(r1, r2, r3)     // Catch: all -> 0x0077, Exception -> 0x0081
            r0 = r5
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0032
            r0 = r6
            r0.close()     // Catch: IOException -> 0x0034
            r0 = r5
            r7 = r0
        L_0x0032:
            r0 = r7
            return r0
        L_0x0034:
            r6 = move-exception
            r0 = r6
            r0.printStackTrace()
            r0 = r5
            r7 = r0
            goto L_0x0032
        L_0x003e:
            r8 = move-exception
            r0 = 0
            r6 = r0
            r0 = 0
            r5 = r0
        L_0x0043:
            r0 = r6
            r7 = r0
            r0 = r8
            r0.printStackTrace()     // Catch: all -> 0x0077
            r0 = r5
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0032
            r0 = r6
            r0.close()     // Catch: IOException -> 0x0058
            r0 = r5
            r7 = r0
            goto L_0x0032
        L_0x0058:
            r6 = move-exception
            r0 = r6
            r0.printStackTrace()
            r0 = r5
            r7 = r0
            goto L_0x0032
        L_0x0062:
            r5 = move-exception
            r0 = 0
            r7 = r0
        L_0x0065:
            r0 = r7
            if (r0 == 0) goto L_0x006d
            r0 = r7
            r0.close()     // Catch: IOException -> 0x006f
        L_0x006d:
            r0 = r5
            throw r0
        L_0x006f:
            r6 = move-exception
            r0 = r6
            r0.printStackTrace()
            goto L_0x006d
        L_0x0077:
            r5 = move-exception
            goto L_0x0065
        L_0x007b:
            r8 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0043
        L_0x0081:
            r8 = move-exception
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.b.b.a(android.content.ContentResolver, android.net.Uri):java.io.ByteArrayOutputStream");
    }

    public static File a() {
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        if (externalStoragePublicDirectory == null || !externalStoragePublicDirectory.exists()) {
            externalStoragePublicDirectory.mkdir();
            if (!externalStoragePublicDirectory.mkdir()) {
                throw new RuntimeException("Unable to create photo storage directory " + d.getPath());
            }
        }
        return externalStoragePublicDirectory;
    }

    public static File a(Context context) {
        File file;
        synchronized (b.class) {
            try {
                if (c == null) {
                    c = context.getFilesDir();
                }
                if (d == null) {
                    File file2 = new File(c, "photos");
                    d = file2;
                    if (!file2.exists() && !d.mkdirs()) {
                        throw new RuntimeException("Unable to create photo storage directory " + d.getPath());
                    }
                }
                file = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    public static String a(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str.replace("/", "//").replace("'", "''").replace("[", "/[").replace("]", "/]").replace("%", "/%").replace("&", "/&").replace("(", "/(").replace(")", "/)");
        }
        char[] charArray = str2.toCharArray();
        boolean[] zArr = new boolean[charArray.length];
        int i = 0;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if (charArray[i2] == 0) {
                zArr[i2] = false;
            } else {
                zArr[i2] = true;
                i++;
            }
        }
        char[] cArr = new char[i];
        int i3 = 0;
        for (int i4 = 0; i4 < zArr.length; i4++) {
            if (zArr[i4]) {
                cArr[i3] = charArray[i4];
                i3++;
            }
        }
        return String.valueOf(cArr);
    }

    public static ArrayList<String> a(e<String> eVar, long[] jArr) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (eVar != null) {
            int a2 = eVar.a();
            for (int i = 0; i < a2; i++) {
                arrayList.add(eVar.b(i));
                if (jArr != null && i < jArr.length) {
                    jArr[i] = eVar.a(i);
                }
            }
        }
        return arrayList;
    }

    public static ArrayList<Long> a(long[] jArr) {
        ArrayList<Long> arrayList = new ArrayList<>();
        if (jArr != null && jArr.length > 0) {
            for (long j : jArr) {
                arrayList.add(Long.valueOf(j));
            }
        }
        return arrayList;
    }

    public static void a(ImageView imageView, Uri uri, int i) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        if (imageView == null) {
            Log.d(f3003b, "ImageView is null >>> setPhotoToViewByUri");
            return;
        }
        try {
            try {
                try {
                    InputStream openInputStream = imageView.getContext().getContentResolver().openInputStream(uri);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPurgeable = true;
                    if (i > 0) {
                        options.inSampleSize = i;
                    }
                    inputStream3 = openInputStream;
                    inputStream = openInputStream;
                    inputStream2 = openInputStream;
                    imageView.setImageBitmap(BitmapFactory.decodeStream(openInputStream, null, options));
                    if (openInputStream != null) {
                        try {
                            openInputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
            }
        } catch (FileNotFoundException e6) {
            e6.printStackTrace();
            if (inputStream3 != null) {
                try {
                    inputStream3.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.ContentResolver r5, android.net.Uri r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.b.b.a(android.content.ContentResolver, android.net.Uri, java.lang.String):boolean");
    }

    public static boolean a(Context context, Menu menu, String str) {
        boolean z;
        try {
            MenuItem findItem = menu.findItem(2131296758);
            if ("menu_done".equals(str)) {
                findItem.setTitle(context.getResources().getString(2131755823));
            } else if ("menu_delete".equals(str)) {
                findItem.setTitle(context.getResources().getString(2131755819));
            } else if ("menu_restore".equals(str)) {
                findItem.setTitle(context.getResources().getString(2131755999));
            } else if ("menu_save".equals(str)) {
                findItem.setTitle(context.getResources().getString(2131756074));
            }
            z = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            z = false;
        }
        return z;
    }

    public static long[] a(ArrayList<Long> arrayList) {
        long[] jArr = null;
        if (arrayList != null) {
            jArr = null;
            if (arrayList.size() > 0) {
                jArr = new long[arrayList.size()];
                for (int i = 0; i < jArr.length; i++) {
                    jArr[i] = arrayList.get(i).longValue();
                }
            }
        }
        return jArr;
    }

    public static Intent b() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        return intent;
    }

    public static File b(Context context) {
        File file;
        synchronized (b.class) {
            try {
                if (e == null) {
                    e = new File(Environment.getExternalStorageDirectory() + "/Android/data/" + context.getApplicationContext().getPackageName());
                }
                if (f == null) {
                    File file2 = new File(e, "photos");
                    f = file2;
                    if (!file2.exists() && !f.mkdirs()) {
                        throw new RuntimeException("Unable to create photo storage directory " + f.getPath());
                    }
                }
                file = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder(BuildConfig.FLAVOR);
        if (str != null && str.length() > 0) {
            int length = str.length();
            sb.append("xxx-xxx-");
            if (length > 3) {
                sb.append(str.substring(length - 3));
            } else {
                sb.append(str.substring(length - 1));
            }
        }
        return sb.toString();
    }

    public static boolean b(Uri uri) {
        String uri2 = uri.toString();
        boolean z = false;
        if (uri2 != null) {
            if (TextUtils.isEmpty(uri2)) {
                z = false;
            } else {
                z = false;
                if (uri2.startsWith("android.resource://com.asus.contacts/")) {
                    z = a.d(uri.getLastPathSegment());
                }
            }
        }
        return z;
    }

    public static long[] b(ArrayList<Long> arrayList) {
        long[] jArr = new long[arrayList.size()];
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                jArr[i] = arrayList.get(i).longValue();
            }
        }
        return jArr;
    }

    public static boolean c(Context context) {
        boolean z = false;
        try {
            int i = context.getPackageManager().getPackageInfo("com.asus.asusincallui", 0).versionCode;
            Log.d(f3003b, "Incall UI version: " + i);
            if (i >= 21000010) {
                z = true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return z;
    }

    public static boolean d(Context context) {
        boolean z;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.asus.message", 0);
            int i = packageInfo.versionCode;
            boolean z2 = packageInfo.applicationInfo.enabled;
            Log.d(f3003b, "MSG Version: " + i + " enabled:" + z2);
            z = false;
            if (i >= 210013440) {
                z = false;
                if (z2) {
                    z = true;
                }
            }
        } catch (Exception e2) {
            Log.e(f3003b, "Not support AsusMessage:" + e2.toString());
            z = false;
        }
        return z;
    }
}
