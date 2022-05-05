package com.google.android.gms.tagmanager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ag.class */
final class ag {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.Map, java.util.HashMap] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(java.lang.Object r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof org.json.JSONArray
            if (r0 == 0) goto L_0x0011
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "JSONArrays are not supported"
            r1.<init>(r2)
            throw r0
        L_0x0011:
            java.lang.Object r0 = org.json.JSONObject.NULL
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0025
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "JSON nulls are not supported"
            r1.<init>(r2)
            throw r0
        L_0x0025:
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof org.json.JSONObject
            if (r0 == 0) goto L_0x0066
            r0 = r5
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            r7 = r0
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r7
            java.util.Iterator r0 = r0.keys()
            r8 = r0
        L_0x0040:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0066
            r0 = r8
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r6
            r1 = r5
            r2 = r7
            r3 = r5
            java.lang.Object r2 = r2.get(r3)
            java.lang.Object r2 = a(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0040
        L_0x0066:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.ag.a(java.lang.Object):java.lang.Object");
    }
}
