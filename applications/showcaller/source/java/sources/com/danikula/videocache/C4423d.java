package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.danikula.videocache.d */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/d.class */
class C4423d {

    /* renamed from: a */
    private static final Pattern f13506a = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* renamed from: b */
    private static final Pattern f13507b = Pattern.compile("GET /(.*) HTTP");

    /* renamed from: c */
    public final String f13508c;

    /* renamed from: d */
    public final long f13509d;

    /* renamed from: e */
    public final boolean f13510e;

    public C4423d(String str) {
        C4437k.m22476d(str);
        long m22533a = m22533a(str);
        this.f13509d = Math.max(0L, m22533a);
        this.f13510e = m22533a >= 0;
        this.f13508c = m22532b(str);
    }

    /* renamed from: a */
    private long m22533a(String str) {
        Matcher matcher = f13506a.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    /* renamed from: b */
    private String m22532b(String str) {
        Matcher matcher = f13507b.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + str + "`: url not found!");
    }

    /* renamed from: c */
    public static C4423d m22531c(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (!TextUtils.isEmpty(readLine)) {
                sb.append(readLine);
                sb.append('\n');
            } else {
                return new C4423d(sb.toString());
            }
        }
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f13509d + ", partial=" + this.f13510e + ", uri='" + this.f13508c + "'}";
    }
}
