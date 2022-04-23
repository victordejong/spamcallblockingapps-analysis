package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efk.class */
public final class efk {

    /* renamed from: b  reason: collision with root package name */
    private final int f27783b;

    /* renamed from: d  reason: collision with root package name */
    private final efh f27785d = new efp();

    /* renamed from: a  reason: collision with root package name */
    private final int f27782a = 6;

    /* renamed from: c  reason: collision with root package name */
    private final int f27784c = 0;

    public efk(int i) {
        this.f27783b = i;
    }

    private final String a(String str) {
        String[] split = str.split(StringUtils.LF);
        if (split.length == 0) {
            return "";
        }
        efn efnVar = new efn();
        PriorityQueue priorityQueue = new PriorityQueue(this.f27783b, new efj(this));
        for (String str2 : split) {
            String[] a2 = efm.a(str2, false);
            if (a2.length != 0) {
                efr.a(a2, this.f27783b, this.f27782a, priorityQueue);
            }
        }
        Iterator it2 = priorityQueue.iterator();
        while (it2.hasNext()) {
            try {
                efnVar.a(this.f27785d.a(((efq) it2.next()).f27793b));
            } catch (IOException e) {
                zzd.zzc("Error while writing hash to byteStream", e);
            }
        }
        return efnVar.toString();
    }

    public final String a(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            String str = arrayList2.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return a(sb.toString());
    }
}
