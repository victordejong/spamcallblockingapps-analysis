package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/o.class */
public final class o extends g {
    private static final Pattern g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public static o a(File file, long j, long j2, i iVar) {
        String a2;
        String name = file.getName();
        if (!name.endsWith(".v3.exo")) {
            file = a(file, iVar);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        Matcher matcher = i.matcher(name);
        if (!matcher.matches() || (a2 = iVar.a(Integer.parseInt((String) a.b(matcher.group(1))))) == null) {
            return null;
        }
        if (j == -1) {
            j = file.length();
        }
        if (j == 0) {
            return null;
        }
        long parseLong = Long.parseLong((String) a.b(matcher.group(2)));
        if (j2 == -9223372036854775807L) {
            j2 = Long.parseLong((String) a.b(matcher.group(3)));
        }
        return new o(a2, parseLong, j, j2, file);
    }

    public static o a(File file, long j, i iVar) {
        return a(file, j, -9223372036854775807L, iVar);
    }

    public static o a(String str, long j) {
        return new o(str, j, -1L, -9223372036854775807L, null);
    }

    public static o a(String str, long j, long j2) {
        return new o(str, j, j2, -9223372036854775807L, null);
    }

    public static File a(File file, int i2, long j, long j2) {
        return new File(file, i2 + "." + j + "." + j2 + ".v3.exo");
    }

    private static File a(File file, i iVar) {
        String str;
        String name = file.getName();
        Matcher matcher = h.matcher(name);
        if (matcher.matches()) {
            str = af.f((String) a.b(matcher.group(1)));
        } else {
            matcher = g.matcher(name);
            str = matcher.matches() ? (String) a.b(matcher.group(1)) : null;
        }
        if (str == null) {
            return null;
        }
        File a2 = a((File) a.a(file.getParentFile()), iVar.c(str), Long.parseLong((String) a.b(matcher.group(2))), Long.parseLong((String) a.b(matcher.group(3))));
        if (!file.renameTo(a2)) {
            return null;
        }
        return a2;
    }
}
