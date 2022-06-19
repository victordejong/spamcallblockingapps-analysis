package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
/* loaded from: classes-dex2jar.jar:com/google/firebase/abt/component/zza.class */
final /* synthetic */ class zza implements ComponentFactory {
    static final ComponentFactory zzm = new zza();

    private zza() {
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return new AbtComponent((Context) componentContainer.get(Context.class), (AnalyticsConnector) componentContainer.get(AnalyticsConnector.class));
    }
}
