package com.flurry.sdk;

import java.util.Comparator;
/* renamed from: com.flurry.sdk.kr */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kr.class */
public class C0473kr implements Comparator<Runnable> {

    /* renamed from: a */
    private static final String f3492a = C0473kr.class.getSimpleName();

    /* renamed from: a */
    private static int m4610a(Runnable runnable) {
        int i = Integer.MAX_VALUE;
        if (runnable != null) {
            if (runnable instanceof C0474ks) {
                mg m4609a = ((C0474ks) runnable).m4609a();
                i = Integer.MAX_VALUE;
                if (m4609a != null) {
                    i = m4609a.u;
                }
            } else if (runnable instanceof mg) {
                i = ((mg) runnable).u;
            } else {
                C0478ku.m4596a(6, f3492a, "Unknown runnable class: " + runnable.getClass().getName());
                i = Integer.MAX_VALUE;
            }
        }
        return i;
    }

    @Override // java.util.Comparator
    public /* synthetic */ int compare(Runnable runnable, Runnable runnable2) {
        int m4610a = m4610a(runnable);
        int m4610a2 = m4610a(runnable2);
        if (m4610a < m4610a2) {
            return -1;
        }
        return m4610a > m4610a2 ? 1 : 0;
    }
}
