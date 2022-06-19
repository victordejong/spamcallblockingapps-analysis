package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC15025ap;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
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
/* renamed from: com.google.android.play.core.assetpacks.y */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/y.class */
final class C14998y extends AbstractC15025ap {

    /* renamed from: a */
    private final File f54720a;

    /* renamed from: b */
    private final File f54721b;

    /* renamed from: c */
    private final NavigableMap<Long, File> f54722c = new TreeMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v23 */
    public C14998y(File file, File file2) throws IOException {
        this.f54720a = file;
        this.f54721b = file2;
        List<File> m9714a = C14954ca.m9714a(file, file2);
        if (!m9714a.isEmpty()) {
            Iterator<File> it2 = m9714a.iterator();
            ?? r0 = 0;
            while (true) {
                char c = r0;
                if (!it2.hasNext()) {
                    return;
                }
                File next = it2.next();
                this.f54722c.put(Long.valueOf(c), next);
                r0 = c + next.length();
            }
        } else {
            throw new C14911al(String.format("Virtualized slice archive empty for %s, %s", file, file2));
        }
    }

    /* renamed from: a */
    private final InputStream m9639a(long j, Long l) throws IOException {
        FileInputStream fileInputStream = new FileInputStream((File) this.f54722c.get(l));
        if (fileInputStream.skip(j - l.longValue()) == j - l.longValue()) {
            return fileInputStream;
        }
        throw new C14911al(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l));
    }

    @Override // com.google.android.play.core.internal.AbstractC15025ap
    /* renamed from: a */
    public final long mo9582a() {
        Map.Entry<Long, File> lastEntry = this.f54722c.lastEntry();
        return lastEntry.getKey().longValue() + lastEntry.getValue().length();
    }

    @Override // com.google.android.play.core.internal.AbstractC15025ap
    /* renamed from: a */
    public final InputStream mo9580a(long j, long j2) throws IOException {
        if (j < 0 || j2 < 0) {
            throw new C14911al(String.format("Invalid input parameters %s, %s", Long.valueOf(j), Long.valueOf(j2)));
        }
        long j3 = j + j2;
        if (j3 > mo9582a()) {
            throw new C14911al(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(mo9582a()), Long.valueOf(j3)));
        }
        Long floorKey = this.f54722c.floorKey(Long.valueOf(j));
        Long floorKey2 = this.f54722c.floorKey(Long.valueOf(j3));
        if (floorKey.equals(floorKey2)) {
            return new C14997x(m9639a(j, floorKey), j2);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m9639a(j, floorKey));
        Collection<File> values = this.f54722c.subMap(floorKey, false, floorKey2, false).values();
        if (!values.isEmpty()) {
            arrayList.add(new C14937bk(Collections.enumeration(values)));
        }
        arrayList.add(new C14997x(new FileInputStream((File) this.f54722c.get(floorKey2)), j2 - (floorKey2.longValue() - j)));
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
