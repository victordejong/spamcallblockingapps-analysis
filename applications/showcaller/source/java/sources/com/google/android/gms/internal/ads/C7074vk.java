package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* renamed from: com.google.android.gms.internal.ads.vk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vk.class */
public final class C7074vk {

    /* renamed from: a */
    private final int f31231a;

    /* renamed from: b */
    private final AbstractC6963sk f31232b = new C7148xk();

    public C7074vk(int i) {
        this.f31231a = i;
    }

    /* renamed from: a */
    public final String m9954a(ArrayList<String> arrayList) {
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
            C7037uk c7037uk = new C7037uk();
            PriorityQueue priorityQueue = new PriorityQueue(this.f31231a, new C7000tk(this));
            for (String str2 : split) {
                String[] m9571b = C7111wk.m9571b(str2, false);
                if (m9571b.length != 0) {
                    C6296al.m16574a(m9571b, this.f31231a, 6, priorityQueue);
                }
            }
            Iterator it = priorityQueue.iterator();
            while (it.hasNext()) {
                try {
                    c7037uk.f30652b.write(this.f31232b.mo9147a(((C7222zk) it.next()).f32968b));
                } catch (IOException e) {
                    ei0.m15466d("Error while writing hash to byteStream", e);
                }
            }
            str = c7037uk.toString();
        }
        return str;
    }
}
