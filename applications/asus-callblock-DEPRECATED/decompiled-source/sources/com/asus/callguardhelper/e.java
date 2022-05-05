package com.asus.callguardhelper;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/e.class */
public final class e implements i {

    /* renamed from: a  reason: collision with root package name */
    public Context f2562a;

    /* renamed from: b  reason: collision with root package name */
    private int f2563b;
    private a c;

    /* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/e$a.class */
    public interface a {
        void a(String str);
    }

    public e(Context context, a aVar) {
        this.f2562a = context;
        this.c = aVar;
    }

    public final boolean a() {
        boolean z;
        try {
            z = PreferenceManager.getDefaultSharedPreferences(this.f2562a).edit().putInt("callguard_test_code", 777).commit();
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public final boolean a(int i) {
        boolean commit;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f2562a);
        switch (i) {
            case 101:
                this.f2563b = 101;
                commit = defaultSharedPreferences.edit().putInt("strategy", 101).commit();
                break;
            case 102:
                this.f2563b = 102;
                commit = defaultSharedPreferences.edit().putInt("strategy", 102).commit();
                break;
            case 103:
                this.f2563b = 103;
                commit = defaultSharedPreferences.edit().putInt("strategy", 103).commit();
                break;
            default:
                this.f2563b = defaultSharedPreferences.getInt("strategy", 101);
                commit = defaultSharedPreferences.edit().putInt("strategy", 101).commit();
                break;
        }
        return commit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x019c  */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.String r10, java.lang.String r11, int r12) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.e.a(java.lang.String, java.lang.String, int):boolean");
    }

    public final b[] a(String str) {
        b[] bVarArr;
        String a2 = g.a(this.f2562a, this);
        if (a2.equals("service_offline") || a2.equals("service_temp_disable") || a2.equals("service_terminate") || str == null) {
            bVarArr = null;
        } else if (!g.c(this.f2562a)) {
            this.c.a("status_overdue");
            bVarArr = null;
        } else {
            LinkedList linkedList = new LinkedList();
            linkedList.add(g.b(str));
            try {
                List<b> b2 = new com.asus.msazure.a(this.f2562a).b(linkedList, this.f2563b);
                b2.get(0).f2558a = str;
                Log.d("CallGuardHelper", "getRecommandInfo from cloudList " + b2.size());
                bVarArr = (b[]) b2.toArray(new b[b2.size()]);
            } catch (Exception e) {
                Log.d("CallGuardHelper", "getRecommandInfo:::" + e.getMessage());
                bVarArr = null;
            }
        }
        return bVarArr;
    }

