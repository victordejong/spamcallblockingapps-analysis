package com.callerid.block.mvc.controller;

import android.os.AsyncTask;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$t.class */
class EZSearchNumberActivity$t extends AsyncTask<Object, Void, Object> {

    /* renamed from: a */
    String f4684a;

    /* renamed from: b */
    String f4685b;

    /* renamed from: c */
    String f4686c;

    /* renamed from: d */
    String f4687d;

    /* renamed from: e */
    String f4688e;

    /* renamed from: f */
    String f4689f;

    /* renamed from: g */
    WeakReference<EZSearchNumberActivity> f4690g;

    EZSearchNumberActivity$t(EZSearchNumberActivity eZSearchNumberActivity, String str, String str2, String str3, String str4, String str5) {
        this.f4684a = str;
        this.f4685b = str2;
        this.f4687d = str3;
        this.f4688e = str4;
        this.f4689f = str5;
        this.f4690g = new WeakReference<>(eZSearchNumberActivity);
    }

    /* renamed from: a */
    public String doInBackground(Object[] objArr) {
        EZSearchNumberActivity eZSearchNumberActivity = this.f4690g.get();
        this.f4686c = C1216t0.m9607E(EZCallApplication.m10163c());
        if (eZSearchNumberActivity != null) {
            if (C1227w.f5084a) {
                C1227w.m9527a("searchNumber", "所有参数：number:" + this.f4684a + "\ndevice:" + this.f4685b + "\nuid:" + this.f4686c + "\nversion:" + this.f4687d + "\ndefault_cc:" + this.f4688e + "\ncc:" + C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code() + "\nstamp:" + this.f4689f + "\n");
            }
            C1186k.m9816c().m9812g("search_number_online");
            HashMap hashMap = new HashMap();
            hashMap.put("tel_number", C1209r.m9626c(this.f4684a));
            hashMap.put("device", this.f4685b);
            hashMap.put("uid", this.f4686c);
            hashMap.put("version", this.f4687d);
            hashMap.put("default_cc", this.f4688e);
            hashMap.put("cc", C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code());
            hashMap.put("stamp", this.f4689f);
            hashMap.put("cid", "");
            String m9612e = C1215t.m9612e("https://app.ayamote.com/api/v1/sea.php", hashMap, "utf-8");
            if (C1227w.f5084a) {
                C1227w.m9527a("searchNumber", "result:" + m9612e);
            }
            String m9627b = C1209r.m9627b(m9612e);
            if (C1227w.f5084a) {
                C1227w.m9527a("searchNumber", "enlode_result:" + m9627b);
            }
            return m9627b;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0304 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0105 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TRY_LEAVE, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0133 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016b A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0187 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a3 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d8 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ff A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0240 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0288 A[Catch: JSONException -> 0x03d9, TRY_ENTER, TryCatch #0 {JSONException -> 0x03d9, blocks: (B:13:0x0077, B:15:0x0090, B:17:0x00d5, B:19:0x00dd, B:22:0x00eb, B:24:0x00f6, B:26:0x0105, B:28:0x010d, B:31:0x011b, B:33:0x0126, B:35:0x0133, B:37:0x013c, B:38:0x014e, B:40:0x0160, B:42:0x016b, B:44:0x0174, B:46:0x017c, B:48:0x0187, B:50:0x0190, B:52:0x0198, B:54:0x01a3, B:56:0x01ac, B:58:0x01b4, B:60:0x01d8, B:62:0x01e1, B:64:0x01e9, B:68:0x01ff, B:73:0x020f, B:75:0x0219, B:76:0x022b, B:78:0x0233, B:80:0x0240, B:82:0x024a, B:83:0x0274, B:85:0x027d, B:87:0x0288, B:89:0x0291, B:91:0x02a2, B:95:0x02b8, B:102:0x02cf, B:109:0x02ea, B:111:0x02fc, B:113:0x0304, B:115:0x030d, B:116:0x033e, B:118:0x03bb), top: B:126:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02b4  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onPostExecute(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 1235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.mvc.controller.EZSearchNumberActivity$t.onPostExecute(java.lang.Object):void");
    }
}
