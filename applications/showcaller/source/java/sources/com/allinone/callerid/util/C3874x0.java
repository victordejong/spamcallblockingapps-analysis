package com.allinone.callerid.util;

import android.content.Intent;
import android.os.AsyncTask;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import org.json.JSONObject;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.util.x0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/x0.class */
public class C3874x0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.x0$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/x0$a.class */
    public static class AsyncTaskC3875a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        JSONObject f12232a;

        /* renamed from: b */
        String f12233b;

        /* renamed from: c */
        private EZSearchContacts f12234c;

        AsyncTaskC3875a(JSONObject jSONObject, String str) {
            this.f12232a = jSONObject;
            this.f12233b = str;
        }

        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            try {
                if (this.f12232a.getInt("status") != 1) {
                    return null;
                }
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f12233b);
                this.f12234c = m26999d;
                if (m26999d == null) {
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    if (this.f12232a.getInt("faild_error_log") == 1) {
                        eZSearchContacts.setSearched(true);
                    }
                    eZSearchContacts.setSearched_buyu(true);
                    eZSearchContacts.setOld_tel_number(this.f12233b);
                    eZSearchContacts.setFormat_tel_number(this.f12232a.getString("format_tel_number"));
                    eZSearchContacts.setOperator(this.f12232a.getString("operator"));
                    eZSearchContacts.setType(this.f12232a.getString("type"));
                    eZSearchContacts.setType_label(this.f12232a.getString("type_label"));
                    eZSearchContacts.setName(this.f12232a.getString(ShortCut.NAME));
                    eZSearchContacts.setAvatar(this.f12232a.getString("avatar"));
                    C2631f.m27001b().m27000c(eZSearchContacts);
                    return null;
                }
                if (this.f12232a.getInt("faild_error_log") == 1) {
                    this.f12234c.setSearched(true);
                }
                this.f12234c.setSearched_buyu(true);
                String string = this.f12232a.getString(ShortCut.NAME);
                if (string != null && !"".equals(string)) {
                    this.f12234c.setName(string);
                }
                String string2 = this.f12232a.getString("avatar");
                if (string2 != null && !"".equals(string2)) {
                    this.f12234c.setAvatar(string2);
                }
                String string3 = this.f12232a.getString("type_label");
                if (string3 != null && !"".equals(string3)) {
                    this.f12234c.setType_label(string3);
                }
                String string4 = this.f12232a.getString("type");
                if (string4 != null && !"".equals(string4)) {
                    this.f12234c.setType(string4);
                }
                String string5 = this.f12232a.getString("operator");
                if (string5 != null && !"".equals(string5)) {
                    this.f12234c.setOperator(string5);
                }
                String string6 = this.f12232a.getString("format_tel_number");
                if (string6 != null && !"".equals(string6)) {
                    this.f12234c.setFormat_tel_number(string6);
                }
                C2631f.m27001b().m26998e(this.f12234c, "isSearched", ShortCut.NAME, "belong_area", "avatar", "type_label", "type", "operator", "format_tel_number", "searched_buyu");
                return null;
            } catch (Exception e) {
                C3718c0.m24436a("buyu", "Exception:" + e.getMessage());
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C3718c0.m24436a("buyu", "save data OK");
            try {
                Intent intent = new Intent();
                intent.setAction("com.allinone.callerid.INIT_HISTORY");
                C1764a.m28939b(EZCallApplication.m26146c()).m28937d(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.x0$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/x0$b.class */
    public static class AsyncTaskC3876b extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        JSONObject f12235a;

        /* renamed from: b */
        String f12236b;

        /* renamed from: c */
        boolean f12237c;

        /* renamed from: d */
        private EZSearchContacts f12238d;

        AsyncTaskC3876b(JSONObject jSONObject, String str, boolean z) {
            this.f12235a = jSONObject;
            this.f12236b = str;
            this.f12237c = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:103:0x0374 A[Catch: Exception -> 0x05f5, TRY_ENTER, TryCatch #0 {Exception -> 0x05f5, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0029, B:7:0x0031, B:9:0x0039, B:11:0x012e, B:13:0x013c, B:15:0x0147, B:17:0x0155, B:19:0x0179, B:21:0x0185, B:23:0x018c, B:25:0x0194, B:27:0x019e, B:29:0x01a7, B:31:0x01ad, B:33:0x01b4, B:35:0x01c4, B:37:0x01cd, B:40:0x01d6, B:42:0x01df, B:43:0x01e4, B:43:0x01e4, B:44:0x01e7, B:45:0x01ee, B:47:0x01f5, B:50:0x0205, B:52:0x0212, B:54:0x021b, B:55:0x0239, B:57:0x0243, B:60:0x0253, B:62:0x0260, B:64:0x0269, B:66:0x0285, B:68:0x028e, B:71:0x029e, B:73:0x02ab, B:75:0x02b4, B:77:0x02d0, B:79:0x02d9, B:82:0x02e9, B:84:0x02f6, B:86:0x02ff, B:88:0x031c, B:92:0x0331, B:94:0x0340, B:96:0x0349, B:99:0x035b, B:103:0x0374, B:105:0x0398, B:107:0x03a4, B:108:0x03af, B:110:0x03ba, B:112:0x03c7, B:114:0x03d0, B:116:0x03d9, B:118:0x03e6, B:120:0x03ef, B:122:0x03f8, B:124:0x0405, B:126:0x040e, B:128:0x0417, B:130:0x0424, B:132:0x042d, B:134:0x0436, B:136:0x0443, B:138:0x044c, B:140:0x0455, B:142:0x04a0, B:144:0x04b1, B:146:0x04bc, B:148:0x04cd, B:150:0x04da, B:152:0x04e1, B:154:0x04fb, B:156:0x0507, B:158:0x0514, B:160:0x0520, B:162:0x0527, B:164:0x052f, B:166:0x0539, B:168:0x0542, B:170:0x054b, B:172:0x0552, B:174:0x0562, B:176:0x056b, B:179:0x0577, B:181:0x0580, B:182:0x0588, B:182:0x0588, B:183:0x058b), top: B:187:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:107:0x03a4 A[Catch: Exception -> 0x05f5, TRY_LEAVE, TryCatch #0 {Exception -> 0x05f5, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0029, B:7:0x0031, B:9:0x0039, B:11:0x012e, B:13:0x013c, B:15:0x0147, B:17:0x0155, B:19:0x0179, B:21:0x0185, B:23:0x018c, B:25:0x0194, B:27:0x019e, B:29:0x01a7, B:31:0x01ad, B:33:0x01b4, B:35:0x01c4, B:37:0x01cd, B:40:0x01d6, B:42:0x01df, B:43:0x01e4, B:43:0x01e4, B:44:0x01e7, B:45:0x01ee, B:47:0x01f5, B:50:0x0205, B:52:0x0212, B:54:0x021b, B:55:0x0239, B:57:0x0243, B:60:0x0253, B:62:0x0260, B:64:0x0269, B:66:0x0285, B:68:0x028e, B:71:0x029e, B:73:0x02ab, B:75:0x02b4, B:77:0x02d0, B:79:0x02d9, B:82:0x02e9, B:84:0x02f6, B:86:0x02ff, B:88:0x031c, B:92:0x0331, B:94:0x0340, B:96:0x0349, B:99:0x035b, B:103:0x0374, B:105:0x0398, B:107:0x03a4, B:108:0x03af, B:110:0x03ba, B:112:0x03c7, B:114:0x03d0, B:116:0x03d9, B:118:0x03e6, B:120:0x03ef, B:122:0x03f8, B:124:0x0405, B:126:0x040e, B:128:0x0417, B:130:0x0424, B:132:0x042d, B:134:0x0436, B:136:0x0443, B:138:0x044c, B:140:0x0455, B:142:0x04a0, B:144:0x04b1, B:146:0x04bc, B:148:0x04cd, B:150:0x04da, B:152:0x04e1, B:154:0x04fb, B:156:0x0507, B:158:0x0514, B:160:0x0520, B:162:0x0527, B:164:0x052f, B:166:0x0539, B:168:0x0542, B:170:0x054b, B:172:0x0552, B:174:0x0562, B:176:0x056b, B:179:0x0577, B:181:0x0580, B:182:0x0588, B:182:0x0588, B:183:0x058b), top: B:187:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x03af A[Catch: Exception -> 0x05f5, TRY_ENTER, TryCatch #0 {Exception -> 0x05f5, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0029, B:7:0x0031, B:9:0x0039, B:11:0x012e, B:13:0x013c, B:15:0x0147, B:17:0x0155, B:19:0x0179, B:21:0x0185, B:23:0x018c, B:25:0x0194, B:27:0x019e, B:29:0x01a7, B:31:0x01ad, B:33:0x01b4, B:35:0x01c4, B:37:0x01cd, B:40:0x01d6, B:42:0x01df, B:43:0x01e4, B:43:0x01e4, B:44:0x01e7, B:45:0x01ee, B:47:0x01f5, B:50:0x0205, B:52:0x0212, B:54:0x021b, B:55:0x0239, B:57:0x0243, B:60:0x0253, B:62:0x0260, B:64:0x0269, B:66:0x0285, B:68:0x028e, B:71:0x029e, B:73:0x02ab, B:75:0x02b4, B:77:0x02d0, B:79:0x02d9, B:82:0x02e9, B:84:0x02f6, B:86:0x02ff, B:88:0x031c, B:92:0x0331, B:94:0x0340, B:96:0x0349, B:99:0x035b, B:103:0x0374, B:105:0x0398, B:107:0x03a4, B:108:0x03af, B:110:0x03ba, B:112:0x03c7, B:114:0x03d0, B:116:0x03d9, B:118:0x03e6, B:120:0x03ef, B:122:0x03f8, B:124:0x0405, B:126:0x040e, B:128:0x0417, B:130:0x0424, B:132:0x042d, B:134:0x0436, B:136:0x0443, B:138:0x044c, B:140:0x0455, B:142:0x04a0, B:144:0x04b1, B:146:0x04bc, B:148:0x04cd, B:150:0x04da, B:152:0x04e1, B:154:0x04fb, B:156:0x0507, B:158:0x0514, B:160:0x0520, B:162:0x0527, B:164:0x052f, B:166:0x0539, B:168:0x0542, B:170:0x054b, B:172:0x0552, B:174:0x0562, B:176:0x056b, B:179:0x0577, B:181:0x0580, B:182:0x0588, B:182:0x0588, B:183:0x058b), top: B:187:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:142:0x04a0 A[Catch: Exception -> 0x05f5, TryCatch #0 {Exception -> 0x05f5, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0029, B:7:0x0031, B:9:0x0039, B:11:0x012e, B:13:0x013c, B:15:0x0147, B:17:0x0155, B:19:0x0179, B:21:0x0185, B:23:0x018c, B:25:0x0194, B:27:0x019e, B:29:0x01a7, B:31:0x01ad, B:33:0x01b4, B:35:0x01c4, B:37:0x01cd, B:40:0x01d6, B:42:0x01df, B:43:0x01e4, B:43:0x01e4, B:44:0x01e7, B:45:0x01ee, B:47:0x01f5, B:50:0x0205, B:52:0x0212, B:54:0x021b, B:55:0x0239, B:57:0x0243, B:60:0x0253, B:62:0x0260, B:64:0x0269, B:66:0x0285, B:68:0x028e, B:71:0x029e, B:73:0x02ab, B:75:0x02b4, B:77:0x02d0, B:79:0x02d9, B:82:0x02e9, B:84:0x02f6, B:86:0x02ff, B:88:0x031c, B:92:0x0331, B:94:0x0340, B:96:0x0349, B:99:0x035b, B:103:0x0374, B:105:0x0398, B:107:0x03a4, B:108:0x03af, B:110:0x03ba, B:112:0x03c7, B:114:0x03d0, B:116:0x03d9, B:118:0x03e6, B:120:0x03ef, B:122:0x03f8, B:124:0x0405, B:126:0x040e, B:128:0x0417, B:130:0x0424, B:132:0x042d, B:134:0x0436, B:136:0x0443, B:138:0x044c, B:140:0x0455, B:142:0x04a0, B:144:0x04b1, B:146:0x04bc, B:148:0x04cd, B:150:0x04da, B:152:0x04e1, B:154:0x04fb, B:156:0x0507, B:158:0x0514, B:160:0x0520, B:162:0x0527, B:164:0x052f, B:166:0x0539, B:168:0x0542, B:170:0x054b, B:172:0x0552, B:174:0x0562, B:176:0x056b, B:179:0x0577, B:181:0x0580, B:182:0x0588, B:182:0x0588, B:183:0x058b), top: B:187:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:146:0x04bc A[Catch: Exception -> 0x05f5, TryCatch #0 {Exception -> 0x05f5, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0029, B:7:0x0031, B:9:0x0039, B:11:0x012e, B:13:0x013c, B:15:0x0147, B:17:0x0155, B:19:0x0179, B:21:0x0185, B:23:0x018c, B:25:0x0194, B:27:0x019e, B:29:0x01a7, B:31:0x01ad, B:33:0x01b4, B:35:0x01c4, B:37:0x01cd, B:40:0x01d6, B:42:0x01df, B:43:0x01e4, B:43:0x01e4, B:44:0x01e7, B:45:0x01ee, B:47:0x01f5, B:50:0x0205, B:52:0x0212, B:54:0x021b, B:55:0x0239, B:57:0x0243, B:60:0x0253, B:62:0x0260, B:64:0x0269, B:66:0x0285, B:68:0x028e, B:71:0x029e, B:73:0x02ab, B:75:0x02b4, B:77:0x02d0, B:79:0x02d9, B:82:0x02e9, B:84:0x02f6, B:86:0x02ff, B:88:0x031c, B:92:0x0331, B:94:0x0340, B:96:0x0349, B:99:0x035b, B:103:0x0374, B:105:0x0398, B:107:0x03a4, B:108:0x03af, B:110:0x03ba, B:112:0x03c7, B:114:0x03d0, B:116:0x03d9, B:118:0x03e6, B:120:0x03ef, B:122:0x03f8, B:124:0x0405, B:126:0x040e, B:128:0x0417, B:130:0x0424, B:132:0x042d, B:134:0x0436, B:136:0x0443, B:138:0x044c, B:140:0x0455, B:142:0x04a0, B:144:0x04b1, B:146:0x04bc, B:148:0x04cd, B:150:0x04da, B:152:0x04e1, B:154:0x04fb, B:156:0x0507, B:158:0x0514, B:160:0x0520, B:162:0x0527, B:164:0x052f, B:166:0x0539, B:168:0x0542, B:170:0x054b, B:172:0x0552, B:174:0x0562, B:176:0x056b, B:179:0x0577, B:181:0x0580, B:182:0x0588, B:182:0x0588, B:183:0x058b), top: B:187:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:172:0x0552 A[Catch: Exception -> 0x05f5, TRY_LEAVE, TryCatch #0 {Exception -> 0x05f5, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0029, B:7:0x0031, B:9:0x0039, B:11:0x012e, B:13:0x013c, B:15:0x0147, B:17:0x0155, B:19:0x0179, B:21:0x0185, B:23:0x018c, B:25:0x0194, B:27:0x019e, B:29:0x01a7, B:31:0x01ad, B:33:0x01b4, B:35:0x01c4, B:37:0x01cd, B:40:0x01d6, B:42:0x01df, B:43:0x01e4, B:43:0x01e4, B:44:0x01e7, B:45:0x01ee, B:47:0x01f5, B:50:0x0205, B:52:0x0212, B:54:0x021b, B:55:0x0239, B:57:0x0243, B:60:0x0253, B:62:0x0260, B:64:0x0269, B:66:0x0285, B:68:0x028e, B:71:0x029e, B:73:0x02ab, B:75:0x02b4, B:77:0x02d0, B:79:0x02d9, B:82:0x02e9, B:84:0x02f6, B:86:0x02ff, B:88:0x031c, B:92:0x0331, B:94:0x0340, B:96:0x0349, B:99:0x035b, B:103:0x0374, B:105:0x0398, B:107:0x03a4, B:108:0x03af, B:110:0x03ba, B:112:0x03c7, B:114:0x03d0, B:116:0x03d9, B:118:0x03e6, B:120:0x03ef, B:122:0x03f8, B:124:0x0405, B:126:0x040e, B:128:0x0417, B:130:0x0424, B:132:0x042d, B:134:0x0436, B:136:0x0443, B:138:0x044c, B:140:0x0455, B:142:0x04a0, B:144:0x04b1, B:146:0x04bc, B:148:0x04cd, B:150:0x04da, B:152:0x04e1, B:154:0x04fb, B:156:0x0507, B:158:0x0514, B:160:0x0520, B:162:0x0527, B:164:0x052f, B:166:0x0539, B:168:0x0542, B:170:0x054b, B:172:0x0552, B:174:0x0562, B:176:0x056b, B:179:0x0577, B:181:0x0580, B:182:0x0588, B:182:0x0588, B:183:0x058b), top: B:187:0x0000 }] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String doInBackground(java.lang.Object[] r8) {
            /*
                Method dump skipped, instructions count: 1532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.util.C3874x0.AsyncTaskC3876b.doInBackground(java.lang.Object[]):java.lang.String");
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            if (this.f12237c) {
                Intent intent = new Intent();
                intent.setAction("com.allinone.callerid.INIT_HISTORY");
                C1764a.m28939b(EZCallApplication.m26146c()).m28937d(intent);
            }
        }
    }

    /* renamed from: a */
    public static void m23900a(JSONObject jSONObject, String str) {
        try {
            new AsyncTaskC3875a(jSONObject, str).executeOnExecutor(C3735e1.m24405a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m23899b(JSONObject jSONObject, String str, boolean z) {
        try {
            new AsyncTaskC3876b(jSONObject, str, z).executeOnExecutor(C3735e1.m24405a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
