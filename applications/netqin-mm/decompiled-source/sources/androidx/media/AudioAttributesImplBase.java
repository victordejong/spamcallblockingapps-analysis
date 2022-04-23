package androidx.media;

import java.util.Arrays;
import p012b.p074r.AbstractC1138a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
public class AudioAttributesImplBase implements AbstractC1138a {

    /* renamed from: a */
    public int f1407a;

    /* renamed from: b */
    public int f1408b;

    /* renamed from: c */
    public int f1409c;

    /* renamed from: d */
    public int f1410d;

    /* renamed from: androidx.media.AudioAttributesImplBase$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase$a.class */
    public static class C0237a implements AbstractC1138a.AbstractC1139a {

        /* renamed from: a */
        public int f1411a = 0;

        /* renamed from: b */
        public int f1412b = 0;

        /* renamed from: c */
        public int f1413c = 0;

        /* renamed from: d */
        public int f1414d = -1;

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: a */
        public C0237a mo34591a(int i) {
            if (i != 10) {
                this.f1414d = i;
                return this;
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: a */
        public AbstractC1138a mo34592a() {
            return new AudioAttributesImplBase(this.f1412b, this.f1413c, this.f1411a, this.f1414d);
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: b */
        public C0237a mo34590b(int i) {
            if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
                this.f1412b = i;
            } else {
                this.f1411a = 0;
            }
            return this;
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: c */
        public C0237a mo34589c(int i) {
            this.f1413c = (i & 1023) | this.f1413c;
            return this;
        }

        @Override // p012b.p074r.AbstractC1138a.AbstractC1139a
        /* renamed from: d */
        public C0237a mo34588d(int i) {
            switch (i) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    this.f1411a = i;
                    break;
                case 16:
                    this.f1411a = 12;
                    break;
                default:
                    this.f1411a = 0;
                    break;
            }
            return this;
        }
    }

    public AudioAttributesImplBase() {
        this.f1407a = 0;
        this.f1408b = 0;
        this.f1409c = 0;
        this.f1410d = -1;
    }

    public AudioAttributesImplBase(int i, int i2, int i3, int i4) {
        this.f1407a = 0;
        this.f1408b = 0;
        this.f1409c = 0;
        this.f1410d = -1;
        this.f1408b = i;
        this.f1409c = i2;
        this.f1407a = i3;
        this.f1410d = i4;
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: a */
    public int mo34596a() {
        return this.f1407a;
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: b */
    public int mo34595b() {
        return this.f1408b;
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: c */
    public int mo34594c() {
        return AudioAttributesCompat.m38312a(true, this.f1409c, this.f1407a);
    }

    @Override // p012b.p074r.AbstractC1138a
    /* renamed from: d */
    public int mo34593d() {
        int i;
        int i2 = this.f1409c;
        int e = m38303e();
        if (e == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (e == 7) {
                i = i2 | 1;
            }
        }
        return i & 273;
    }

    /* renamed from: e */
    public int m38303e() {
        int i = this.f1410d;
        return i != -1 ? i : AudioAttributesCompat.m38312a(false, this.f1409c, this.f1407a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        boolean z = false;
        if (this.f1408b == audioAttributesImplBase.mo34595b()) {
            z = false;
            if (this.f1409c == audioAttributesImplBase.mo34593d()) {
                z = false;
                if (this.f1407a == audioAttributesImplBase.mo34596a()) {
                    z = false;
                    if (this.f1410d == audioAttributesImplBase.f1410d) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1408b), Integer.valueOf(this.f1409c), Integer.valueOf(this.f1407a), Integer.valueOf(this.f1410d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f1410d != -1) {
            sb.append(" stream=");
            sb.append(this.f1410d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.m38314a(this.f1407a));
        sb.append(" content=");
        sb.append(this.f1408b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f1409c).toUpperCase());
        return sb.toString();
    }
}
