package zendesk.support;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule_ProvideMetadataFactory.class */
public final class SupportApplicationModule_ProvideMetadataFactory implements AbstractC10866b<SupportSdkMetadata> {
    public final Provider<Context> contextProvider;
    public final SupportApplicationModule module;

    public SupportApplicationModule_ProvideMetadataFactory(SupportApplicationModule supportApplicationModule, Provider<Context> provider) {
        this.module = supportApplicationModule;
        this.contextProvider = provider;
    }

    public static SupportApplicationModule_ProvideMetadataFactory create(SupportApplicationModule supportApplicationModule, Provider<Context> provider) {
        return new SupportApplicationModule_ProvideMetadataFactory(supportApplicationModule, provider);
    }

    public static SupportSdkMetadata provideMetadata(SupportApplicationModule supportApplicationModule, Context context) {
        SupportSdkMetadata provideMetadata = supportApplicationModule.provideMetadata(context);
        C10867c.m10383a(provideMetadata, "Cannot return null from a non-@Nullable @Provides method");
        return provideMetadata;
    }

    @Override // javax.inject.Provider
    public SupportSdkMetadata get() {
        return provideMetadata(this.module, this.contextProvider.get());
    }
}
