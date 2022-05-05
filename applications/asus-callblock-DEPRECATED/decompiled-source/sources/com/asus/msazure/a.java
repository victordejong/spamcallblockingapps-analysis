package com.asus.msazure;

import android.content.ContentValues;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.a.a.a.b;
import com.a.a.a.d.d;
import com.asus.callguardhelper.a;
import com.asus.callguardhelper.h;
/* loaded from: classes-dex2jar.jar:com/asus/msazure/a.class */
public class a extends h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2935a = a.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Context f2936b;
    private b c;
    private d<AzureCallGuardData> d;
    private d<UserMarkedInAzure> e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.asus.msazure.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/msazure/a$a.class */
    public final class AsyncTaskC0085a extends AsyncTask<Integer, Boolean, Void> {

        /* renamed from: a  reason: collision with root package name */
        int f2937a;

        public AsyncTaskC0085a(int i) {
            this.f2937a = -1;
            this.f2937a = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(Integer... numArr) {
            try {
                ContentValues contentValues = new ContentValues();
                if (this.f2937a == 1) {
                    contentValues.put("success_reverse", numArr[0]);
                    contentValues.put("total_query_count", numArr[1]);
                    a.this.f2936b.getContentResolver().insert(a.c.f2557b, contentValues);
                } else if (this.f2937a == 2) {
                    contentValues.put("total_query_mark_count", numArr[0]);
                    a.this.f2936b.getContentResolver().insert(a.c.e, contentValues);
                }
                return null;
            } catch (Exception e) {
                Log.d(a.f2935a, "UpsertUserData " + e.getMessage());
                return null;
            }
        }
    }

    public a(Context context) {
        super(context);
        try {
            this.f2936b = context;
            this.c = AzureUtils.a(context);
            this.d = this.c.a(AzureCallGuardData.class.getSimpleName(), AzureCallGuardData.class);
            this.e = this.c.a("marked_call_log_combine_weight", UserMarkedInAzure.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (com.asus.callguardhelper.g.a(r6.f2936b) == false) goto L_0x001f;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0288 A[Catch: Exception -> 0x02c4, LOOP:3: B:43:0x027e->B:46:0x0288, LOOP_END, TRY_LEAVE, TryCatch #0 {Exception -> 0x02c4, blocks: (B:4:0x0015, B:9:0x0025, B:12:0x0030, B:14:0x003b, B:16:0x0049, B:18:0x0053, B:22:0x006e, B:27:0x0085, B:29:0x00a9, B:31:0x0111, B:33:0x0167, B:35:0x016f, B:37:0x01e8, B:39:0x025c, B:42:0x0276, B:44:0x0280, B:46:0x0288, B:51:0x02cd, B:53:0x02db, B:55:0x02e3, B:58:0x034c), top: B:62:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02e3 A[Catch: Exception -> 0x02c4, LOOP:4: B:52:0x02da->B:55:0x02e3, LOOP_END, TRY_LEAVE, TryCatch #0 {Exception -> 0x02c4, blocks: (B:4:0x0015, B:9:0x0025, B:12:0x0030, B:14:0x003b, B:16:0x0049, B:18:0x0053, B:22:0x006e, B:27:0x0085, B:29:0x00a9, B:31:0x0111, B:33:0x0167, B:35:0x016f, B:37:0x01e8, B:39:0x025c, B:42:0x0276, B:44:0x0280, B:46:0x0288, B:51:0x02cd, B:53:0x02db, B:55:0x02e3, B:58:0x034c), top: B:62:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x034c A[Catch: Exception -> 0x02c4, TRY_ENTER, TryCatch #0 {Exception -> 0x02c4, blocks: (B:4:0x0015, B:9:0x0025, B:12:0x0030, B:14:0x003b, B:16:0x0049, B:18:0x0053, B:22:0x006e, B:27:0x0085, B:29:0x00a9, B:31:0x0111, B:33:0x0167, B:35:0x016f, B:37:0x01e8, B:39:0x025c, B:42:0x0276, B:44:0x0280, B:46:0x0288, B:51:0x02cd, B:53:0x02db, B:55:0x02e3, B:58:0x034c), top: B:62:0x0015 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.asus.callguardhelper.b> a(java.util.List<java.lang.String> r7, int r8, java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.msazure.a.a(java.util.List, int, java.util.Map):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (com.asus.callguardhelper.g.a(r6.f2936b) == false) goto L_0x0018;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fa A[Catch: Exception -> 0x00dd, LOOP:1: B:24:0x00f0->B:27:0x00fa, LOOP_END, TRY_LEAVE, TryCatch #0 {Exception -> 0x00dd, blocks: (B:4:0x000e, B:9:0x001e, B:12:0x0029, B:15:0x007b, B:17:0x0085, B:23:0x00e8, B:25:0x00f2, B:27:0x00fa, B:30:0x0129), top: B:33:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0129 A[Catch: Exception -> 0x00dd, TRY_ENTER, TryCatch #0 {Exception -> 0x00dd, blocks: (B:4:0x000e, B:9:0x001e, B:12:0x0029, B:15:0x007b, B:17:0x0085, B:23:0x00e8, B:25:0x00f2, B:27:0x00fa, B:30:0x0129), top: B:33:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.asus.callguardhelper.b> b(java.util.List<java.lang.String> r7, int r8) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.msazure.a.b(java.util.List, int):java.util.List");
    }
}
