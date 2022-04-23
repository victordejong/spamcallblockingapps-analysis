package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cu2.class */
public final class cu2 {

    /* renamed from: a */
    private final int f6298a;

    /* renamed from: b */
    private final zt2 f6299b = new eu2();

    public cu2(int i) {
        this.f6298a = i;
    }

    /* renamed from: a */
    public final String m7779a(ArrayList<String> arrayList) {
        String str;
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(arrayList.get(i).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] split = sb.toString().split("\n");
        if (split.length == 0) {
            str = "";
        } else {
            bu2 bu2Var = new bu2();
            PriorityQueue priorityQueue = new PriorityQueue(this.f6298a, new au2(this));
            for (String str2 : split) {
                String[] b = du2.m7682b(str2, false);
                if (b.length != 0) {
                    hu2.m7221a(b, this.f6298a, 6, priorityQueue);
                }
            }
            Iterator it = priorityQueue.iterator();
            while (it.hasNext()) {
                try {
                    bu2Var.f6207b.write(this.f6299b.m4515a(((gu2) it.next()).f6723b));
                } catch (IOException e) {
                    C1894po.m6182d("Error while writing hash to byteStream", e);
                }
            }
            str = bu2Var.toString();
        }
        return str;
    }
}
