package com.criteo.publisher;

import com.criteo.publisher.logging.e;
import com.criteo.publisher.model.AdUnit;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/w.class */
public final class w {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/w$a.class */
    public static final class a extends r implements Function1<AdUnit, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17663a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(AdUnit adUnit) {
            AdUnit it2 = adUnit;
            p.c(it2, "it");
            return "- ".concat(String.valueOf(it2));
        }
    }

    static {
        new w();
    }

    private w() {
    }

    public static final e a() {
        return new e(0, "Unsupported Android version, Criteo SDK is deactivated and won't do anything", null, null, 13, null);
    }

    public static final e a(CriteoInitException criteoInitException) {
        p.c(criteoInitException, "criteoInitException");
        return new e(6, null, criteoInitException, "onErrorDuringSdkInitialization");
    }

    public static final e a(String cpId, List<? extends AdUnit> adUnits, String version) {
        p.c(cpId, "cpId");
        p.c(adUnits, "adUnits");
        p.c(version, "version");
        return new e(0, "Criteo SDK version " + version + " is initialized with Publisher ID " + cpId + " and " + adUnits.size() + " ad units:\n" + n.a(adUnits, StringUtils.LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, a.f17663a, 30), null, null, 13, null);
    }

    public static final e b() {
        return new e(0, "Criteo SDK initialization method cannot be called more than once. Please ignore this if you are using a mediation adapter.", null, null, 13, null);
    }
}
