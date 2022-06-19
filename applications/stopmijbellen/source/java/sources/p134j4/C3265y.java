package p134j4;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import p189o4.AbstractC3877n;
/* renamed from: j4.y */
/* loaded from: classes-dex2jar.jar:j4/y.class */
public final class C3265y extends AbstractC3877n {

    /* renamed from: a */
    public final NavigableMap f11062a = new TreeMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v22 */
    public C3265y(File file, File file2) throws IOException {
        ArrayList arrayList = (ArrayList) C3188b2.m2560a(file, file2);
        if (!arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            ?? r0 = 0;
            while (true) {
                char c = r0;
                if (!it2.hasNext()) {
                    return;
                }
                File file3 = (File) it2.next();
                this.f11062a.put(Long.valueOf(c), file3);
                r0 = c + file3.length();
            }
        } else {
            throw new C3233n0(String.format("Virtualized slice archive empty for %s, %s", file, file2));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p189o4.AbstractC3877n
    /* renamed from: d */
    public final long mo1739d() {
        Map.Entry lastEntry = this.f11062a.lastEntry();
        return ((File) lastEntry.getValue()).length() + ((Long) lastEntry.getKey()).longValue();
    }

    @Override // p189o4.AbstractC3877n
    /* renamed from: k */
    public final InputStream mo1738k(long j, long j2) throws IOException {
        if (j < 0 || j2 < 0) {
            throw new C3233n0(String.format("Invalid input parameters %s, %s", Long.valueOf(j), Long.valueOf(j2)));
        }
        long j3 = j + j2;
        if (j3 > mo1739d()) {
            throw new C3233n0(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(mo1739d()), Long.valueOf(j3)));
        }
        Long l = (Long) this.f11062a.floorKey(Long.valueOf(j));
        Long l2 = (Long) this.f11062a.floorKey(Long.valueOf(j3));
        if (l.equals(l2)) {
            return new C3262x(m2475l(j, l), j2);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m2475l(j, l));
        Collection values = this.f11062a.subMap(l, false, l2, false).values();
        if (!values.isEmpty()) {
            arrayList.add(new C3223k1(Collections.enumeration(values)));
        }
        arrayList.add(new C3262x(new FileInputStream((File) this.f11062a.get(l2)), j2 - (l2.longValue() - j)));
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    /* renamed from: l */
    public final InputStream m2475l(long j, Long l) throws IOException {
        FileInputStream fileInputStream = new FileInputStream((File) this.f11062a.get(l));
        if (fileInputStream.skip(j - l.longValue()) == j - l.longValue()) {
            return fileInputStream;
        }
        throw new C3233n0(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l));
    }
}
