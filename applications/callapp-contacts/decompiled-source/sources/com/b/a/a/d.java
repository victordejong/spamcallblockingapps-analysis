package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/d.class */
public class d extends c {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f7108b = true;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7109c = null;

    /* renamed from: d  reason: collision with root package name */
    public static final a.AbstractC0755a f7110d = null;

    /* renamed from: a  reason: collision with root package name */
    public List<a> f7111a = Collections.emptyList();

    /* loaded from: classes-dex2jar.jar:com/b/a/a/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f7112a;

        /* renamed from: b  reason: collision with root package name */
        public int f7113b;

        public a(int i, int i2) {
            this.f7112a = i;
            this.f7113b = i2;
        }

        public final String toString() {
            return "Entry{count=" + this.f7112a + ", offset=" + this.f7113b + '}';
        }
    }

    static {
        a();
    }

    public d() {
        super("ctts");
    }

    private static void a() {
        b bVar = new b("CompositionTimeToSample.java", d.class);
        f7109c = bVar.a("method-execution", bVar.a("1", "getEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "", "", "", "java.util.List"), 57);
        f7110d = bVar.a("method-execution", bVar.a("1", "setEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "java.util.List", "entries", "", "void"), 61);
    }

    public static int[] a(List<a> list) {
        long j = 0;
        for (a aVar : list) {
            j += aVar.f7112a;
        }
        if (f7108b || j <= 2147483647L) {
            int[] iArr = new int[(int) j];
            int i = 0;
            for (a aVar2 : list) {
                int i2 = 0;
                while (i2 < aVar2.f7112a) {
                    iArr[i] = aVar2.f7113b;
                    i2++;
                    i++;
                }
            }
            return iArr;
        }
        throw new AssertionError();
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f7111a = new ArrayList(a2);
        for (int i = 0; i < a2; i++) {
            this.f7111a.add(new a(com.googlecode.mp4parser.c.b.a(e.a(byteBuffer)), byteBuffer.getInt()));
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7111a.size());
        for (a aVar : this.f7111a) {
            f.b(byteBuffer, aVar.f7112a);
            byteBuffer.putInt(aVar.f7113b);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (this.f7111a.size() * 8) + 8;
    }
}
