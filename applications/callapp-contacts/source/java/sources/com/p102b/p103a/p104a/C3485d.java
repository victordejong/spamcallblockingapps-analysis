package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.d */
/* loaded from: classes-dex2jar.jar:com/b/a/a/d.class */
public class C3485d extends AbstractC16280c {

    /* renamed from: b */
    static final /* synthetic */ boolean f13234b = true;

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13235c = null;

    /* renamed from: d */
    public static final AbstractC20997a.AbstractC20998a f13236d = null;

    /* renamed from: a */
    public List<C3486a> f13237a = Collections.emptyList();

    /* renamed from: com.b.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/d$a.class */
    public static final class C3486a {

        /* renamed from: a */
        public int f13238a;

        /* renamed from: b */
        public int f13239b;

        public C3486a(int i, int i2) {
            this.f13238a = i;
            this.f13239b = i2;
        }

        public final String toString() {
            return "Entry{count=" + this.f13238a + ", offset=" + this.f13239b + '}';
        }
    }

    static {
        m37893a();
    }

    public C3485d() {
        super("ctts");
    }

    /* renamed from: a */
    private static void m37893a() {
        C20987b c20987b = new C20987b("CompositionTimeToSample.java", C3485d.class);
        f13235c = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "", "", "", "java.util.List"), 57);
        f13236d = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "java.util.List", "entries", "", "void"), 61);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: a */
    public static int[] m37892a(List<C3486a> list) {
        Iterator<C3486a> it2;
        char c;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (!list.iterator().hasNext()) {
                break;
            }
            r0 = c + it2.next().f13238a;
        }
        if (f13234b || c <= 2147483647L) {
            int[] iArr = new int[c];
            int i = 0;
            for (C3486a c3486a : list) {
                int i2 = 0;
                while (i2 < c3486a.f13238a) {
                    iArr[i] = c3486a.f13239b;
                    i2++;
                    i++;
                }
            }
            return iArr;
        }
        throw new AssertionError();
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f13237a = new ArrayList(m7517a);
        for (int i = 0; i < m7517a; i++) {
            this.f13237a.add(new C3486a(C16282b.m7517a(C3515e.m37851a(byteBuffer)), byteBuffer.getInt()));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13237a.size());
        for (C3486a c3486a : this.f13237a) {
            C3516f.m37835b(byteBuffer, c3486a.f13238a);
            byteBuffer.putInt(c3486a.f13239b);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (this.f13237a.size() * 8) + 8;
    }
}
