package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.upstream.cache.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/o.class */
public final class C11561o extends C11548g {

    /* renamed from: g */
    private static final Pattern f38495g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* renamed from: h */
    private static final Pattern f38496h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* renamed from: i */
    private static final Pattern f38497i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public C11561o(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* renamed from: a */
    public static C11561o m20089a(File file, long j, long j2, C11551i c11551i) {
        String m20159a;
        String name = file.getName();
        if (!name.endsWith(".v3.exo")) {
            file = m20087a(file, c11551i);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        Matcher matcher = f38497i.matcher(name);
        if (matcher.matches() && (m20159a = c11551i.m20159a(Integer.parseInt((String) C11593a.m20020b(matcher.group(1))))) != null) {
            int i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            ?? r12 = j;
            if (i == 0) {
                r12 = file.length();
            }
            if (r12 == 0) {
                return null;
            }
            long parseLong = Long.parseLong((String) C11593a.m20020b(matcher.group(2)));
            int i2 = (j2 > (-9223372036854775807L) ? 1 : (j2 == (-9223372036854775807L) ? 0 : -1));
            ?? r14 = j2;
            if (i2 == 0) {
                r14 = Long.parseLong((String) C11593a.m20020b(matcher.group(3)));
            }
            return new C11561o(m20159a, parseLong, r12, r14, file);
        }
        return null;
    }

    /* renamed from: a */
    public static C11561o m20088a(File file, long j, C11551i c11551i) {
        return m20089a(file, j, -9223372036854775807L, c11551i);
    }

    /* renamed from: a */
    public static C11561o m20086a(String str, long j) {
        return new C11561o(str, j, -1L, -9223372036854775807L, null);
    }

    /* renamed from: a */
    public static C11561o m20085a(String str, long j, long j2) {
        return new C11561o(str, j, j2, -9223372036854775807L, null);
    }

    /* renamed from: a */
    public static File m20090a(File file, int i, long j, long j2) {
        return new File(file, i + "." + j + "." + j2 + ".v3.exo");
    }

    /* renamed from: a */
    private static File m20087a(File file, C11551i c11551i) {
        String str;
        String name = file.getName();
        Matcher matcher = f38496h.matcher(name);
        if (matcher.matches()) {
            str = C11599af.m19922f((String) C11593a.m20020b(matcher.group(1)));
        } else {
            matcher = f38495g.matcher(name);
            str = matcher.matches() ? (String) C11593a.m20020b(matcher.group(1)) : null;
        }
        if (str == null) {
            return null;
        }
        File m20090a = m20090a((File) C11593a.m20024a(file.getParentFile()), c11551i.m20152c(str), Long.parseLong((String) C11593a.m20020b(matcher.group(2))), Long.parseLong((String) C11593a.m20020b(matcher.group(3))));
        if (file.renameTo(m20090a)) {
            return m20090a;
        }
        return null;
    }
}
