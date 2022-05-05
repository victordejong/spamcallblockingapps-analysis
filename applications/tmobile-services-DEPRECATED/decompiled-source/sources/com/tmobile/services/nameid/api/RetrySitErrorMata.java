package com.tmobile.services.nameid.api;

import android.content.Context;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.utility.HeaderInterceptor;
import com.tmobile.services.nameid.utility.IamWrapper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.UUID;
import retrofit2.HttpException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/RetrySitErrorMata.class */
public class RetrySitErrorMata implements Function<Observable<? extends Throwable>, Observable<?>> {

    /* renamed from: g */
    private String f13245g;

    /* renamed from: f */
    private boolean f13244f = false;

    /* renamed from: h */
    private boolean f13246h = false;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/RetrySitErrorMata$RetrySitForMataException.class */
    public class RetrySitForMataException extends Exception {
        RetrySitForMataException(RetrySitErrorMata retrySitErrorMata, String str) {
            super(str);
        }
    }

    public RetrySitErrorMata() {
        this.f13245g = "";
        this.f13245g = UUID.randomUUID().toString();
    }

    public RetrySitErrorMata(String str) {
        this.f13245g = "";
        this.f13245g = str;
    }

    /* renamed from: b */
    private Observable<Boolean> m6686b() {
        synchronized (this) {
            if (this.f13246h) {
                LogUtil.m5632o("RetrySitErrorMata#doRetryGetSit", "Already getting sit, returning");
                return null;
            }
            this.f13246h = true;
            final Context l = MainApplication.m7528l();
            if (l == null) {
                LogUtil.m5632o("RetrySitErrorMata#", "Wanted to get new SIT, but context was null");
                return null;
            }
            TmoApiWrapper.f13249c++;
            LogUtil.m5632o("RetrySitErrorMata#", "Getting new SIT");
            return Observable.create(new ObservableOnSubscribe() { // from class: com.tmobile.services.nameid.api.d2
                @Override // io.reactivex.ObservableOnSubscribe
                /* renamed from: a */
                public final void mo2504a(ObservableEmitter observableEmitter) {
                    RetrySitErrorMata.this.m6684d(l, observableEmitter);
                }
            });
        }
    }

    /* renamed from: a */
    public Observable<?> apply(Observable<? extends Throwable> observable) {
        return observable.flatMap(new Function() { // from class: com.tmobile.services.nameid.api.f2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return RetrySitErrorMata.this.m6685c((Throwable) obj);
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ ObservableSource m6685c(Throwable th) throws Exception {
        boolean z = false;
        boolean z2 = (th instanceof HttpException) && ((HttpException) th).code() == 403;
        boolean z3 = th instanceof HeaderInterceptor.MissingTokenException;
        boolean z4 = th instanceof HeaderInterceptor.MissingMsisdnException;
        if (z2 || z3 || z4) {
            z = true;
        }
        LogUtil.m5632o("RetrySitErrorMata#", " http403? " + z2 + " handledHere?  missingToken? " + z3 + " missingMsisdn? " + z4 + z + " alreadyRetried? " + this.f13244f);
        StringBuilder sb = new StringBuilder();
        sb.append("throwable: ");
        sb.append(th.toString());
        LogUtil.m5632o("RetrySitErrorMata#", sb.toString());
        if (this.f13244f || !z) {
            LogUtil.m5632o("RetrySitErrorMata#", "retried? " + this.f13244f + " or error? " + z + " so throwing");
            this.f13244f = true;
            return Observable.error(th);
        }
        this.f13244f = true;
        LogUtil.m5632o("RetrySitErrorMata#", "encountered sit auth error");
        LogUtil.m5632o("RetrySitErrorMata#", "SIT expired " + PreferenceUtils.m5390g("PREF_SIT_EXPIRATION") + " token was " + PreferenceUtils.m5390g("PREF_SIT"));
        PreferenceUtils.m5383n("PREF_SIT", "");
        Observable<Boolean> b = m6686b();
        Observable<Boolean> observable = b;
        if (b == null) {
            observable = null;
        }
        return observable;
    }

    /* renamed from: d */
    public /* synthetic */ void m6684d(Context context, final ObservableEmitter observableEmitter) throws Exception {
        IamWrapper.m5683e(context, true, this.f13245g).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.e2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RetrySitErrorMata.this.m6683e(observableEmitter, (IamWrapper.IamResponse) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.api.g2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RetrySitErrorMata.this.m6682f(observableEmitter, (Throwable) obj);
            }
        });
    }

    /* renamed from: e */
    public /* synthetic */ void m6683e(ObservableEmitter observableEmitter, IamWrapper.IamResponse iamResponse) throws Exception {
        this.f13246h = false;
        if (iamResponse == IamWrapper.IamResponse.SUCCESS) {
            LogUtil.m5632o("RetrySitErrorMata#", "Got new SIT, retrying request with it.");
            observableEmitter.onNext(Boolean.TRUE);
            return;
        }
        LogUtil.m5632o("RetrySitErrorMata#", "Got SIT library reply but an error occurred");
        observableEmitter.onError(new RetrySitForMataException(this, "SIT return was not valid"));
    }

    /* renamed from: f */
    public /* synthetic */ void m6682f(ObservableEmitter observableEmitter, Throwable th) throws Exception {
        this.f13246h = false;
        LogUtil.m5641f("RetrySitErrorMata#", "Got SIT fail", th);
        observableEmitter.onError(new RetrySitForMataException(this, "SIT return was not valid"));
    }
}
