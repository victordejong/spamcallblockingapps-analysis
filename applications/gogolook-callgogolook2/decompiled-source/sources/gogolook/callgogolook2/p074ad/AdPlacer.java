package gogolook.callgogolook2.p074ad;

import androidx.exifinterface.media.ExifInterface;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \"*\u0004\b��\u0010\u00012\u00020\u0002:\u0001\"B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002JW\u0010\u0017\u001a\u00020\u00072\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028��0\u00192\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2/\u0010\u001c\u001a+\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\u001b\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u0007\u0018\u00010 0\u001dH\u0002J]\u0010!\u001a\u00020\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028��0\u00192\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2/\u0010\u001c\u001a+\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\u001b\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u0007\u0018\u00010 0\u001dR\u0011\u0010\u0006\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdPlacer;", ExifInterface.GPS_DIRECTION_TRUE, "", "positionHelper", "Lgogolook/callgogolook2/ad/PositionHelper;", "(Lgogolook/callgogolook2/ad/PositionHelper;)V", "hasPlacedAds", "", "getHasPlacedAds", "()Z", "checkAndShowPlacedDebugToast", "", "placedPosition", "", "remainingPlaceCount", "fromCache", "needToPlaceAdInRange", "start", "end", "reset", "showDebugToast", "message", "", "tryPlaceAd", "list", "", VastIconXmlManager.OFFSET, "position", "getAd", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlin/Pair;", "tryPlaceAdInRange", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdPlacer */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdPlacer.class */
public final class AdPlacer<T> {
    public static final int BUFFER = 6;
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = "AdPlacer";
    public final PositionHelper positionHelper;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdPlacer$Companion;", "", "()V", "BUFFER", "", "LOG_TAG", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdPlacer$Companion */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdPlacer$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    public AdPlacer(PositionHelper positionHelper) {
        C15149k.m377b(positionHelper, "positionHelper");
        this.positionHelper = positionHelper;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
        if (r0 < 0) goto L_0x003b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m28858a(int r4, int r5) {
        /*
            r3 = this;
            r0 = r3
            gogolook.callgogolook2.ad.PositionHelper r0 = r0.positionHelper
            r1 = r4
            int r0 = r0.m28743c(r1)
            r4 = r0
            r0 = r3
            gogolook.callgogolook2.ad.PositionHelper r0 = r0.positionHelper
            r1 = r5
            int r0 = r0.m28743c(r1)
            r6 = r0
            r0 = r4
            if (r0 < 0) goto L_0x0023
            r0 = r6
            if (r0 < 0) goto L_0x0023
            r0 = r6
            r1 = r4
            int r0 = r0 - r1
            r1 = 1
            int r0 = r0 + r1
            r4 = r0
            goto L_0x0047
        L_0x0023:
            r0 = r4
            if (r0 >= 0) goto L_0x0032
            r0 = r6
            if (r0 >= 0) goto L_0x0032
            r0 = r4
            r1 = -1
            r0 = r0 ^ r1
            r4 = r0
            goto L_0x003b
        L_0x0032:
            r0 = r4
            r7 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 >= 0) goto L_0x0042
        L_0x003b:
            r0 = r6
            r1 = -1
            r0 = r0 ^ r1
            r5 = r0
            r0 = r4
            r7 = r0
        L_0x0042:
            r0 = r5
            r1 = r7
            int r0 = r0 - r1
            r4 = r0
        L_0x0047:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.p074ad.AdPlacer.m28858a(int, int):int");
    }

    /* renamed from: a */
    public final int m28856a(List<T> list, int i, int i2, int i3, AbstractC15118l<? super Integer, ? extends C14978j<? extends T, Boolean>> lVar) {
        C15149k.m377b(list, "list");
        C15149k.m377b(lVar, "getAd");
        int i4 = i2;
        if (i2 >= list.size()) {
            i4 = list.size() - 6;
        }
        int i5 = i3;
        if (i3 - i4 < 6) {
            i5 = i4 + 6;
        }
        int i6 = 0;
        while (i4 != -1 && i4 <= i5 && i4 <= list.size()) {
            i6 = i6;
            if (this.positionHelper.m28747a(i4)) {
                if (!m28855a(list, i, i4, lVar)) {
                    return i6;
                }
                i6++;
            }
            i4 = this.positionHelper.m28745b(i4);
        }
        return i6;
    }

    /* renamed from: a */
    public final void m28857a(int i, int i2, boolean z) {
    }

    /* renamed from: a */
    public final boolean m28859a() {
        return this.positionHelper.m28746b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final boolean m28855a(List<T> list, int i, int i2, AbstractC15118l<? super Integer, ? extends C14978j<? extends T, Boolean>> lVar) {
        boolean z = true;
        int i3 = (i + i2) - 1;
        if (i3 > list.size()) {
            return false;
        }
        int c = this.positionHelper.m28743c(i2) + i2;
        C14978j jVar = (C14978j) lVar.invoke(Integer.valueOf(c));
        if (jVar != null) {
            Object a = jVar.m661a();
            boolean booleanValue = ((Boolean) jVar.m660b()).booleanValue();
            list.add(i3, a);
            this.positionHelper.m28742d(i2);
            m28857a(c, this.positionHelper.m28748a(), booleanValue);
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final void m28854b() {
        this.positionHelper.m28744c();
    }
}
