package com.truecaller.social_media.domain.data;

import androidx.annotation.Keep;
import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.List;
import kotlin.Metadata;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018��2\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\b\u0010\tR\u001f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;", "", "", "Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;", DTBMetricsConfiguration.CONFIG_DIR, "Ljava/util/List;", "getConfig", "()Ljava/util/List;", "<init>", "(Ljava/util/List;)V", "social-media_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes13-dex2jar.jar:com/truecaller/social_media/domain/data/TCNewsLinksConfig.class */
public class TCNewsLinksConfig {
    private final List<TCNewsLinksForRegion> config;

    public TCNewsLinksConfig() {
        this(null, 1, null);
    }

    public TCNewsLinksConfig(List<TCNewsLinksForRegion> list) {
        l.e(list, DTBMetricsConfiguration.CONFIG_DIR);
        this.config = list;
    }

    public /* synthetic */ TCNewsLinksConfig(List list, int i, f fVar) {
        this((i & 1) != 0 ? s.a : list);
    }

    public final List<TCNewsLinksForRegion> getConfig() {
        return this.config;
    }
}
