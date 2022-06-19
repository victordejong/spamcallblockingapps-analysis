package com.pgl.sys.ces.p483d;

import android.content.Context;
import com.pgl.sys.ces.C17072b;
/* renamed from: com.pgl.sys.ces.d.c */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/d/c.class */
public class C17084c {

    /* renamed from: a */
    private static AbstractC17083b f60628a;

    /* renamed from: a */
    public static AbstractC17083b m5887a(Context context, String str, AbstractC17082a abstractC17082a) {
        if (f60628a == null) {
            synchronized (C17084c.class) {
                try {
                    if (f60628a == null) {
                        f60628a = C17072b.m5914a(context, str, 0, abstractC17082a);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f60628a;
    }
}
