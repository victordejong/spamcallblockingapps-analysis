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
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.content.IntentCompat;
import android.support.p001v4.util.AtomicFile;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.URLUtil;
import android.widget.Toast;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.model.StoredFile;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
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
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/Util.class */
public class Util {
    private static final String ENCRYPTED_FILENAME_SUFFIX = ".encrypted";

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
        } else if (file.isDirectory()) {
            throw new FileNotFoundException("File is directory: " + file);
        } else {
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
        }
    }

    public static int brighter(int i, float f) {
        float f2 = 1.0f - f;
        return Color.argb(Color.alpha(i), (int) ((((Color.red(i) * f2) / 255.0f) + f) * 255.0f), (int) ((((Color.green(i) * f2) / 255.0f) + f) * 255.0f), (int) ((((Color.blue(i) * f2) / 255.0f) + f) * 255.0f));
    }

    public static Resources.Theme buildApptentiveInteractionTheme(Context context) {
        Resources.Theme newTheme = context.getResources().newTheme();
        newTheme.applyStyle(C0724R.C0730style.ApptentiveTheme_Base_Versioned, true);
        try {
            int i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.theme;
            if (i != 0) {
                newTheme.applyStyle(i, true);
            }
            newTheme.applyStyle(C0724R.C0730style.ApptentiveBaseFrameTheme, true);
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
        byte[] bArr = new byte[4096];
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
        FileOutputStream fileOutputStream2;
        Throwable th;
        int i;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream3;
        FileInputStream fileInputStream2 = null;
        FileInputStream fileInputStream3 = null;
        try {
            if (new File(str).exists()) {
                fileInputStream3 = new FileInputStream(str);
                try {
                    fileOutputStream = new FileOutputStream(str2);
                } catch (Exception e) {
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = null;
                }
                try {
                    byte[] bArr = new byte[1444];
                    int i2 = 0;
                    while (true) {
                        int read = fileInputStream3.read(bArr);
                        i = i2;
                        fileInputStream = fileInputStream3;
                        fileOutputStream3 = fileOutputStream;
                        if (read == -1) {
                            break;
                        }
                        i2 += read;
                        fileOutputStream.write(bArr, 0, read);
                    }
                } catch (Exception e2) {
                    fileInputStream2 = fileInputStream3;
                    ensureClosed(fileInputStream2);
                    ensureClosed(fileOutputStream);
                    return 0;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    ensureClosed(fileInputStream3);
                    ensureClosed(fileOutputStream2);
                    throw th;
                }
            } else {
                fileOutputStream3 = null;
                fileInputStream = null;
                i = 0;
            }
            ensureClosed(fileInputStream);
            ensureClosed(fileOutputStream3);
            return i;
        } catch (Exception e3) {
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
        }
    }

    public static StoredFile createLocalStoredFile(InputStream inputStream, String str, String str2, String str3) {
        FileOutputStream fileOutputStream;
        Throwable th;
        CountingOutputStream countingOutputStream;
        BufferedOutputStream bufferedOutputStream;
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
                                    ApptentiveLog.m403v(apptentiveLogTag, sb.toString(), new Object[0]);
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
                        } catch (IOException e) {
                            bufferedOutputStream2 = bufferedOutputStream3;
                            countingOutputStream2 = countingOutputStream3;
                            bufferedOutputStream = bufferedOutputStream2;
                            fileOutputStream = fileOutputStream;
                            countingOutputStream = countingOutputStream2;
                            ApptentiveLog.m411e(ApptentiveLogTag.UTIL, "Error creating local copy of file attachment.", new Object[0]);
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
                } catch (IOException e2) {
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
            } catch (IOException e3) {
                bufferedOutputStream2 = null;
                countingOutputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream = null;
                countingOutputStream = null;
            }
        } catch (IOException e4) {
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

    public static int dimmer(int i, float f) {
        return Color.argb((int) (Color.alpha(i) * f), Color.red(i), Color.green(i), Color.blue(i));
    }

    public static float dipsToPixels(@NonNull Context context, float f) {
        return context.getResources().getDisplayMetrics().density * f;
    }

    public static float dipsToPixelsFloat(@NonNull Context context, int i) {
        return i * context.getResources().getDisplayMetrics().density;
    }

    public static void ensureClosed(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
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

    public static String getAndroidId(Context context) {
        if (context == null) {
            return null;
        }
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String getClipboardText(Context context) {
        ClipData primaryClip;
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        }
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

    public static Drawable getCompatDrawable(Context context, int i) {
        Drawable drawable;
        try {
            drawable = ContextCompat.getDrawable(context, i);
        } catch (Exception e) {
            drawable = null;
        }
        return drawable;
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
        if (!name.endsWith(ENCRYPTED_FILENAME_SUFFIX)) {
            String parent = file.getParent();
            file = new File(parent, name + ENCRYPTED_FILENAME_SUFFIX);
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
            ApptentiveLog.m399w(ApptentiveLogTag.UTIL, "Unable to create internal directory: %s", file);
        }
        return file;
    }

    public static Integer getMajorOsVersion() {
        try {
            String[] split = Build.VERSION.RELEASE.split("\\.");
            if (!(split == null || split.length == 0)) {
                return Integer.valueOf(Integer.parseInt(split[0]));
            }
        } catch (Exception e) {
            ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e, "Error getting major OS version", new Object[0]);
        }
        return -1;
    }

    public static String getManifestMetadataString(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        } else if (str == null) {
            throw new IllegalArgumentException("Key is null");
        } else {
            try {
                Bundle bundle = context.getPackageManager().getPackageInfo(context.getPackageName(), 130).applicationInfo.metaData;
                if (bundle != null) {
                    return trim(bundle.getString(str));
                }
                return null;
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Unexpected error while reading application or package info.", new Object[0]);
                return null;
            }
        }
    }

    public static String getMimeTypeFromUri(Context context, Uri uri) {
        return context != null ? context.getContentResolver().getType(uri) : null;
    }

    public static Object getPackageMetaData(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get(str);
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean getPackageMetaDataBoolean(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean(str, false);
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static String getPackageMetaDataSingleQuotedString(Context context, String str) {
        Object packageMetaData = getPackageMetaData(context, str);
        if (packageMetaData == null) {
            return null;
        }
        String obj = packageMetaData.toString();
        String str2 = obj;
        if (obj.endsWith("'")) {
            str2 = obj.substring(0, obj.length() - 1);
        }
        String str3 = str2;
        if (str2.startsWith("'")) {
            str3 = str2.substring(1, str2.length());
        }
        return str3;
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

    public static StateListDrawable getSelectableImageButtonBackground(int i) {
        ColorDrawable colorDrawable = new ColorDrawable(i);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, colorDrawable);
        stateListDrawable.addState(new int[]{16843518}, colorDrawable);
        return stateListDrawable;
    }

    public static String getStackTraceString(Throwable th) {
        try {
            return Log.getStackTraceString(th);
        } catch (Exception e) {
            return stackTraceAsString(th);
        }
    }

    public static int getStatusBarHeight(Window window) {
        Rect rect = new Rect();
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
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

    public static int getThemeColorFromAttrOrRes(Context context, int i, int i2) {
        int themeColor = getThemeColor(context, i);
        int i3 = themeColor;
        if (themeColor == 0) {
            i3 = ContextCompat.getColor(context, i2);
        }
        return i3;
    }

    public static File getUnencryptedFilename(File file) {
        String name = file.getName();
        File file2 = file;
        if (name.endsWith(ENCRYPTED_FILENAME_SUFFIX)) {
            file2 = new File(file.getParent(), name.substring(0, name.length() - ENCRYPTED_FILENAME_SUFFIX.length()));
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
                        ApptentiveLog.m408e(e, "Exception while handling click listener", new Object[0]);
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

    public static String humanReadableByteCount(long j, boolean z) {
        int i = z ? 1000 : 1024;
        if (j < i) {
            return j + " B";
        }
        double d = j;
        double log = Math.log(d);
        double d2 = i;
        int log2 = (int) (log / Math.log(d2));
        StringBuilder sb = new StringBuilder();
        sb.append((z ? "kMGTPE" : "KMGTPE").charAt(log2 - 1));
        sb.append(z ? "" : "i");
        return String.format("%.1f %sB", Double.valueOf(d / Math.pow(d2, log2)), sb.toString());
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
            ApptentiveLog.m408e(e, "Exception in makeRestartActivityTask", new Object[0]);
            return null;
        }
    }

    private static Intent makeRestartActivityTaskGuarded(ComponentName componentName) {
        try {
            return Intent.makeRestartActivityTask(componentName);
        } catch (NoSuchMethodError e) {
            return IntentCompat.makeRestartActivityTask(componentName);
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
                ApptentiveLog.m408e(e, "Activity not found to open attachment: ", new Object[0]);
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
        if (file == null) {
            throw new IllegalArgumentException("'file' is null");
        }
        File parentFile = file.getParentFile();
        if (parentFile.exists() || parentFile.mkdirs()) {
            return new PrintStream(new FileOutputStream(file, z), false, "UTF-8");
        }
        throw new IOException("Parent file could not be created: " + parentFile);
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
                        ApptentiveLog.m408e(e, "Error parsing cache expiration as number: %s", str3);
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    public static Integer parseWebColorAsAndroidColor(String str) {
        boolean z = str.length() == 9;
        try {
            Integer valueOf = Integer.valueOf(Color.parseColor(str));
            Integer num = valueOf;
            if (Boolean.valueOf(z).booleanValue()) {
                num = Integer.valueOf(((valueOf.intValue() & 255) << 24) | (valueOf.intValue() >>> 8));
            }
            return num;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public static int pixelsToDips(@NonNull Context context, int i) {
        return Math.round(i / context.getResources().getDisplayMetrics().density);
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
            inputStreamReader = new InputStreamReader(inputStream, str);
            while (true) {
                try {
                    int read = inputStreamReader.read(cArr, 0, 8196);
                    if (read < 0) {
                        break;
                    }
                    sb.append(cArr, 0, read);
                } catch (Exception e) {
                    ensureClosed(inputStreamReader);
                    return sb.toString();
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamReader2 = inputStreamReader;
                    ensureClosed(inputStreamReader2);
                    throw th;
                }
            }
            ensureClosed(inputStreamReader);
        } catch (Exception e2) {
        } catch (Throwable th3) {
            th = th3;
        }
        return sb.toString();
    }

    public static void replaceDefaultFont(Context context, String str) {
        HashMap hashMap;
        Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), str);
        TypedValue typedValue = new TypedValue();
        Resources.Theme newTheme = context.getResources().newTheme();
        ApptentiveInternal.getInstance().updateApptentiveInteractionTheme(context, newTheme);
        if (newTheme != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                if (newTheme.resolveAttribute(C0724R.C0725attr.apptentiveFontFamilyDefault, typedValue, true)) {
                    hashMap = new HashMap();
                    hashMap.put(typedValue.string.toString(), createFromAsset);
                } else {
                    hashMap = null;
                }
                HashMap hashMap2 = hashMap;
                if (newTheme.resolveAttribute(C0724R.C0725attr.apptentiveFontFamilyMediumDefault, typedValue, true)) {
                    hashMap2 = hashMap;
                    if (hashMap == null) {
                        hashMap2 = new HashMap();
                    }
                    hashMap2.put(typedValue.string.toString(), createFromAsset);
                }
                if (hashMap2 != null) {
                    try {
                        Field declaredField = Typeface.class.getDeclaredField("sSystemFontMap");
                        declaredField.setAccessible(true);
                        declaredField.set(null, hashMap2);
                    } catch (IllegalAccessException e) {
                        ApptentiveLog.m408e(e, "Exception replacing system font", new Object[0]);
                    } catch (NoSuchFieldException e2) {
                        ApptentiveLog.m408e(e2, "Exception replacing system font", new Object[0]);
                    }
                }
            } else if (newTheme.resolveAttribute(C0724R.C0725attr.apptentiveTypefaceDefault, typedValue, true)) {
                String str2 = "DEFAULT";
                if (typedValue.data == context.getResources().getInteger(C0724R.integer.apptentive_typeface_monospace)) {
                    str2 = "MONOSPACE";
                } else if (typedValue.data == context.getResources().getInteger(C0724R.integer.apptentive_typeface_serif)) {
                    str2 = "SERIF";
                } else if (typedValue.data == context.getResources().getInteger(C0724R.integer.apptentive_typeface_sans)) {
                    str2 = "SANS_SERIF";
                }
                try {
                    Field declaredField2 = Typeface.class.getDeclaredField(str2);
                    declaredField2.setAccessible(true);
                    declaredField2.set(null, createFromAsset);
                } catch (IllegalAccessException e3) {
                    ApptentiveLog.m408e(e3, "Exception replacing system font", new Object[0]);
                } catch (NoSuchFieldException e4) {
                    ApptentiveLog.m408e(e4, "Exception replacing system font", new Object[0]);
                }
            }
        }
    }

    public static void setBackground(View view, int i) {
        setBackground(view, getCompatDrawable(view.getContext(), i));
    }

    public static void setBackground(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT < 16) {
            view.setBackgroundDrawable(drawable);
        } else {
            view.setBackground(drawable);
        }
    }

    public static void setClipboardText(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        }
        ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, str));
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
            ApptentiveLog.m408e(e, "Exception while trying to display toast message", new Object[0]);
        }
    }

    public static String stackTraceAsString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String trim(String str) {
        if (str != null) {
            return str.trim();
        }
        return null;
    }

    public static void writeAtomically(File file, byte[] bArr) throws IOException {
        FileOutputStream fileOutputStream;
        Exception e;
        FileOutputStream startWrite;
        AtomicFile atomicFile = new AtomicFile(file);
        try {
            startWrite = atomicFile.startWrite();
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            startWrite.write(bArr);
            atomicFile.finishWrite(startWrite);
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = startWrite;
            atomicFile.failWrite(fileOutputStream);
            throw new IOException(e);
        }
    }

    public static void writeBytes(File file, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream;
        FileOutputStream fileOutputStream;
        Throwable th;
        if (file == null) {
            throw new IllegalArgumentException("'file' is null");
        } else if (bArr == null) {
            throw new IllegalArgumentException("'bytes' is null");
        } else {
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                try {
                    byteArrayInputStream = new ByteArrayInputStream(bArr);
                    try {
                        fileOutputStream = new FileOutputStream(file);
                        try {
                            copy(byteArrayInputStream, fileOutputStream);
                            ensureClosed(byteArrayInputStream);
                            ensureClosed(fileOutputStream);
                        } catch (Throwable th2) {
                            th = th2;
                            ensureClosed(byteArrayInputStream);
                            ensureClosed(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayInputStream = null;
                    fileOutputStream = null;
                }
            } else {
                throw new IOException("Parent file could not be created: " + parentFile);
            }
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
        PrintStream printStream;
        Throwable th;
        PrintStream openTextWrite;
        if (str == null) {
            throw new IllegalArgumentException("'text' is null");
        }
        try {
            openTextWrite = openTextWrite(file, false);
        } catch (Throwable th2) {
            th = th2;
            printStream = null;
        }
        try {
            openTextWrite.print(str);
            ensureClosed(openTextWrite);
        } catch (Throwable th3) {
            th = th3;
            printStream = openTextWrite;
            ensureClosed(printStream);
            throw th;
        }
    }

    public static void writeText(File file, List<String> list) throws IOException {
        writeText(file, list, false);
    }

    public static void writeText(File file, List<String> list, boolean z) throws IOException {
        Throwable th;
        PrintStream printStream;
        if (list == null) {
            throw new IllegalArgumentException("'text' is null");
        }
        try {
            printStream = openTextWrite(file, z);
            try {
                for (String str : list) {
                    printStream.println(str);
                }
                ensureClosed(printStream);
            } catch (Throwable th2) {
                th = th2;
                ensureClosed(printStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            printStream = null;
        }
    }
}
