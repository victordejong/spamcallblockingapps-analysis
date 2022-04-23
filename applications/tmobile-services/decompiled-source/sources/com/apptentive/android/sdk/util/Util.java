package com.apptentive.android.sdk.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Patterns;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.URLUtil;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.IntentCompat;
import androidx.core.util.AtomicFile;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.StoredFile;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.facebook.stetho.common.Utf8Charset;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/Util.class */
public class Util {
    public static int alphaMixColors(int i, int i2) {
        double d = ((i2 >> 24) & 255) / 255.0d;
        double d2 = (((i >> 24) & 255) / 255.0d) * (1.0d - d);
        double d3 = d + d2;
        double d4 = d2 / d3;
        double d5 = d4 / d3;
        return ((((int) (((i & 255) * d4) + ((i2 & 255) * d5))) & 255) << 0) | ((((int) (d3 * 255.0d)) & 255) << 24) | ((((int) ((((i >> 16) & 255) * d4) + (((i2 >> 16) & 255) * d5))) & 255) << 16) | ((((int) ((((i >> 8) & 255) * d4) + (((i2 >> 8) & 255) * d5))) & 255) << 8);
    }

    public static void appendFileToStream(File file, OutputStream outputStream) throws IOException {
        Throwable th;
        if (file == null) {
            throw new IllegalArgumentException("'file' is null");
        } else if (!file.exists()) {
            throw new FileNotFoundException("File does not exist: " + file);
        } else if (!file.isDirectory()) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    copy(fileInputStream2, outputStream);
                    ensureClosed(fileInputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    ensureClosed(fileInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new FileNotFoundException("File is directory: " + file);
        }
    }

    public static Resources.Theme buildApptentiveInteractionTheme(Context context) {
        Resources.Theme newTheme = context.getResources().newTheme();
        newTheme.applyStyle(C0726R.style.ApptentiveTheme_Base_Versioned, true);
        try {
            int i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.theme;
            if (i != 0) {
                newTheme.applyStyle(i, true);
            }
            newTheme.applyStyle(C0726R.style.ApptentiveBaseFrameTheme, true);
            int identifier = context.getResources().getIdentifier("ApptentiveThemeOverride", "style", context.getPackageName());
            if (identifier != 0) {
                newTheme.applyStyle(identifier, true);
            }
            return newTheme;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static boolean canLaunchIntent(Context context, Intent intent) {
        return (context == null || intent.resolveActivity(context.getPackageManager()) == null) ? false : true;
    }

    public static Activity castContextToActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return castContextToActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static String classToString(Object obj) {
        return obj == null ? "null" : String.format("%s(%s)", obj.getClass().getSimpleName(), obj);
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static int copyFile(String str, String str2) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        int i = 0;
        try {
        } catch (Exception e) {
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        if (new File(str).exists()) {
            fileInputStream = new FileInputStream(str);
            try {
                fileOutputStream2 = new FileOutputStream(str2);
                try {
                    byte[] bArr = new byte[1444];
                    i = 0;
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        i += read;
                        fileOutputStream2.write(bArr, 0, read);
                    }
                } catch (Exception e2) {
                    i = 0;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = fileOutputStream2;
                    ensureClosed(fileInputStream);
                    ensureClosed(fileOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                fileOutputStream2 = null;
                i = 0;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
            fileInputStream2 = fileInputStream;
            ensureClosed(fileInputStream2);
            ensureClosed(fileOutputStream2);
            return i;
        }
        fileOutputStream2 = null;
        ensureClosed(fileInputStream2);
        ensureClosed(fileOutputStream2);
        return i;
    }

    public static StoredFile createLocalStoredFile(InputStream inputStream, String str, String str2, String str3) {
        FileOutputStream fileOutputStream;
        CountingOutputStream countingOutputStream;
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        IOException e;
        BufferedOutputStream bufferedOutputStream2;
        CountingOutputStream countingOutputStream2;
        if (inputStream == null) {
            return null;
        }
        try {
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
            fileOutputStream = new FileOutputStream(file);
            try {
                BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(fileOutputStream);
                try {
                    CountingOutputStream countingOutputStream3 = new CountingOutputStream(bufferedOutputStream3);
                    bufferedOutputStream = bufferedOutputStream3;
                    fileOutputStream = fileOutputStream;
                    countingOutputStream = countingOutputStream3;
                    try {
                        try {
                            byte[] bArr = new byte[2048];
                            while (true) {
                                int read = inputStream.read(bArr, 0, 2048);
                                if (read != -1) {
                                    countingOutputStream3.write(bArr, 0, read);
                                } else {
                                    ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("File saved, size = ");
                                    sb.append(countingOutputStream3.getBytesWritten() / 1024);
                                    sb.append("k");
                                    ApptentiveLog.m15638v(apptentiveLogTag, sb.toString(), new Object[0]);
                                    ensureClosed(countingOutputStream3);
                                    ensureClosed(bufferedOutputStream3);
                                    ensureClosed(fileOutputStream);
                                    StoredFile storedFile = new StoredFile();
                                    storedFile.setSourceUriOrPath(str);
                                    storedFile.setLocalFilePath(str2);
                                    storedFile.setMimeType(str3);
                                    return storedFile;
                                }
                            }
                        } catch (IOException e2) {
                            e = e2;
                            bufferedOutputStream2 = bufferedOutputStream3;
                            countingOutputStream2 = countingOutputStream3;
                            ApptentiveLog.m15644e(ApptentiveLogTag.UTIL, "Error creating local copy of file attachment.", new Object[0]);
                            bufferedOutputStream = bufferedOutputStream2;
                            fileOutputStream = fileOutputStream;
                            countingOutputStream = countingOutputStream2;
                            ErrorMetrics.logException(e);
                            ensureClosed(countingOutputStream2);
                            ensureClosed(bufferedOutputStream2);
                            ensureClosed(fileOutputStream);
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        ensureClosed(countingOutputStream);
                        ensureClosed(bufferedOutputStream);
                        ensureClosed(fileOutputStream);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    countingOutputStream2 = null;
                    bufferedOutputStream2 = bufferedOutputStream3;
                } catch (Throwable th3) {
                    th = th3;
                    countingOutputStream = null;
                    bufferedOutputStream = bufferedOutputStream3;
                    ensureClosed(countingOutputStream);
                    ensureClosed(bufferedOutputStream);
                    ensureClosed(fileOutputStream);
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
                bufferedOutputStream2 = null;
                countingOutputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream = null;
                countingOutputStream = null;
            }
        } catch (IOException e5) {
            e = e5;
            bufferedOutputStream2 = null;
            fileOutputStream = null;
            countingOutputStream2 = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedOutputStream = null;
            fileOutputStream = null;
            countingOutputStream = null;
        }
    }

    public static StoredFile createLocalStoredFile(String str, String str2, String str3) {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2 = null;
        try {
            Context applicationContext = ApptentiveInternal.getInstance().getApplicationContext();
            if (!URLUtil.isContentUrl(str) || applicationContext == null) {
                inputStream = new FileInputStream(new File(str));
            } else {
                inputStream = applicationContext.getContentResolver().openInputStream(Uri.parse(str));
            }
            try {
                StoredFile createLocalStoredFile = createLocalStoredFile(inputStream, str, str2, str3);
                ensureClosed(inputStream);
                return createLocalStoredFile;
            } catch (FileNotFoundException e) {
                ensureClosed(inputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                inputStream2 = inputStream;
                ensureClosed(inputStream2);
                throw th;
            }
        } catch (FileNotFoundException e2) {
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String currentDateAsFilename(String str, String str2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss", Locale.US);
        return str + simpleDateFormat.format(new Date()) + str2;
    }

    public static double currentTimeSeconds() {
        return System.currentTimeMillis() / 1000.0d;
    }

    public static float dipsToPixels(@NonNull Context context, float f) {
        return context.getResources().getDisplayMetrics().density * f;
    }

    public static void ensureClosed(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                ErrorMetrics.logException(e);
            }
        }
    }

    public static String generateCacheFileFullPath(Uri uri, File file, long j) {
        return new File(file, md5(uri.toString() + Long.toString(j))).getPath();
    }

    public static String generateCacheFileFullPath(String str, File file) {
        return new File(file, md5(str)).getPath();
    }

    public static String generateCacheFilePathFromNonceOrPrefix(Context context, String str, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "apptentive-api-file-" + str;
        }
        return new File(getDiskCacheDir(context), str3).getPath();
    }

    public static String generateRandomFilename() {
        return UUID.randomUUID().toString();
    }

    public static String getAndroidID(Context context) {
        if (context == null) {
            return null;
        }
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String getClipboardText(Context context) {
        ClipData primaryClip;
        if (context != null) {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (!clipboardManager.hasPrimaryClip()) {
                return null;
            }
            ClipDescription primaryClipDescription = clipboardManager.getPrimaryClipDescription();
            if ((primaryClipDescription.hasMimeType("text/plain") || primaryClipDescription.hasMimeType("text/html")) && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getItemCount() > 0) {
                return primaryClip.getItemAt(0).getText().toString();
            }
            return null;
        }
        throw new IllegalArgumentException("Context is null");
    }

    public static long getContentCreationTime(Context context, Uri uri) {
        Cursor query;
        if (!hasPermission(context, "android.permission.READ_EXTERNAL_STORAGE") || (query = context.getContentResolver().query(uri, null, null, null, null)) == null || !query.moveToFirst()) {
            return 0L;
        }
        String string = query.getString(0);
        String substring = string.substring(string.lastIndexOf(":") + 1);
        query.close();
        Cursor query2 = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "_id = ? ", new String[]{substring}, null);
        if (query2 == null || !query2.moveToFirst()) {
            return 0L;
        }
        long j = query2.getLong(query2.getColumnIndex("date_added"));
        query2.close();
        return j;
    }

    public static File getDiskCacheDir(Context context) {
        File externalCacheDir = (("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) && hasPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) ? context.getExternalCacheDir() : null;
        File file = externalCacheDir;
        if (externalCacheDir == null) {
            file = externalCacheDir;
            if (context != null) {
                file = context.getCacheDir();
            }
        }
        return file;
    }

    public static File getEncryptedFilename(File file) {
        String name = file.getName();
        if (!name.endsWith(".encrypted")) {
            String parent = file.getParent();
            file = new File(parent, name + ".encrypted");
        }
        return file;
    }

    public static String getInstallerPackageName(Context context) {
        try {
            return context.getPackageManager().getInstallerPackageName(context.getPackageName());
        } catch (Exception e) {
            return null;
        }
    }

    public static File getInternalDir(Context context, String str, boolean z) {
        File file = new File(context.getFilesDir(), str);
        if (!file.exists() && z && !file.mkdirs()) {
            ApptentiveLog.m15635w(ApptentiveLogTag.UTIL, "Unable to create internal directory: %s", file);
        }
        return file;
    }

    public static String getMimeTypeFromUri(Context context, Uri uri) {
        return context != null ? context.getContentResolver().getType(uri) : null;
    }

    public static String getRealFilePathFromUri(Context context, Uri uri) {
        Cursor query;
        if (!hasPermission(context, "android.permission.READ_EXTERNAL_STORAGE") || (query = context.getContentResolver().query(uri, null, null, null, null)) == null || !query.moveToFirst()) {
            return null;
        }
        String string = query.getString(0);
        String substring = string.substring(string.lastIndexOf(":") + 1);
        query.close();
        Cursor query2 = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "_id = ? ", new String[]{substring}, null);
        if (query2 == null || !query2.moveToFirst()) {
            return null;
        }
        String string2 = query2.getString(query2.getColumnIndex("_data"));
        query2.close();
        return string2;
    }

    public static int getResourceIdFromAttribute(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static Point getScreenSize(Context context) {
        Point point = new Point();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        point.set(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        return point;
    }

    public static int getThemeColor(Context context, int i) {
        if (context == null) {
            return 0;
        }
        return getThemeColor(context.getTheme(), i);
    }

    public static int getThemeColor(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(i, typedValue, true)) {
            return typedValue.data;
        }
        return 0;
    }

    public static File getUnencryptedFilename(File file) {
        String name = file.getName();
        File file2 = file;
        if (name.endsWith(".encrypted")) {
            file2 = new File(file.getParent(), name.substring(0, name.length() - 10));
        }
        return file2;
    }

    public static int getUtcOffset() {
        return TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 1000;
    }

    @Nullable
    public static View.OnClickListener guarded(@Nullable final View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            return new View.OnClickListener() { // from class: com.apptentive.android.sdk.util.Util.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        onClickListener.onClick(view);
                    } catch (Exception e) {
                        ApptentiveLog.m15641e(e, "Exception while handling click listener", new Object[0]);
                        ErrorMetrics.logException(e);
                    }
                }
            };
        }
        return null;
    }

    public static boolean hasPermission(Context context, String str) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (context.checkCallingOrSelfPermission(str) == 0) {
            z = true;
        }
        return z;
    }

    public static void hideSoftKeyboard(Context context, View view) {
        if (context != null && view != null) {
            ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static boolean isEmailValid(String str) {
        return !StringUtils.isNullOrEmpty(str) && Patterns.EMAIL_ADDRESS.matcher(str).matches();
    }

    public static boolean isMimeTypeImage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.substring(0, str.indexOf("/")).equalsIgnoreCase("Image");
    }

    public static boolean isNetworkConnectionPresent() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        Context applicationContext = ApptentiveInternal.getInstance().getApplicationContext();
        if (applicationContext == null || (connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return false;
        }
        return activeNetworkInfo.isConnectedOrConnecting();
    }

    @Nullable
    public static Intent makeRestartActivityTask(ComponentName componentName) {
        try {
            return makeRestartActivityTaskGuarded(componentName);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in makeRestartActivityTask", new Object[0]);
            ErrorMetrics.logException(e);
            return null;
        }
    }

    private static Intent makeRestartActivityTaskGuarded(ComponentName componentName) throws InvocationException {
        try {
            return Intent.makeRestartActivityTask(componentName);
        } catch (NoSuchMethodError e) {
            return (Intent) Invocation.fromClass(IntentCompat.class).invokeMethod("makeRestartActivityTask", new Class[]{ComponentName.class}, new Object[]{componentName});
        }
    }

    private static String md5(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(Integer.toHexString(b & 255));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public static boolean openFileAttachment(Context context, String str, String str2, String str3) {
        String[] list;
        if (("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) && hasPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            File file = new File(str2);
            if (!file.exists()) {
                return false;
            }
            String name = file.getName();
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            File file2 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "apptentive-received");
            if (!file2.exists()) {
                file2.mkdir();
            }
            File file3 = new File(file2, name);
            String path = file3.getPath();
            if (!file3.exists() && (list = file2.list()) != null) {
                for (String str4 : list) {
                    new File(file2, str4).delete();
                }
            }
            if (copyFile(str2, path) == 0) {
                return false;
            }
            intent.setDataAndType(Uri.fromFile(file3), str3);
            try {
                context.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException e) {
                ApptentiveLog.m15641e(e, "Activity not found to open attachment: ", new Object[0]);
                ErrorMetrics.logException(e);
                return false;
            }
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (!canLaunchIntent(context, intent2)) {
                return false;
            }
            context.startActivity(intent2);
            return false;
        }
    }

    private static PrintStream openTextWrite(File file, boolean z) throws IOException {
        if (file != null) {
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                return new PrintStream(new FileOutputStream(file, z), false, Utf8Charset.NAME);
            }
            throw new IOException("Parent file could not be created: " + parentFile);
        }
        throw new IllegalArgumentException("'file' is null");
    }

    public static Integer parseCacheControlHeader(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : str.substring(str.indexOf("[") + 1, str.lastIndexOf("]")).split(",")) {
            String trim = str2.trim();
            if (trim.startsWith("max-age=")) {
                String[] split = trim.split("=");
                if (split.length == 2) {
                    String str3 = split[1];
                    try {
                        return Integer.valueOf(Integer.parseInt(str3));
                    } catch (NumberFormatException e) {
                        ApptentiveLog.m15641e(e, "Error parsing cache expiration as number: %s", str3);
                        ErrorMetrics.logException(e);
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    public static byte[] readBytes(File file) throws IOException {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            appendFileToStream(file, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ensureClosed(byteArrayOutputStream);
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream2 = byteArrayOutputStream;
            ensureClosed(byteArrayOutputStream2);
            throw th;
        }
    }

    public static Boolean readNullableBoolean(DataInput dataInput) throws IOException {
        return dataInput.readBoolean() ? Boolean.valueOf(dataInput.readBoolean()) : null;
    }

    public static Double readNullableDouble(DataInput dataInput) throws IOException {
        return dataInput.readBoolean() ? Double.valueOf(dataInput.readDouble()) : null;
    }

    public static String readNullableUTF(DataInput dataInput) throws IOException {
        return dataInput.readBoolean() ? dataInput.readUTF() : null;
    }

    public static String readStringFromInputStream(InputStream inputStream, String str) {
        Throwable th;
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[8196];
        InputStreamReader inputStreamReader = null;
        InputStreamReader inputStreamReader2 = null;
        try {
            InputStreamReader inputStreamReader3 = new InputStreamReader(inputStream, str);
            while (true) {
                try {
                    int read = inputStreamReader3.read(cArr, 0, 8196);
                    if (read < 0) {
                        break;
                    }
                    sb.append(cArr, 0, read);
                } catch (Exception e) {
                    inputStreamReader = inputStreamReader3;
                    ensureClosed(inputStreamReader);
                    return sb.toString();
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamReader2 = inputStreamReader3;
                    ensureClosed(inputStreamReader2);
                    throw th;
                }
            }
            ensureClosed(inputStreamReader3);
        } catch (Exception e2) {
        } catch (Throwable th3) {
            th = th3;
        }
        return sb.toString();
    }

    public static void setClipboardText(Context context, String str) {
        if (context != null) {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, str));
            return;
        }
        throw new IllegalArgumentException("Context is null");
    }

    public static void showSoftKeyboard(Activity activity, View view) {
        if (activity != null && activity.getCurrentFocus() != null) {
            ((InputMethodManager) activity.getSystemService("input_method")).showSoftInput(view, 0);
        }
    }

    public static void showToast(final Context context, final String str, final int i) {
        if (!DispatchQueue.isMainQueue()) {
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.util.Util.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    Util.showToast(context, str, i);
                }
            });
            return;
        }
        try {
            Toast.makeText(context, str, i).show();
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while trying to display toast message", new Object[0]);
            ErrorMetrics.logException(e);
        }
    }

    public static String stackTraceAsString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static void writeAtomically(File file, byte[] bArr) throws IOException {
        Exception e;
        FileOutputStream fileOutputStream;
        AtomicFile atomicFile = new AtomicFile(file);
        try {
            fileOutputStream = atomicFile.m19350c();
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            fileOutputStream.write(bArr);
            atomicFile.m19351b(fileOutputStream);
        } catch (Exception e3) {
            e = e3;
            atomicFile.m19352a(fileOutputStream);
            throw new IOException(e);
        }
    }

    public static void writeNullableBoolean(DataOutput dataOutput, Boolean bool) throws IOException {
        dataOutput.writeBoolean(bool != null);
        if (bool != null) {
            dataOutput.writeBoolean(bool.booleanValue());
        }
    }

    public static void writeNullableDouble(DataOutput dataOutput, Double d) throws IOException {
        dataOutput.writeBoolean(d != null);
        if (d != null) {
            dataOutput.writeDouble(d.doubleValue());
        }
    }

    public static void writeNullableUTF(DataOutput dataOutput, @Nullable String str) throws IOException {
        dataOutput.writeBoolean(str != null);
        if (str != null) {
            dataOutput.writeUTF(str);
        }
    }

    public static void writeText(File file, String str) throws IOException {
        if (str != null) {
            PrintStream printStream = null;
            try {
                printStream = openTextWrite(file, false);
                printStream = printStream;
                printStream.print(str);
            } finally {
                ensureClosed(printStream);
            }
        } else {
            throw new IllegalArgumentException("'text' is null");
        }
    }

    public static void writeText(File file, List<String> list, boolean z) throws IOException {
        if (list != null) {
            PrintStream printStream = null;
            try {
                printStream = openTextWrite(file, z);
                Iterator<String> it = list.iterator();
                while (true) {
                    printStream = printStream;
                    if (it.hasNext()) {
                        printStream.println(it.next());
                    } else {
                        return;
                    }
                }
            } finally {
                ensureClosed(printStream);
            }
        } else {
            throw new IllegalArgumentException("'text' is null");
        }
    }
}
