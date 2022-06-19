package com.flurry.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.ly */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ly.class */
public class C0499ly {

    /* renamed from: a */
    private Map<String, Object> f3578a = new HashMap();

    /* renamed from: b */
    private Map<String, List<AbstractC0500a>> f3579b = new HashMap();

    /* renamed from: com.flurry.sdk.ly$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/ly$a.class */
    public interface AbstractC0500a {
        /* renamed from: a */
        void m4511a(String str, Object obj);
    }

    /* renamed from: a */
    public final Object m4515a(String str) {
        Object obj;
        synchronized (this) {
            obj = this.f3578a.get(str);
        }
        return obj;
    }

    /* renamed from: a */
    public final void m4514a(String str, AbstractC0500a abstractC0500a) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (abstractC0500a == null) {
                return;
            }
            List<AbstractC0500a> list = this.f3579b.get(str);
            List<AbstractC0500a> list2 = list;
            if (list == null) {
                list2 = new LinkedList<>();
            }
            list2.add(abstractC0500a);
            this.f3579b.put(str, list2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4513a(java.lang.String r5, java.lang.Object r6) {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L9e
            r7 = r0
            r0 = r7
            if (r0 == 0) goto Le
            r0 = r4
            monitor-exit(r0)
            return
        Le:
            r0 = r4
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f3578a     // Catch: java.lang.Throwable -> L9e
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L9e
            r8 = r0
            r0 = r6
            r1 = r8
            if (r0 == r1) goto L36
            r0 = r6
            if (r0 == 0) goto L30
            r0 = r6
            r1 = r8
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L9e
            if (r0 == 0) goto L30
            goto L36
        L30:
            r0 = 0
            r9 = r0
            goto L39
        L36:
            r0 = 1
            r9 = r0
        L39:
            r0 = r9
            if (r0 != 0) goto L9b
            r0 = r6
            if (r0 != 0) goto L50
            r0 = r4
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f3578a     // Catch: java.lang.Throwable -> L9e
            r1 = r5
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> L9e
            goto L5c
        L50:
            r0 = r4
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f3578a     // Catch: java.lang.Throwable -> L9e
            r1 = r5
            r2 = r6
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L9e
        L5c:
            r0 = r4
            java.util.Map<java.lang.String, java.util.List<com.flurry.sdk.ly$a>> r0 = r0.f3579b     // Catch: java.lang.Throwable -> L9e
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L9e
            if (r0 == 0) goto L9b
            r0 = r4
            java.util.Map<java.lang.String, java.util.List<com.flurry.sdk.ly$a>> r0 = r0.f3579b     // Catch: java.lang.Throwable -> L9e
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L9e
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L9e
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L9e
            r8 = r0
        L7d:
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L9e
            if (r0 == 0) goto L9b
            r0 = r8
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L9e
            com.flurry.sdk.ly$a r0 = (com.flurry.sdk.C0499ly.AbstractC0500a) r0     // Catch: java.lang.Throwable -> L9e
            r1 = r5
            r2 = r6
            r0.m4511a(r1, r2)     // Catch: java.lang.Throwable -> L9e
            goto L7d
        L9b:
            r0 = r4
            monitor-exit(r0)
            return
        L9e:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C0499ly.m4513a(java.lang.String, java.lang.Object):void");
    }

    /* renamed from: b */
    public final boolean m4512b(String str, AbstractC0500a abstractC0500a) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (abstractC0500a == null) {
                return false;
            }
            List<AbstractC0500a> list = this.f3579b.get(str);
            if (list == null) {
                return false;
            }
            return list.remove(abstractC0500a);
        }
    }
}
