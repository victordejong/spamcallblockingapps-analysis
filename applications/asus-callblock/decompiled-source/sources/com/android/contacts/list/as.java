package com.android.contacts.list;

import android.content.Context;
import android.os.AsyncTask;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/as.class */
public final class as {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, String> f1790a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f1791b = false;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/as$a.class */
    private static final class a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f1792a;

        a(Context context) {
            this.f1792a = context;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
            as.d(this.f1792a);
            boolean unused = as.f1791b = false;
            return true;
        }
    }

    public static HashMap<String, String> a(Context context) {
        if (f1790a == null) {
            d(context);
        }
        return f1790a;
    }

    public static void a() {
        if (f1790a != null) {
            f1790a.clear();
            f1790a = null;
        }
    }

    public static void b(Context context) {
        if (f1790a == null && !f1791b) {
            f1791b = true;
            new a(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.as.d(android.content.Context):void");
    }
}
