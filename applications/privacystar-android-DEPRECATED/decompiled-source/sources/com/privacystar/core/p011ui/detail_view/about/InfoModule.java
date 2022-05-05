package com.privacystar.core.p011ui.detail_view.about;

import android.content.Context;
import com.privacystar.core.PSApplication;
import dagger.Module;
import dagger.Provides;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Named;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\b\u0007\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/about/InfoModule;", "", "()V", "provideInfoItems", "", "Lcom/privacystar/core/ui/detail_view/about/AboutInfoItem;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
@Module
/* renamed from: com.privacystar.core.ui.detail_view.about.InfoModule */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/InfoModule.class */
public final class InfoModule {
    @Provides
    @Named("aboutInfoItems")
    @NotNull
    @Singleton
    public final List<AboutInfoItem> provideInfoItems() {
        Context context = PSApplication.context();
        ArrayList arrayList = new ArrayList();
        InfoItemRepository infoItemRepository = InfoItemRepository.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        arrayList.add(infoItemRepository.getApkVersionInfoItem$app_core(context));
        arrayList.add(InfoItemRepository.INSTANCE.getDevicePinInfoItem$app_core(context));
        return arrayList;
    }
}
