package com.criteo.publisher;

import com.criteo.publisher.logging.C8400e;
import com.criteo.publisher.model.AdUnit;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.criteo.publisher.w */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/w.class */
public final class C8530w {

    /* renamed from: com.criteo.publisher.w$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/w$a.class */
    public static final class C8531a extends AbstractC18526r implements Function1<AdUnit, String> {

        /* renamed from: a */
        public static final C8531a f30393a = new C8531a();

        C8531a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(AdUnit adUnit) {
            AdUnit it2 = adUnit;
            C18524p.m3841c(it2, "it");
            return "- ".concat(String.valueOf(it2));
        }
    }

    static {
        new C8530w();
    }

    private C8530w() {
    }

    /* renamed from: a */
    public static final C8400e m25366a() {
        return new C8400e(0, "Unsupported Android version, Criteo SDK is deactivated and won't do anything", null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25365a(CriteoInitException criteoInitException) {
        C18524p.m3841c(criteoInitException, "criteoInitException");
        return new C8400e(6, null, criteoInitException, "onErrorDuringSdkInitialization");
    }

    /* renamed from: a */
    public static final C8400e m25364a(String cpId, List<? extends AdUnit> adUnits, String version) {
        C18524p.m3841c(cpId, "cpId");
        C18524p.m3841c(adUnits, "adUnits");
        C18524p.m3841c(version, "version");
        return new C8400e(0, "Criteo SDK version " + version + " is initialized with Publisher ID " + cpId + " and " + adUnits.size() + " ad units:\n" + C18282n.m4148a(adUnits, StringUtils.f67179LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C8531a.f30393a, 30), null, null, 13, null);
    }

    /* renamed from: b */
    public static final C8400e m25363b() {
        return new C8400e(0, "Criteo SDK initialization method cannot be called more than once. Please ignore this if you are using a mediation adapter.", null, null, 13, null);
    }
}
