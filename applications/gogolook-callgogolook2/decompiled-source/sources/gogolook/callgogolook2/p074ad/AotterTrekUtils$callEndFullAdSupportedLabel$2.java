package gogolook.callgogolook2.p074ad;

import com.mopub.nativeads.AotterTrekCustomEvent;
import java.util.Set;
import kotlin.Metadata;
import p626l.p632u.C15012h0;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n��\n\u0002\u0010\"\n\u0002\u0010\u000e\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "", "", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AotterTrekUtils$callEndFullAdSupportedLabel$2 */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AotterTrekUtils$callEndFullAdSupportedLabel$2.class */
public final class AotterTrekUtils$callEndFullAdSupportedLabel$2 extends AbstractC15150l implements AbstractC15107a<Set<? extends String>> {
    public static final AotterTrekUtils$callEndFullAdSupportedLabel$2 INSTANCE = new AotterTrekUtils$callEndFullAdSupportedLabel$2();

    public AotterTrekUtils$callEndFullAdSupportedLabel$2() {
        super(0);
    }

    @Override // p626l.p641z.p642c.AbstractC15107a
    public final Set<? extends String> invoke() {
        return C15012h0.m593b(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_NATIVE_FULL, AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_FULL, AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_CIRCLE);
    }
}
