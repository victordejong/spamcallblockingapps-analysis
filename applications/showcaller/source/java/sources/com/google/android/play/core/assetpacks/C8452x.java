package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC8486f0;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.google.android.play.core.assetpacks.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/x.class */
final class C8452x extends AbstractC8486f0 {

    /* renamed from: d */
    private final File f37978d;

    /* renamed from: e */
    private final File f37979e;

    /* renamed from: f */
    private final NavigableMap<Long, File> f37980f = new TreeMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v23 */
    public C8452x(File file, File file2) {
        this.f37978d = file;
        this.f37979e = file2;
        List<File> m3610a = C8457y1.m3610a(file, file2);
        if (!m3610a.isEmpty()) {
            Iterator<File> it = m3610a.iterator();
            ?? r0 = 0;
            while (true) {
                char c = r0;
                if (!it.hasNext()) {
                    return;
                }
                File next = it.next();
                this.f37980f.put(Long.valueOf(c), next);
                r0 = c + next.length();
            }
        } else {
            throw new C8369bk(String.format("Virtualized slice archive empty for %s, %s", file, file2));
        }
    }

    /* renamed from: g */
    private final InputStream m3615g(long j, Long l) {
        FileInputStream fileInputStream = new FileInputStream((File) this.f37980f.get(l));
        if (fileInputStream.skip(j - l.longValue()) == j - l.longValue()) {
            return fileInputStream;
        }
        throw new C8369bk(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l));
    }

    @Override // com.google.android.play.core.internal.AbstractC8486f0
    /* renamed from: a */
    public final long mo3516a() {
        Map.Entry<Long, File> lastEntry = this.f37980f.lastEntry();
        return lastEntry.getKey().longValue() + lastEntry.getValue().length();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.play.core.internal.AbstractC8486f0
    /* renamed from: e */
    public final InputStream mo3515e(long j, long j2) {
        if (j < 0 || j2 < 0) {
            throw new C8369bk(String.format("Invalid input parameters %s, %s", Long.valueOf(j), Long.valueOf(j2)));
        }
        long j3 = j + j2;
        if (j3 > mo3516a()) {
            throw new C8369bk(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(mo3516a()), Long.valueOf(j3)));
        }
        Long floorKey = this.f37980f.floorKey(Long.valueOf(j));
        Long floorKey2 = this.f37980f.floorKey(Long.valueOf(j3));
        if (floorKey.equals(floorKey2)) {
            return new C8449w(m3615g(j, floorKey), j2);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m3615g(j, floorKey));
        Collection<File> values = this.f37980f.subMap(floorKey, false, floorKey2, false).values();
        if (!values.isEmpty()) {
            arrayList.add(new C8396i1(Collections.enumeration(values)));
        }
        arrayList.add(new C8449w(new FileInputStream((File) this.f37980f.get(floorKey2)), j2 - (floorKey2.longValue() - j)));
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }
}
