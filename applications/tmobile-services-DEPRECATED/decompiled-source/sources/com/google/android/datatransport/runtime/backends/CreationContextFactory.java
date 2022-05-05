package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import javax.inject.Inject;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/CreationContextFactory.class */
class CreationContextFactory {

    /* renamed from: a */
    private final Context f6672a;

    /* renamed from: b */
    private final Clock f6673b;

    /* renamed from: c */
    private final Clock f6674c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public CreationContextFactory(Context context, @WallTime Clock clock, @Monotonic Clock clock2) {
        this.f6672a = context;
        this.f6673b = clock;
        this.f6674c = clock2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public CreationContext m15387a(String str) {
        return CreationContext.m15392a(this.f6672a, this.f6673b, this.f6674c, str);
    }
}
