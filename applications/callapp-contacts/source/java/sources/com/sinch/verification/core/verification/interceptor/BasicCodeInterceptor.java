package com.sinch.verification.core.verification.interceptor;

import android.os.Handler;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.C18531w;
import kotlin.properties.AbstractC18544b;
import kotlin.properties.C18543a;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\b&\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010(\u001a\u00020)H\u0002J\b\u0010*\u001a\u00020)H&J\b\u0010+\u001a\u00020)H&J\b\u0010,\u001a\u00020)H&J\u0006\u0010-\u001a\u00020)J\u0006\u0010.\u001a\u00020)R\u0014\u0010\t\u001a\u00020\nX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R+\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00038V@VX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001dX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u001aX\u0096D¢\u0006\b\n��\u001a\u0004\b#\u0010\u001bR\u001e\u0010%\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020$@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b&\u0010'¨\u0006/"}, m4298d2 = {"Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;", "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;", "timeoutInitial", "", "interceptionListener", "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "(JLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;Lcom/sinch/verification/core/internal/VerificationMethodType;)V", "cancelHandler", "Landroid/os/Handler;", "getCancelHandler", "()Landroid/os/Handler;", "delayedStopRunnable", "Ljava/lang/Runnable;", "getInterceptionListener", "()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;", "<set-?>", "interceptionTimeout", "getInterceptionTimeout", "()J", "setInterceptionTimeout", "(J)V", "interceptionTimeout$delegate", "Lkotlin/properties/ReadWriteProperty;", "isPastInterceptionTimeout", "", "()Z", "logger", "Lcom/sinch/logging/Logger;", "getLogger", "()Lcom/sinch/logging/Logger;", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "shouldInterceptorStopWhenTimedOut", "getShouldInterceptorStopWhenTimedOut", "Lcom/sinch/verification/core/verification/interceptor/InterceptorState;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "getState", "()Lcom/sinch/verification/core/verification/interceptor/InterceptorState;", "initializeCancelHandler", "", "onInterceptorStarted", "onInterceptorStopped", "onInterceptorTimedOut", EventConstants.START, "stop", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/interceptor/BasicCodeInterceptor.class */
public abstract class BasicCodeInterceptor implements CodeInterceptor {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {C18496ac.m3884a(new C18531w(C18496ac.m3882b(BasicCodeInterceptor.class), "interceptionTimeout", "getInterceptionTimeout()J"))};
    private final CodeInterceptionListener interceptionListener;
    private final ReadWriteProperty interceptionTimeout$delegate;
    private final VerificationMethodType method;
    private final Handler cancelHandler = new Handler();
    private final Logger logger = LogKt.logger(this);
    private InterceptorState state = InterceptorState.IDLE;
    private final boolean shouldInterceptorStopWhenTimedOut = true;
    private final Runnable delayedStopRunnable = new Runnable() { // from class: com.sinch.verification.core.verification.interceptor.BasicCodeInterceptor$delayedStopRunnable$1
        @Override // java.lang.Runnable
        public final void run() {
            BasicCodeInterceptor.this.state = InterceptorState.REPORTING;
            if (BasicCodeInterceptor.this.getShouldInterceptorStopWhenTimedOut()) {
                BasicCodeInterceptor.this.stop();
            }
            BasicCodeInterceptor.this.getInterceptionListener().onCodeInterceptionError(new CodeInterceptionTimeoutException());
            BasicCodeInterceptor.this.onInterceptorTimedOut();
        }
    };

    public BasicCodeInterceptor(long j, CodeInterceptionListener interceptionListener, VerificationMethodType method) {
        C18524p.m3841c(interceptionListener, "interceptionListener");
        C18524p.m3841c(method, "method");
        this.interceptionListener = interceptionListener;
        this.method = method;
        C18543a c18543a = C18543a.f63629a;
        final Long valueOf = Long.valueOf(j);
        this.interceptionTimeout$delegate = new AbstractC18544b<Long>(valueOf) { // from class: com.sinch.verification.core.verification.interceptor.BasicCodeInterceptor$$special$$inlined$observable$1
            @Override // kotlin.properties.AbstractC18544b
            public final void afterChange(KProperty<?> property, Long l, Long l2) {
                C18524p.m3841c(property, "property");
                l2.longValue();
                l.longValue();
                if (this.getState() == InterceptorState.STARTED) {
                    this.initializeCancelHandler();
                }
            }
        };
    }

    public final void initializeCancelHandler() {
        if (this.state != InterceptorState.DONE) {
            Logger logger = this.logger;
            Logger.DefaultImpls.debug$default(logger, "Cancel handler initialized with timeout: " + getInterceptionTimeout(), null, 2, null);
            this.cancelHandler.removeCallbacks(this.delayedStopRunnable);
            this.cancelHandler.postDelayed(this.delayedStopRunnable, getInterceptionTimeout());
        }
    }

    public final Handler getCancelHandler() {
        return this.cancelHandler;
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptor
    public CodeInterceptionListener getInterceptionListener() {
        return this.interceptionListener;
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptor
    public long getInterceptionTimeout() {
        return ((Number) this.interceptionTimeout$delegate.getValue(this, $$delegatedProperties[0])).longValue();
    }

    public final Logger getLogger() {
        return this.logger;
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptor
    public final VerificationMethodType getMethod() {
        return this.method;
    }

    public boolean getShouldInterceptorStopWhenTimedOut() {
        return this.shouldInterceptorStopWhenTimedOut;
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptor
    public final InterceptorState getState() {
        return this.state;
    }

    public final boolean isPastInterceptionTimeout() {
        return this.state == InterceptorState.REPORTING || this.state == InterceptorState.DONE;
    }

    public abstract void onInterceptorStarted();

    public abstract void onInterceptorStopped();

    public abstract void onInterceptorTimedOut();

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptor
    public void setInterceptionTimeout(long j) {
        this.interceptionTimeout$delegate.setValue(this, $$delegatedProperties[0], Long.valueOf(j));
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptor
    public final void start() {
        if (this.state != InterceptorState.IDLE) {
            Logger.DefaultImpls.debug$default(this.logger, "Interceptor already started", null, 2, null);
            return;
        }
        Logger.DefaultImpls.debug$default(this.logger, "Code interceptor started", null, 2, null);
        this.state = InterceptorState.STARTED;
        initializeCancelHandler();
        onInterceptorStarted();
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptor
    public final void stop() {
        if (this.state == InterceptorState.DONE) {
            Logger.DefaultImpls.debug$default(this.logger, "Interceptor already stopped", null, 2, null);
            return;
        }
        Logger.DefaultImpls.debug$default(this.logger, "Code interceptor stopped", null, 2, null);
        this.state = InterceptorState.DONE;
        this.cancelHandler.removeCallbacks(this.delayedStopRunnable);
        onInterceptorStopped();
        getInterceptionListener().onCodeInterceptionStopped();
    }
}
