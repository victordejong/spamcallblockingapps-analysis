package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dur.class */
public final class dur {

    /* renamed from: b */
    private final int f15825b;

    /* renamed from: d */
    private final duo f15827d = new duv();

    /* renamed from: a */
    private final int f15824a = 6;

    /* renamed from: c */
    private final int f15826c = 0;

    public dur(int i) {
        this.f15825b = i;
    }

    /* renamed from: a */
    private final String m8532a(String str) {
        String dutVar;
        String[] split = str.split("\n");
        if (split.length == 0) {
            dutVar = "";
        } else {
            dut dutVar2 = new dut();
            PriorityQueue priorityQueue = new PriorityQueue(this.f15825b, new duq(this));
            for (String str2 : split) {
                String[] m8529a = dus.m8529a(str2, false);
                if (m8529a.length != 0) {
                    dux.m8521a(m8529a, this.f15825b, this.f15824a, priorityQueue);
                }
            }
            Iterator it = priorityQueue.iterator();
            while (it.hasNext()) {
                try {
                    dutVar2.m8528a(this.f15827d.mo8518a(((duw) it.next()).f15832b));
                } catch (IOException e) {
                    C3556uu.m6748c("Error while writing hash to byteStream", e);
                }
            }
            dutVar = dutVar2.toString();
        }
        return dutVar;
    }

    /* renamed from: a */
    public final String m8531a(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            sb.append(arrayList2.get(i).toLowerCase(Locale.US));
            sb.append('\n');
        }
        return m8532a(sb.toString());
    }
}
