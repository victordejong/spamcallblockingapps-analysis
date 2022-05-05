package com.hiya.stingray.util.p005i0;
/* renamed from: com.hiya.stingray.util.i0.d */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i0/d.class */
public final class C0112d {

    /* renamed from: a */
    private EnumC0113a f203a;

    /* renamed from: com.hiya.stingray.util.i0.d$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i0/d$a.class */
    public enum EnumC0113a {
        FULL_REFRESH,
        BLOCK_STATUS_ONLY,
        FETCH_MISSING_CALL_LOGS,
        BINDINGS_ONLY
    }

    public C0112d(EnumC0113a aVar) {
        this.f203a = aVar;
    }

    /* renamed from: a */
    public EnumC0113a m963a() {
        return this.f203a;
    }
}