    public final b[] a(String[] strArr, int i) {
        LinkedList linkedList = new LinkedList();
        String a2 = g.a(this.f2562a, this);
        Log.d("CallGuardHelper", "now status :: " + a2);
        b[] bVarArr = null;
        try {
            if (!a2.equals("service_offline")) {
                bVarArr = null;
                if (!a2.equals("service_terminate")) {
                    if (strArr == null) {
                        bVarArr = null;
                    } else if (!a2.equals("service_offline") || !a2.equals("service_terminate")) {
                        List<String> linkedList2 = new LinkedList<>(Arrays.asList(strArr));
                        for (String str : linkedList2) {
                            if (!g.a(str)) {
                                d dVar = new d();
                                dVar.b(str).a("unknown").a(-1).b(0);
                                b bVar = dVar.f2561a;
                                if (linkedList2.contains(str)) {
                                    linkedList2.remove(str);
                                }
                                linkedList.add(bVar);
                            }
                        }
                        com.asus.msazure.a aVar = new com.asus.msazure.a(this.f2562a);
                        if (linkedList2.size() > 0) {
                            List<b> a3 = aVar.a(linkedList2);
                            for (b bVar2 : a3) {
                                String str2 = bVar2.f2558a;
                                if (linkedList2.contains(str2)) {
                                    linkedList2.remove(str2);
                                }
                            }
                            linkedList.addAll(a3);
                        }
                        if (linkedList2.size() > 0) {
                            List<b> a4 = aVar.a(linkedList2, i);
                            ArrayList arrayList = new ArrayList();
                            for (b bVar3 : a4) {
                                String str3 = bVar3.f2558a;
                                if (linkedList2.contains(str3)) {
                                    if (!bVar3.f) {
                                        linkedList2.remove(str3);
                                    } else {
                                        arrayList.add(str3);
                                    }
                                }
                            }
                            for (String str4 : linkedList2) {
                                if (arrayList.contains(str4)) {
                                    linkedList2.set(linkedList2.indexOf(str4), g.a(str4, i, true));
                                } else {
                                    linkedList2.set(linkedList2.indexOf(str4), g.a(str4, i, false));
                                }
                            }
                            linkedList.addAll(a4);
                        }
                        if (g.c(this.f2562a) && !a2.equals("service_temp_disable") && linkedList2.size() > 0) {
                            if (i == 999) {
                                for (String str5 : linkedList2) {
                                    b bVar4 = new d().c(str5).f2561a;
                                    if (linkedList2.contains(str5)) {
                                        linkedList2.remove(str5);
                                    }
                                    linkedList.add(bVar4);
                                }
                            } else {
                                HashMap hashMap = new HashMap();
                                LinkedList linkedList3 = new LinkedList(g.a(linkedList2));
                                int i2 = 0;
                                for (String str6 : linkedList3) {
                                    Log.d("CallGuardHelper", "all number:" + linkedList2.get(i2));
                                    hashMap.put(str6, linkedList2.get(i2));
                                    i2++;
                                }
                                List<b> a5 = aVar.a(linkedList3, this.f2563b, hashMap);
                                Log.d("CallGuardHelper", "cloudList " + a5.size());
                                linkedList.addAll(a5);
                            }
                        }
                        Log.d("CallGuardHelper", "Combine all list size is " + linkedList.size());
                        bVarArr = (b[]) linkedList.toArray(new b[linkedList.size()]);
                    } else {
                        this.c.a(a2);
                        bVarArr = null;
                    }
                }
            }
        } catch (Exception e) {
            Log.d("CallGuardHelper", "getCallerInfo:::" + e.getMessage());
            bVarArr = (b[]) linkedList.toArray(new b[linkedList.size()]);
        }
        return bVarArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.e.b(java.lang.String):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [android.database.Cursor] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 0
            r11 = r0
            r0 = r10
            java.lang.String r0 = com.asus.callguardhelper.g.b(r0)     // Catch: Exception -> 0x004e, all -> 0x0069
            r10 = r0
            r0 = r9
            android.content.Context r0 = r0.f2562a     // Catch: Exception -> 0x004e, all -> 0x0069
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x004e, all -> 0x0069
            android.net.Uri r1 = com.asus.callguardhelper.a.b.f2555a     // Catch: Exception -> 0x004e, all -> 0x0069
            r2 = 0
            java.lang.String r3 = "minmatch=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x004e, all -> 0x0069
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: Exception -> 0x004e, all -> 0x0069
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x004e, all -> 0x0069
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0049
            r0 = r11
            r10 = r0
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x007a, Exception -> 0x0083
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0049
            r0 = 1
            r12 = r0
        L_0x0036:
            r0 = r12
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0046
            r0 = r11
            r0.close()
            r0 = r12
            r13 = r0
        L_0x0046:
            r0 = r13
            return r0
        L_0x0049:
            r0 = 0
            r12 = r0
            goto L_0x0036
        L_0x004e:
            r14 = move-exception
            r0 = 0
            r11 = r0
        L_0x0052:
            r0 = r11
            r10 = r0
            r0 = r14
            r0.printStackTrace()     // Catch: all -> 0x007a
            r0 = r11
            if (r0 == 0) goto L_0x0063
            r0 = r11
            r0.close()
        L_0x0063:
            r0 = 0
            r13 = r0
            goto L_0x0046
        L_0x0069:
            r10 = move-exception
            r0 = r10
            r14 = r0
        L_0x006d:
            r0 = r11
            if (r0 == 0) goto L_0x0077
            r0 = r11
            r0.close()
        L_0x0077:
            r0 = r14
            throw r0
        L_0x007a:
            r11 = move-exception
            r0 = r11
            r14 = r0
            r0 = r10
            r11 = r0
            goto L_0x006d
        L_0x0083:
            r14 = move-exception
            goto L_0x0052
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.e.c(java.lang.String):boolean");
    }

    @Override // com.asus.callguardhelper.i
    public final void d(String str) {
        char c = 65535;
        try {
            switch (str.hashCode()) {
                case -2006915299:
                    if (str.equals("service_online")) {
                        c = 1;
                        break;
                    }
                    break;
                case -652612921:
                    if (str.equals("service_temp_disable")) {
                        c = 2;
                        break;
                    }
                    break;
                case 118645079:
                    if (str.equals("service_terminate")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1975645785:
                    if (str.equals("service_offline")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    Log.d("CallGuardHelper", "SERVICE_OFFLINE");
                    this.c.a("service_offline");
                    return;
                case 1:
                    Log.d("CallGuardHelper", "SERVICE_ONLINE");
                    if (!g.c(this.f2562a)) {
                        this.c.a("status_overdue");
                        return;
                    } else {
                        this.c.a("service_online");
                        return;
                    }
                case 2:
                    this.c.a("service_temp_disable");
                    return;
                case 3:
                    this.c.a("service_terminate");
                    return;
                default:
                    if (!g.c(this.f2562a)) {
                        this.c.a("status_overdue");
                        return;
                    }
                    return;
            }
        } catch (Exception e) {
            Log.d("CallGuardHelper", "onSyncVersionCompleted::" + e.getMessage());
        }
    }
}
