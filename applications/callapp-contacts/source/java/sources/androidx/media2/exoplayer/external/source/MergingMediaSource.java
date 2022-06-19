package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MergingMediaSource.class */
public final class MergingMediaSource extends AbstractC1765d<Integer> {

    /* renamed from: a */
    private final AbstractC1842t[] f6740a;

    /* renamed from: b */
    private final AbstractC1383al[] f6741b;

    /* renamed from: c */
    private final ArrayList<AbstractC1842t> f6742c;

    /* renamed from: d */
    private final AbstractC1770g f6743d;

    /* renamed from: e */
    private int f6744e;

    /* renamed from: f */
    private IllegalMergeException f6745f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException.class */
    public static final class IllegalMergeException extends IOException {

        /* renamed from: a */
        public final int f6746a;

        public IllegalMergeException(int i) {
            this.f6746a = i;
        }
    }

    public MergingMediaSource(AbstractC1770g abstractC1770g, AbstractC1842t... abstractC1842tArr) {
        this.f6740a = abstractC1842tArr;
        this.f6743d = abstractC1770g;
        this.f6742c = new ArrayList<>(Arrays.asList(abstractC1842tArr));
        this.f6744e = -1;
        this.f6741b = new AbstractC1383al[abstractC1842tArr.length];
    }

    public MergingMediaSource(AbstractC1842t... abstractC1842tArr) {
        this(new C1824k(), abstractC1842tArr);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        int length = this.f6740a.length;
        AbstractC1840s[] abstractC1840sArr = new AbstractC1840s[length];
        int mo42088a = this.f6741b[0].mo42088a(c1843a.f7356a);
        for (int i = 0; i < length; i++) {
            abstractC1840sArr[i] = this.f6740a[i].mo42072a(c1843a.m42063a(this.f6741b[i].mo42092a(mo42088a)), abstractC1963b, j);
        }
        return new C1739ae(this.f6743d, abstractC1840sArr);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* synthetic */ AbstractC1842t.C1843a mo42101a(Integer num, AbstractC1842t.C1843a c1843a) {
        if (num.intValue() == 0) {
            return c1843a;
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        C1739ae c1739ae = (C1739ae) abstractC1840s;
        int i = 0;
        while (true) {
            AbstractC1842t[] abstractC1842tArr = this.f6740a;
            if (i < abstractC1842tArr.length) {
                abstractC1842tArr[i].mo42073a(c1739ae.f6815a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public final void mo42102a(AbstractC1990w abstractC1990w) {
        super.mo42102a(abstractC1990w);
        for (int i = 0; i < this.f6740a.length; i++) {
            m42278a((MergingMediaSource) Integer.valueOf(i), this.f6740a[i]);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* synthetic */ void mo42100a(Integer num, AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
        IllegalMergeException illegalMergeException;
        Integer num2 = num;
        if (this.f6745f == null) {
            if (this.f6744e == -1) {
                this.f6744e = abstractC1383al.mo42093c();
            } else if (abstractC1383al.mo42093c() != this.f6744e) {
                illegalMergeException = new IllegalMergeException(0);
                this.f6745f = illegalMergeException;
            }
            illegalMergeException = null;
            this.f6745f = illegalMergeException;
        }
        if (this.f6745f == null) {
            this.f6742c.remove(abstractC1842t);
            this.f6741b[num2.intValue()] = abstractC1383al;
            if (!this.f6742c.isEmpty()) {
                return;
            }
            m42285a(this.f6741b[0]);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    public final void mo42097c() {
        super.mo42097c();
        Arrays.fill(this.f6741b, (Object) null);
        this.f6744e = -1;
        this.f6745f = null;
        this.f6742c.clear();
        Collections.addAll(this.f6742c, this.f6740a);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        AbstractC1842t[] abstractC1842tArr = this.f6740a;
        if (abstractC1842tArr.length > 0) {
            return abstractC1842tArr[0].mo42066e();
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: f */
    public final void mo42065f() throws IOException {
        IllegalMergeException illegalMergeException = this.f6745f;
        if (illegalMergeException == null) {
            super.mo42065f();
            return;
        }
        throw illegalMergeException;
    }
}
