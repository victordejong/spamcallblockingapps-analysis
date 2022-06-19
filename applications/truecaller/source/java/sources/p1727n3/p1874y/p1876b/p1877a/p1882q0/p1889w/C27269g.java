package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
/* renamed from: n3.y.b.a.q0.w.g */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/g.class */
public final class C27269g implements AbstractC27260c0.AbstractC27263c {

    /* renamed from: a */
    public final int f76577a;

    /* renamed from: b */
    public final List<Format> f76578b;

    public C27269g(int i) {
        List<Format> singletonList = Collections.singletonList(Format.m42837p(null, "application/cea-608", 0, null, null));
        this.f76577a = i;
        this.f76578b = singletonList;
    }

    public C27269g(int i, List<Format> list) {
        this.f76577a = i;
        this.f76578b = list;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0.AbstractC27263c
    /* renamed from: a */
    public AbstractC27260c0 mo639a(int i, AbstractC27260c0.C27262b c27262b) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new C27285r(new C27283p(c27262b.f76520b));
            }
            if (i == 15) {
                return m637c(2) ? null : new C27285r(new C27268f(false, c27262b.f76520b));
            } else if (i == 17) {
                return m637c(2) ? null : new C27285r(new C27282o(c27262b.f76520b));
            } else if (i == 21) {
                return new C27285r(new C27281n());
            } else {
                if (i == 27) {
                    return m637c(4) ? null : new C27285r(new C27275l(new C27294x(m638b(c27262b)), m637c(1), m637c(8)));
                } else if (i == 36) {
                    return new C27285r(new C27279m(new C27294x(m638b(c27262b))));
                } else {
                    if (i == 89) {
                        return new C27285r(new C27271i(c27262b.f76521c));
                    }
                    if (i != 138) {
                        if (i == 172) {
                            return new C27285r(new C27265d(c27262b.f76520b));
                        }
                        if (i != 129) {
                            if (i != 130) {
                                if (i == 134) {
                                    return m637c(16) ? null : new C27293w(new C27295y());
                                } else if (i != 135) {
                                    return null;
                                }
                            } else if (!m637c(64)) {
                                return null;
                            }
                        }
                        return new C27285r(new C27255b(c27262b.f76520b));
                    }
                    return new C27285r(new C27270h(c27262b.f76520b));
                }
            }
        }
        return new C27285r(new C27273k(new C27266d0(m638b(c27262b))));
    }

    /* renamed from: b */
    public final List<Format> m638b(AbstractC27260c0.C27262b c27262b) {
        int i;
        String str;
        List list;
        if (m637c(32)) {
            return this.f76578b;
        }
        byte[] bArr = c27262b.f76522d;
        int length = bArr.length;
        ArrayList arrayList = this.f76578b;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (length - i3 <= 0) {
                return arrayList;
            }
            int i4 = i3 + 1;
            byte b = bArr[i3];
            int i5 = i4 + 1;
            int i6 = (bArr[i4] & 255) + i5;
            if ((b & 255) == 134) {
                ArrayList arrayList2 = new ArrayList();
                int i7 = i5 + 1;
                byte b2 = bArr[i5];
                int i8 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i8 >= (b2 & 255 & 31)) {
                        break;
                    }
                    String str2 = new String(bArr, i7, 3, Charset.forName(StringConstant.UTF8));
                    int i9 = i7 + 3;
                    int i10 = i9 + 1;
                    int i11 = bArr[i9] & 255;
                    boolean z = (i11 & 128) != 0;
                    if (z) {
                        i = i11 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte b3 = (byte) (bArr[i10] & 255);
                    int i12 = i10 + 1 + 1;
                    MediaSessionCompat.m43211p(i12 >= 0 && i12 <= length);
                    if (z) {
                        list = Collections.singletonList(new byte[]{(byte) ((b3 & 64) != 0 ? 1 : 0)});
                    } else {
                        list = null;
                    }
                    arrayList2.add(Format.m42836r(null, str, null, -1, 0, str2, i, null, RecyclerView.FOREVER_NS, list));
                    i8++;
                    i7 = i12;
                }
            }
            MediaSessionCompat.m43211p(i6 >= 0 && i6 <= length);
            i2 = i6;
        }
    }

    /* renamed from: c */
    public final boolean m637c(int i) {
        return (i & this.f76577a) != 0;
    }
}
