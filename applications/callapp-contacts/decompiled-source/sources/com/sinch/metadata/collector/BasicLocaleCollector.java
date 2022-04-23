package com.sinch.metadata.collector;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.sinch.verification.utils.api.ApiLevelUtils;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/sinch/metadata/collector/BasicLocaleCollector;", "Lcom/sinch/metadata/collector/MetadataCollector;", "", "Lcom/sinch/metadata/collector/LocaleCollector;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "collect", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicLocaleCollector.class */
public final class BasicLocaleCollector implements MetadataCollector<String> {
    private final Context context;

    public BasicLocaleCollector(Context context) {
        p.c(context, "context");
        this.context = context;
    }

    @Override // com.sinch.metadata.collector.MetadataCollector
    public final String collect() {
        Locale locale;
        if (ApiLevelUtils.INSTANCE.isApi24OrLater()) {
            Resources resources = this.context.getResources();
            p.a((Object) resources, "context.resources");
            Configuration configuration = resources.getConfiguration();
            p.a((Object) configuration, "context.resources.configuration");
            locale = configuration.getLocales().get(0);
        } else {
            Resources resources2 = this.context.getResources();
            p.a((Object) resources2, "context.resources");
            locale = resources2.getConfiguration().locale;
        }
        String locale2 = locale.toString();
        p.a((Object) locale2, "if (ApiLevelUtils.isApi2…n.locale\n    }.toString()");
        return locale2;
    }
}
