package gogolook.callgogolook2.p074ad;

import gogolook.callgogolook2.gson.AdsSettingsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p626l.p632u.C15011h;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� \u001d2\u00020\u0001:\u0001\u001dB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0004R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R$\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/ad/PositionHelper;", "", AdsSettingsKt.KEY_PLACES, "", "", "(Ljava/util/List;)V", "expectedPlaces", "", "expectedPlaces$annotations", "()V", "getExpectedPlaces", "()[I", "originalExpectedPlaces", "<set-?>", "remainingExpectedPlaceCount", "getRemainingExpectedPlaceCount", "()I", "setRemainingExpectedPlaceCount", "(I)V", "hasPlaced", "", "needToPlace", "position", "nextPosition", "positionIndex", "reset", "", "updatePlaces", "placedPosition", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.PositionHelper */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/PositionHelper.class */
public final class PositionHelper {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = "PositionHelper";
    public static final int NOT_FOUND = -1;
    public final int[] expectedPlaces;
    public final int[] originalExpectedPlaces;
    public int remainingExpectedPlaceCount;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/ad/PositionHelper$Companion;", "", "()V", "LOG_TAG", "", "NOT_FOUND", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.PositionHelper$Companion */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/PositionHelper$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    public PositionHelper(List<Integer> list) {
        int i;
        C15149k.m377b(list, AdsSettingsKt.KEY_PLACES);
        List c = C15029u.m532c((Iterable) list);
        ArrayList arrayList = new ArrayList();
        Iterator it = c.iterator();
        while (true) {
            i = 0;
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((Number) next).intValue() > 0 ? true : z) {
                arrayList.add(next);
            }
        }
        List<Number> j = C15029u.m516j(C15029u.m539b((Iterable) arrayList));
        this.expectedPlaces = new int[j.size()];
        this.remainingExpectedPlaceCount = j.size();
        for (Number number : j) {
            int intValue = number.intValue() - i;
            if (intValue > 0) {
                this.expectedPlaces[i] = intValue;
                i++;
            }
        }
        int[] iArr = this.expectedPlaces;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        C15149k.m383a((Object) copyOf, "java.util.Arrays.copyOf(this, size)");
        this.originalExpectedPlaces = copyOf;
    }

    /* renamed from: a */
    public final int m28748a() {
        return this.remainingExpectedPlaceCount;
    }

    /* renamed from: a */
    public final boolean m28747a(int i) {
        return m28743c(i) >= 0;
    }

    /* renamed from: b */
    public final int m28745b(int i) {
        int c = m28743c(i);
        int i2 = c;
        if (c < 0) {
            i2 = c ^ (-1);
        }
        if (i2 >= this.remainingExpectedPlaceCount) {
            return -1;
        }
        return this.expectedPlaces[i2];
    }

    /* renamed from: b */
    public final boolean m28746b() {
        return this.remainingExpectedPlaceCount < this.expectedPlaces.length;
    }

    /* renamed from: c */
    public final int m28743c(int i) {
        return C15011h.m607a(this.expectedPlaces, i, 0, this.remainingExpectedPlaceCount);
    }

    /* renamed from: c */
    public final void m28744c() {
        int[] iArr = this.originalExpectedPlaces;
        System.arraycopy(iArr, 0, this.expectedPlaces, 0, iArr.length);
        this.remainingExpectedPlaceCount = this.expectedPlaces.length;
    }

    /* renamed from: d */
    public final void m28742d(int i) {
        int c = m28743c(i);
        int i2 = c;
        if (c < 0) {
            i2 = c ^ (-1);
        }
        Integer valueOf = Integer.valueOf((this.remainingExpectedPlaceCount - i2) - 1);
        if (!(valueOf.intValue() >= 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            int[] iArr = this.expectedPlaces;
            System.arraycopy(iArr, i2 + 1, iArr, i2, intValue);
            this.remainingExpectedPlaceCount--;
            int i3 = this.remainingExpectedPlaceCount;
            while (i2 < i3) {
                int[] iArr2 = this.expectedPlaces;
                iArr2[i2] = iArr2[i2] + 1;
                i2++;
            }
        }
    }
}
