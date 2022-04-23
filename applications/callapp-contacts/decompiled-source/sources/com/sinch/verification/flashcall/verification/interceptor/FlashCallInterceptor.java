package com.sinch.verification.flashcall.verification.interceptor;

import android.content.ContentResolver;
import android.content.Context;
import android.telephony.TelephonyManager;
import com.sinch.logging.Logger;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.internal.error.CodeInterceptionException;
import com.sinch.verification.core.internal.pattern.PatternMatcher;
import com.sinch.verification.core.verification.interceptor.BasicCodeInterceptor;
import com.sinch.verification.core.verification.interceptor.CodeInterceptionListener;
import com.sinch.verification.core.verification.model.VerificationSourceType;
import com.sinch.verification.flashcall.verification.callhistory.CallHistoryChangeListener;
import com.sinch.verification.flashcall.verification.callhistory.CallHistoryReader;
import com.sinch.verification.flashcall.verification.callhistory.SinchCallHistoryChangeObserver;
import java.util.Date;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\b\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0002J\b\u00104\u001a\u00020.H\u0016J\u0010\u00105\u001a\u00020.2\u0006\u00100\u001a\u000201H\u0016J\b\u00106\u001a\u00020.H\u0016J\b\u00107\u001a\u00020.H\u0016J\b\u00108\u001a\u00020.H\u0016R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u001f\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0017\u001a\u0004\b!\u0010\"R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u0017\u001a\u0004\b*\u0010+¨\u00069"}, d2 = {"Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;", "Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;", "Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;", "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;", "context", "Landroid/content/Context;", "flashCallPatternMatcher", "Lcom/sinch/verification/core/internal/pattern/PatternMatcher;", "callHistoryReader", "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;", "callHistoryStartDate", "Ljava/util/Date;", "reportTimeout", "", "interceptionTimeout", "interceptionListener", "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;", "(Landroid/content/Context;Lcom/sinch/verification/core/internal/pattern/PatternMatcher;Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;Ljava/util/Date;JJLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;)V", "callHistoryContentObserver", "Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;", "getCallHistoryContentObserver", "()Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;", "callHistoryContentObserver$delegate", "Lkotlin/Lazy;", "<set-?>", "Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;", "codeInterceptionState", "getCodeInterceptionState", "()Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;", "delayedStopRunnable", "Ljava/lang/Runnable;", "flashCallStateListener", "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;", "getFlashCallStateListener", "()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;", "flashCallStateListener$delegate", "shouldInterceptorStopWhenTimedOut", "", "getShouldInterceptorStopWhenTimedOut", "()Z", "telephonyManager", "Landroid/telephony/TelephonyManager;", "getTelephonyManager", "()Landroid/telephony/TelephonyManager;", "telephonyManager$delegate", "checkCallLog", "", "codeIntercepted", "number", "", "sourceType", "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "onCallHistoryChanged", "onIncomingCallRinging", "onInterceptorStarted", "onInterceptorStopped", "onInterceptorTimedOut", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor.class */
public final class FlashCallInterceptor extends BasicCodeInterceptor implements CallHistoryChangeListener, IncomingCallListener {
    private final Lazy callHistoryContentObserver$delegate;
    private final CallHistoryReader callHistoryReader;
    private Date callHistoryStartDate;
    private CodeInterceptionState codeInterceptionState;
    private final Context context;
    private final Runnable delayedStopRunnable;
    private final PatternMatcher flashCallPatternMatcher;
    private final Lazy flashCallStateListener$delegate;
    private final long reportTimeout;
    private final Lazy telephonyManager$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallInterceptor(Context context, PatternMatcher flashCallPatternMatcher, CallHistoryReader callHistoryReader, Date callHistoryStartDate, long j, long j2, CodeInterceptionListener interceptionListener) {
        super(j2, interceptionListener, VerificationMethodType.FLASHCALL);
        p.c(context, "context");
        p.c(flashCallPatternMatcher, "flashCallPatternMatcher");
        p.c(callHistoryReader, "callHistoryReader");
        p.c(callHistoryStartDate, "callHistoryStartDate");
        p.c(interceptionListener, "interceptionListener");
        this.context = context;
        this.flashCallPatternMatcher = flashCallPatternMatcher;
        this.callHistoryReader = callHistoryReader;
        this.callHistoryStartDate = callHistoryStartDate;
        this.reportTimeout = j;
        if (j2 <= j) {
            this.telephonyManager$delegate = h.a(new FlashCallInterceptor$telephonyManager$2(this));
            this.flashCallStateListener$delegate = h.a(new FlashCallInterceptor$flashCallStateListener$2(this));
            this.callHistoryContentObserver$delegate = h.a(new FlashCallInterceptor$callHistoryContentObserver$2(this));
            this.delayedStopRunnable = new Runnable() { // from class: com.sinch.verification.flashcall.verification.interceptor.FlashCallInterceptor$delayedStopRunnable$1
                @Override // java.lang.Runnable
                public final void run() {
                    FlashCallInterceptor.this.stop();
                }
            };
            this.codeInterceptionState = CodeInterceptionState.NONE;
            return;
        }
        throw new CodeInterceptionException("Interception timeout cannot be greater then report timeout");
    }

    private final void checkCallLog() {
        long time = this.callHistoryStartDate.getTime();
        Logger logger = getLogger();
        Object obj = null;
        Logger.DefaultImpls.debug$default(logger, "Checking call history since " + this.callHistoryStartDate, null, 2, null);
        this.callHistoryStartDate = new Date();
        Iterator<T> it2 = this.callHistoryReader.readIncomingCalls(time).iterator();
        while (it2.hasNext()) {
            obj = it2.next();
            if (this.flashCallPatternMatcher.matches((String) obj)) {
                break;
            }
        }
        String str = (String) obj;
        if (str != null) {
            codeIntercepted(str, VerificationSourceType.LOG);
        }
    }

    private final void codeIntercepted(String str, VerificationSourceType verificationSourceType) {
        this.codeInterceptionState = isPastInterceptionTimeout() ? CodeInterceptionState.LATE : CodeInterceptionState.NORMAL;
        if (!isPastInterceptionTimeout()) {
            getInterceptionListener().onCodeIntercepted(str, verificationSourceType);
        }
        stop();
    }

    private final SinchCallHistoryChangeObserver getCallHistoryContentObserver() {
        return (SinchCallHistoryChangeObserver) this.callHistoryContentObserver$delegate.a();
    }

    private final FlashCallStateListener getFlashCallStateListener() {
        return (FlashCallStateListener) this.flashCallStateListener$delegate.a();
    }

    private final TelephonyManager getTelephonyManager() {
        return (TelephonyManager) this.telephonyManager$delegate.a();
    }

    public final CodeInterceptionState getCodeInterceptionState() {
        return this.codeInterceptionState;
    }

    @Override // com.sinch.verification.core.verification.interceptor.BasicCodeInterceptor
    public final boolean getShouldInterceptorStopWhenTimedOut() {
        return false;
    }

    @Override // com.sinch.verification.flashcall.verification.callhistory.CallHistoryChangeListener
    public final void onCallHistoryChanged() {
        checkCallLog();
    }

    @Override // com.sinch.verification.flashcall.verification.interceptor.IncomingCallListener
    public final void onIncomingCallRinging(String number) {
        p.c(number, "number");
        if (this.flashCallPatternMatcher.matches(number)) {
            codeIntercepted(number, VerificationSourceType.INTERCEPTION);
        }
    }

    @Override // com.sinch.verification.core.verification.interceptor.BasicCodeInterceptor
    public final void onInterceptorStarted() {
        getTelephonyManager().listen(getFlashCallStateListener(), 32);
        SinchCallHistoryChangeObserver callHistoryContentObserver = getCallHistoryContentObserver();
        ContentResolver contentResolver = this.context.getContentResolver();
        p.a((Object) contentResolver, "context.contentResolver");
        callHistoryContentObserver.registerOn(contentResolver);
        checkCallLog();
    }

    @Override // com.sinch.verification.core.verification.interceptor.BasicCodeInterceptor
    public final void onInterceptorStopped() {
        getCancelHandler().removeCallbacks(this.delayedStopRunnable);
        getTelephonyManager().listen(getFlashCallStateListener(), 0);
        SinchCallHistoryChangeObserver callHistoryContentObserver = getCallHistoryContentObserver();
        ContentResolver contentResolver = this.context.getContentResolver();
        p.a((Object) contentResolver, "context.contentResolver");
        callHistoryContentObserver.unregisterFrom(contentResolver);
    }

    @Override // com.sinch.verification.core.verification.interceptor.BasicCodeInterceptor
    public final void onInterceptorTimedOut() {
        long interceptionTimeout = this.reportTimeout - getInterceptionTimeout();
        Logger logger = getLogger();
        Logger.DefaultImpls.debug$default(logger, "onInterceptorTimedOut, still reporting calls for " + interceptionTimeout + " ms", null, 2, null);
        getCancelHandler().postDelayed(this.delayedStopRunnable, interceptionTimeout);
    }
}
