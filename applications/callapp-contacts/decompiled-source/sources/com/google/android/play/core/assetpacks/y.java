package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.ap;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/y.class */
final class y extends ap {

    /* renamed from: a  reason: collision with root package name */
    private final File f31319a;

    /* renamed from: b  reason: collision with root package name */
    private final File f31320b;

    /* renamed from: c  reason: collision with root package name */
    private final NavigableMap<Long, File> f31321c = new TreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(File file, File file2) throws IOException {
        this.f31319a = file;
        this.f31320b = file2;
        List<File> a2 = ca.a(file, file2);
        if (!a2.isEmpty()) {
            long j = 0;
            for (File file3 : a2) {
                this.f31321c.put(Long.valueOf(j), file3);
                j += file3.length();
            }
            return;
        }
        throw new al(String.format("Virtualized slice archive empty for %s, %s", file, file2));
    }

    private final InputStream a(long j, Long l) throws IOException {
        FileInputStream fileInputStream = new FileInputStream((File) this.f31321c.get(l));
        if (fileInputStream.skip(j - l.longValue()) == j - l.longValue()) {
            return fileInputStream;
        }
        throw new al(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l));
    }

    @Override // com.google.android.play.core.internal.ap
    public final long a() {
        Map.Entry<Long, File> lastEntry = this.f31321c.lastEntry();
        return lastEntry.getKey().longValue() + lastEntry.getValue().length();
    }

    @Override // com.google.android.play.core.internal.ap
    public final InputStream a(long j, long j2) throws IOException {
        if (j < 0 || j2 < 0) {
            throw new al(String.format("Invalid input parameters %s, %s", Long.valueOf(j), Long.valueOf(j2)));
        }
        long j3 = j + j2;
        if (j3 <= a()) {
            Long floorKey = this.f31321c.floorKey(Long.valueOf(j));
            Long floorKey2 = this.f31321c.floorKey(Long.valueOf(j3));
            if (floorKey.equals(floorKey2)) {
                return new x(a(j, floorKey), j2);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(a(j, floorKey));
            Collection<File> values = this.f31321c.subMap(floorKey, false, floorKey2, false).values();
            if (!values.isEmpty()) {
                arrayList.add(new bk(Collections.enumeration(values)));
            }
            arrayList.add(new x(new FileInputStream((File) this.f31321c.get(floorKey2)), j2 - (floorKey2.longValue() - j)));
            return new SequenceInputStream(Collections.enumeration(arrayList));
        }
        throw new al(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(a()), Long.valueOf(j3)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
