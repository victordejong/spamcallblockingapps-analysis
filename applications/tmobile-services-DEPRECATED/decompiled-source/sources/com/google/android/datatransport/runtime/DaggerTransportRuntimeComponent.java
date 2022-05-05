package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.TransportRuntimeComponent;
import com.google.android.datatransport.runtime.backends.CreationContextFactory_Factory;
import com.google.android.datatransport.runtime.backends.MetadataBackendRegistry_Factory;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler_Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingConfigModule_ConfigFactory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_DbNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_SchemaVersionFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_StoreConfigFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager_Factory;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.InstanceFactory;
import dagger.internal.Preconditions;
import java.util.concurrent.Executor;
import javax.inject.Provider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/DaggerTransportRuntimeComponent.class */
public final class DaggerTransportRuntimeComponent extends TransportRuntimeComponent {

    /* renamed from: f */
    private Provider<Executor> f6624f;

    /* renamed from: g */
    private Provider<Context> f6625g;

    /* renamed from: h */
    private Provider f6626h;

    /* renamed from: i */
    private Provider f6627i;

    /* renamed from: j */
    private Provider f6628j;

    /* renamed from: k */
    private Provider<SQLiteEventStore> f6629k;

    /* renamed from: l */
    private Provider<SchedulerConfig> f6630l;

    /* renamed from: m */
    private Provider<WorkScheduler> f6631m;

    /* renamed from: n */
    private Provider<DefaultScheduler> f6632n;

    /* renamed from: o */
    private Provider<Uploader> f6633o;

    /* renamed from: p */
    private Provider<WorkInitializer> f6634p;

    /* renamed from: q */
    private Provider<TransportRuntime> f6635q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder.class */
    public static final class Builder implements TransportRuntimeComponent.Builder {

        /* renamed from: a */
        private Context f6636a;

        private Builder() {
        }

        @Override // com.google.android.datatransport.runtime.TransportRuntimeComponent.Builder
        /* renamed from: a */
        public TransportRuntimeComponent mo15407a() {
            Preconditions.m4634a(this.f6636a, Context.class);
            return new DaggerTransportRuntimeComponent(this.f6636a);
        }

        @Override // com.google.android.datatransport.runtime.TransportRuntimeComponent.Builder
        /* renamed from: b */
        public /* bridge */ /* synthetic */ TransportRuntimeComponent.Builder mo15406b(Context context) {
            m15471c(context);
            return this;
        }

        /* renamed from: c */
        public Builder m15471c(Context context) {
            Preconditions.m4633b(context);
            this.f6636a = context;
            return this;
        }
    }

    private DaggerTransportRuntimeComponent(Context context) {
        m15472e(context);
    }

    /* renamed from: d */
    public static TransportRuntimeComponent.Builder m15473d() {
        return new Builder();
    }

    /* renamed from: e */
    private void m15472e(Context context) {
        this.f6624f = DoubleCheck.m4639b(ExecutionModule_ExecutorFactory.m15443a());
        Factory a = InstanceFactory.m4637a(context);
        this.f6625g = a;
        CreationContextFactory_Factory a2 = CreationContextFactory_Factory.m15386a(a, TimeModule_EventClockFactory.m15194a(), TimeModule_UptimeClockFactory.m15191a());
        this.f6626h = a2;
        this.f6627i = DoubleCheck.m4639b(MetadataBackendRegistry_Factory.m15380a(this.f6625g, a2));
        this.f6628j = SchemaManager_Factory.m15199a(this.f6625g, EventStoreModule_DbNameFactory.m15288a(), EventStoreModule_SchemaVersionFactory.m15285a());
        this.f6629k = DoubleCheck.m4639b(SQLiteEventStore_Factory.m15213a(TimeModule_EventClockFactory.m15194a(), TimeModule_UptimeClockFactory.m15191a(), EventStoreModule_StoreConfigFactory.m15282a(), this.f6628j));
        SchedulingConfigModule_ConfigFactory b = SchedulingConfigModule_ConfigFactory.m15359b(TimeModule_EventClockFactory.m15194a());
        this.f6630l = b;
        SchedulingModule_WorkSchedulerFactory a3 = SchedulingModule_WorkSchedulerFactory.m15356a(this.f6625g, this.f6629k, b, TimeModule_UptimeClockFactory.m15191a());
        this.f6631m = a3;
        Provider<Executor> provider = this.f6624f;
        Provider provider2 = this.f6627i;
        Provider<SQLiteEventStore> provider3 = this.f6629k;
        this.f6632n = DefaultScheduler_Factory.m15364a(provider, provider2, a3, provider3, provider3);
        Provider<Context> provider4 = this.f6625g;
        Provider provider5 = this.f6627i;
        Provider<SQLiteEventStore> provider6 = this.f6629k;
        this.f6633o = Uploader_Factory.m15313a(provider4, provider5, provider6, this.f6631m, this.f6624f, provider6, TimeModule_EventClockFactory.m15194a());
        Provider<Executor> provider7 = this.f6624f;
        Provider<SQLiteEventStore> provider8 = this.f6629k;
        this.f6634p = WorkInitializer_Factory.m15306a(provider7, provider8, this.f6631m, provider8);
        this.f6635q = DoubleCheck.m4639b(TransportRuntime_Factory.m15405a(TimeModule_EventClockFactory.m15194a(), TimeModule_UptimeClockFactory.m15191a(), this.f6632n, this.f6633o, this.f6634p));
    }

    @Override // com.google.android.datatransport.runtime.TransportRuntimeComponent
    /* renamed from: a */
    EventStore mo15409a() {
        return this.f6629k.get();
    }

    @Override // com.google.android.datatransport.runtime.TransportRuntimeComponent
    /* renamed from: b */
    TransportRuntime mo15408b() {
        return this.f6635q.get();
    }
}
