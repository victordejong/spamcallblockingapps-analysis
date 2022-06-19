package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.content.DialogInterface;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.AttorneyActivity$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f.class */
public class AttorneyActivity$f {

    /* renamed from: a */
    public AttorneyActivity f2726a;

    /* renamed from: b */
    public final /* synthetic */ AttorneyActivity f2727b;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.AttorneyActivity$f$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$a.class */
    public class RunnableC0383a implements Runnable {
        public RunnableC0383a() {
            AttorneyActivity$f.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AttorneyActivity$f.this.f2726a.finish();
        }
    }

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.AttorneyActivity$f$b */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b.class */
    public class DialogInterface$OnClickListenerC0384b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f2729a;

        /* renamed from: b */
        public final /* synthetic */ JSONArray f2730b;

        /* renamed from: c */
        public final /* synthetic */ Long f2731c;

        /* renamed from: d */
        public final /* synthetic */ AttorneyActivity$e f2732d;

        /* renamed from: f */
        public final /* synthetic */ long f2733f;

        public DialogInterface$OnClickListenerC0384b(String str, JSONArray jSONArray, Long l, AttorneyActivity$e attorneyActivity$e, long j) {
            AttorneyActivity$f.this = r5;
            this.f2729a = str;
            this.f2730b = jSONArray;
            this.f2731c = l;
            this.f2732d = attorneyActivity$e;
            this.f2733f = j;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AttorneyActivity$f.this.m4837d(this.f2729a, this.f2730b, this.f2731c, false);
            AttorneyActivity$f.this.m4838c(this.f2732d, this.f2733f);
        }
    }

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.AttorneyActivity$f$c */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$c.class */
    public class DialogInterface$OnClickListenerC0385c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f2735a;

        /* renamed from: b */
        public final /* synthetic */ JSONArray f2736b;

        /* renamed from: c */
        public final /* synthetic */ Long f2737c;

        /* renamed from: d */
        public final /* synthetic */ AttorneyActivity$e f2738d;

        /* renamed from: f */
        public final /* synthetic */ long f2739f;

        public DialogInterface$OnClickListenerC0385c(String str, JSONArray jSONArray, Long l, AttorneyActivity$e attorneyActivity$e, long j) {
            AttorneyActivity$f.this = r5;
            this.f2735a = str;
            this.f2736b = jSONArray;
            this.f2737c = l;
            this.f2738d = attorneyActivity$e;
            this.f2739f = j;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AttorneyActivity$f.this.m4837d(this.f2735a, this.f2736b, this.f2737c, true);
            AttorneyActivity$f.this.m4838c(this.f2738d, this.f2739f);
        }
    }

    public AttorneyActivity$f(AttorneyActivity attorneyActivity, AttorneyActivity attorneyActivity2) {
        this.f2727b = attorneyActivity;
        this.f2726a = attorneyActivity2;
    }

    /* renamed from: c */
    public final void m4838c(AttorneyActivity$e attorneyActivity$e, long j) {
        if (AttorneyActivity$d.f2722a[attorneyActivity$e.ordinal()] != 1) {
            return;
        }
        AttorneyActivity.B(this.f2727b).postDelayed(new RunnableC0383a(), j);
    }

    /* renamed from: d */
    public final void m4837d(String str, JSONArray jSONArray, Long l, boolean z) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("number");
                if (!TextUtils.isEmpty(optString)) {
                    j81.m1530E(optString, str, l, z);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0069 A[Catch: Exception -> 0x0167, TRY_ENTER, TryCatch #2 {Exception -> 0x0167, blocks: (B:2:0x0000, B:5:0x0018, B:8:0x002f, B:13:0x0044, B:16:0x0054, B:18:0x0069, B:20:0x0070, B:22:0x007d, B:24:0x0084, B:26:0x009a, B:29:0x00a5, B:33:0x00bc, B:35:0x00c7, B:37:0x00df, B:39:0x00e8), top: B:54:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0070 A[Catch: Exception -> 0x0167, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x0167, blocks: (B:2:0x0000, B:5:0x0018, B:8:0x002f, B:13:0x0044, B:16:0x0054, B:18:0x0069, B:20:0x0070, B:22:0x007d, B:24:0x0084, B:26:0x009a, B:29:0x00a5, B:33:0x00bc, B:35:0x00c7, B:37:0x00df, B:39:0x00e8), top: B:54:0x0000 }] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void postMessage(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flexaspect.android.everycallcontrol.p003ui.activities.AttorneyActivity$f.postMessage(java.lang.String):void");
    }
}
