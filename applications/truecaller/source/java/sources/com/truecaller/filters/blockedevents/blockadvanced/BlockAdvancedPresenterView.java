package com.truecaller.filters.blockedevents.blockadvanced;
/* loaded from: classes9-dex2jar.jar:com/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView.class */
public interface BlockAdvancedPresenterView {

    /* loaded from: classes9-dex2jar.jar:com/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType.class */
    public enum AdvancedType {
        STARTS_WITH,
        CONTAINS,
        ENDS_WITH
    }

    /* renamed from: N */
    void mo19691N(boolean z);

    /* renamed from: O7 */
    AdvancedType mo19690O7();

    /* renamed from: R1 */
    void mo19689R1(boolean z);

    void finish();

    /* renamed from: t2 */
    String mo19688t2();

    /* renamed from: x */
    void mo19687x();
}
