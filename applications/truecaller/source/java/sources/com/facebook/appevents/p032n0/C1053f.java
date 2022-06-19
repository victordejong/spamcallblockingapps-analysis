package com.facebook.appevents.p032n0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0014\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018�� \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\f\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/facebook/appevents/ml/MTensor;", "", "shape", "", "([I)V", "capacity", "", "<set-?>", "", RemoteMessageConst.DATA, "getData", "()[F", "shapeSize", "getShapeSize", "()I", "getShape", "i", "reshape", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.n0.f */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/f.class */
public final class C1053f {

    /* renamed from: d */
    public static final C1054a f2896d = new C1054a(null);

    /* renamed from: a */
    public int[] f2897a;

    /* renamed from: b */
    public int f2898b;

    /* renamed from: c */
    public float[] f2899c;

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0015\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u0007"}, d2 = {"Lcom/facebook/appevents/ml/MTensor$Companion;", "", "()V", "getCapacity", "", "shape", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.n0.f$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/f$a.class */
    public static final class C1054a {
        public C1054a(f fVar) {
        }
    }

    public C1053f(int[] iArr) {
        l.e(iArr, "shape");
        this.f2897a = iArr;
        if (!(iArr.length == 0)) {
            int i = iArr[0];
            int m3959U0 = C25225a.m3959U0(iArr);
            int i2 = i;
            if (1 <= m3959U0) {
                int i3 = 1;
                while (true) {
                    i *= iArr[i3];
                    i2 = i;
                    if (i3 == m3959U0) {
                        break;
                    }
                    i3++;
                }
            }
            this.f2898b = i2;
            this.f2899c = new float[i2];
            return;
        }
        throw new UnsupportedOperationException("Empty array can't be reduced.");
    }

    /* renamed from: a */
    public final void m41853a(int[] iArr) {
        l.e(iArr, "shape");
        this.f2897a = iArr;
        int i = 1;
        if (!(iArr.length == 0)) {
            int i2 = iArr[0];
            int m3959U0 = C25225a.m3959U0(iArr);
            int i3 = i2;
            if (1 <= m3959U0) {
                while (true) {
                    i2 *= iArr[i];
                    i3 = i2;
                    if (i == m3959U0) {
                        break;
                    }
                    i++;
                }
            }
            float[] fArr = new float[i3];
            System.arraycopy(this.f2899c, 0, fArr, 0, Math.min(this.f2898b, i3));
            this.f2899c = fArr;
            this.f2898b = i3;
            return;
        }
        throw new UnsupportedOperationException("Empty array can't be reduced.");
    }
}
