package p000;

import android.app.Activity;
import android.content.res.Resources;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
/* renamed from: ga1 */
/* loaded from: classes3-dex2jar.jar:ga1.class */
public class ga1 {

    /* renamed from: a */
    public static final String f6691a = "ga1";

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0130, code lost:
        if (r0 != false) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0167 A[Catch: IOException -> 0x0233, TRY_ENTER, TryCatch #1 {IOException -> 0x0233, blocks: (B:11:0x0050, B:12:0x00dd, B:12:0x00dd, B:13:0x00e0, B:15:0x00fa, B:18:0x0108, B:21:0x0127, B:23:0x0133, B:23:0x0133, B:24:0x0136, B:27:0x0144, B:28:0x014e, B:31:0x015c, B:34:0x0167, B:36:0x0170, B:37:0x0178, B:39:0x0183, B:40:0x018d, B:42:0x0196, B:44:0x019c, B:45:0x01ad, B:46:0x01b7, B:46:0x01b7, B:47:0x01ba, B:51:0x01e8, B:53:0x01f1, B:54:0x021f, B:56:0x0228), top: B:64:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0178 A[Catch: IOException -> 0x0233, TRY_ENTER, TryCatch #1 {IOException -> 0x0233, blocks: (B:11:0x0050, B:12:0x00dd, B:12:0x00dd, B:13:0x00e0, B:15:0x00fa, B:18:0x0108, B:21:0x0127, B:23:0x0133, B:23:0x0133, B:24:0x0136, B:27:0x0144, B:28:0x014e, B:31:0x015c, B:34:0x0167, B:36:0x0170, B:37:0x0178, B:39:0x0183, B:40:0x018d, B:42:0x0196, B:44:0x019c, B:45:0x01ad, B:46:0x01b7, B:46:0x01b7, B:47:0x01ba, B:51:0x01e8, B:53:0x01f1, B:54:0x021f, B:56:0x0228), top: B:64:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x019c A[Catch: IOException -> 0x0233, TRY_LEAVE, TryCatch #1 {IOException -> 0x0233, blocks: (B:11:0x0050, B:12:0x00dd, B:12:0x00dd, B:13:0x00e0, B:15:0x00fa, B:18:0x0108, B:21:0x0127, B:23:0x0133, B:23:0x0133, B:24:0x0136, B:27:0x0144, B:28:0x014e, B:31:0x015c, B:34:0x0167, B:36:0x0170, B:37:0x0178, B:39:0x0183, B:40:0x018d, B:42:0x0196, B:44:0x019c, B:45:0x01ad, B:46:0x01b7, B:46:0x01b7, B:47:0x01ba, B:51:0x01e8, B:53:0x01f1, B:54:0x021f, B:56:0x0228), top: B:64:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01ad A[Catch: IOException -> 0x0233, TRY_ENTER, TryCatch #1 {IOException -> 0x0233, blocks: (B:11:0x0050, B:12:0x00dd, B:12:0x00dd, B:13:0x00e0, B:15:0x00fa, B:18:0x0108, B:21:0x0127, B:23:0x0133, B:23:0x0133, B:24:0x0136, B:27:0x0144, B:28:0x014e, B:31:0x015c, B:34:0x0167, B:36:0x0170, B:37:0x0178, B:39:0x0183, B:40:0x018d, B:42:0x0196, B:44:0x019c, B:45:0x01ad, B:46:0x01b7, B:46:0x01b7, B:47:0x01ba, B:51:0x01e8, B:53:0x01f1, B:54:0x021f, B:56:0x0228), top: B:64:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01e8 A[Catch: IOException -> 0x0233, TRY_ENTER, TryCatch #1 {IOException -> 0x0233, blocks: (B:11:0x0050, B:12:0x00dd, B:12:0x00dd, B:13:0x00e0, B:15:0x00fa, B:18:0x0108, B:21:0x0127, B:23:0x0133, B:23:0x0133, B:24:0x0136, B:27:0x0144, B:28:0x014e, B:31:0x015c, B:34:0x0167, B:36:0x0170, B:37:0x0178, B:39:0x0183, B:40:0x018d, B:42:0x0196, B:44:0x019c, B:45:0x01ad, B:46:0x01b7, B:46:0x01b7, B:47:0x01ba, B:51:0x01e8, B:53:0x01f1, B:54:0x021f, B:56:0x0228), top: B:64:0x0050 }] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.io.StringWriter, java.io.OutputStreamWriter, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v23, types: [x70, boolean] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.util.Calendar, l81, boolean] */
    /* JADX WARN: Type inference failed for: r0v27, types: [l81, boolean] */
    /* JADX WARN: Type inference failed for: r0v31, types: [l81, boolean] */
    /* JADX WARN: Type inference failed for: r0v33, types: [l81, android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.util.Calendar, java.text.SimpleDateFormat, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v35, types: [l81, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v37, types: [l81, boolean] */
    /* JADX WARN: Type inference failed for: r0v47, types: [l81, boolean] */
    /* JADX WARN: Type inference failed for: r0v54, types: [l81, boolean] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Calendar, java.io.Writer] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1686a(android.app.Activity r7, java.io.File r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ga1.m1686a(android.app.Activity, java.io.File, boolean):boolean");
    }

    /* renamed from: b */
    public static boolean m1685b(Activity activity, String str, String str2) {
        StringWriter stringWriter = new StringWriter();
        stringWriter.write(str2);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(activity.getExternalFilesDir(null), str), false);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
            outputStreamWriter.write(stringWriter.toString());
            outputStreamWriter.close();
            fileOutputStream.close();
            return true;
        } catch (FileNotFoundException | IOException e) {
            j91.m1504l(f6691a, "", e);
            return false;
        }
    }

    /* renamed from: c */
    public static String m1684c(int i) {
        Resources resources;
        int i2;
        if (i == 1) {
            resources = fa1.m1840j().getResources();
            i2 = i61.call_incoming;
        } else if (i == 2) {
            resources = fa1.m1840j().getResources();
            i2 = i61.call_outgoing;
        } else if (i != 3) {
            return "";
        } else {
            resources = fa1.m1840j().getResources();
            i2 = i61.call_missed;
        }
        return resources.getString(i2);
    }
}
