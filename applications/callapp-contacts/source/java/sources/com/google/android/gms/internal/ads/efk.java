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

    /* renamed from: b */
    private final int f48964b;

    /* renamed from: d */
    private final efh f48966d = new efp();

    /* renamed from: a */
    private final int f48963a = 6;

    /* renamed from: c */
    private final int f48965c = 0;

    public efk(int i) {
        this.f48964b = i;
    }

    /* renamed from: a */
    private final String m15094a(String str) {
        String[] split = str.split(StringUtils.f67179LF);
        if (split.length == 0) {
            return "";
        }
        efn efnVar = new efn();
        PriorityQueue priorityQueue = new PriorityQueue(this.f48964b, new efj(this));
        for (String str2 : split) {
            String[] m15091a = efm.m15091a(str2, false);
            if (m15091a.length != 0) {
                efr.m15084a(m15091a, this.f48964b, this.f48963a, priorityQueue);
            }
        }
        Iterator it2 = priorityQueue.iterator();
        while (it2.hasNext()) {
            try {
                efnVar.m15090a(this.f48966d.mo15082a(((efq) it2.next()).f48974b));
            } catch (IOException e) {
                zzd.zzc("Error while writing hash to byteStream", e);
            }
        }
        return efnVar.toString();
    }

    /* renamed from: a */
    public final String m15093a(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            sb.append(arrayList2.get(i).toLowerCase(Locale.US));
            sb.append('\n');
        }
        return m15094a(sb.toString());
    }
}
