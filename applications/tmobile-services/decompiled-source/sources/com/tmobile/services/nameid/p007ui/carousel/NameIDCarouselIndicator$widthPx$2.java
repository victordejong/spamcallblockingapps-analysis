package com.tmobile.services.nameid.p007ui.carousel;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.carousel.NameIDCarouselIndicator$widthPx$2 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator$widthPx$2.class */
public final class NameIDCarouselIndicator$widthPx$2 extends Lambda implements Function0<Integer> {

    /* renamed from: f */
    final /* synthetic */ NameIDCarouselIndicator f13916f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NameIDCarouselIndicator$widthPx$2(NameIDCarouselIndicator nameIDCarouselIndicator) {
        super(0);
        this.f13916f = nameIDCarouselIndicator;
    }

    /* renamed from: b */
    public final int m6186b() {
        int paddingPx;
        paddingPx = this.f13916f.getPaddingPx();
        return paddingPx * 3;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Integer invoke() {
        return Integer.valueOf(m6186b());
    }
}
