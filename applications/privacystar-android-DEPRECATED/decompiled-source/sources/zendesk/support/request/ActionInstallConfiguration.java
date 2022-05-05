package zendesk.support.request;

import java.util.concurrent.Executor;
import zendesk.suas.Dispatcher;
import zendesk.suas.GetState;
import zendesk.support.SupportBlipsProvider;
import zendesk.support.SupportUiStorage;
import zendesk.support.request.AsyncMiddleware;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionInstallConfiguration.class */
public class ActionInstallConfiguration implements AsyncMiddleware.AsyncAction {

    /* renamed from: af */
    private final ActionFactory f1862af;
    private final SupportBlipsProvider blipsProvider;
    private final Executor executor;
    private final Executor mainThreadExecutor;
    private final RequestUiConfig startConfig;
    private final SupportUiStorage supportUiStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionInstallConfiguration(SupportUiStorage supportUiStorage, RequestUiConfig requestUiConfig, Executor executor, Executor executor2, ActionFactory actionFactory, SupportBlipsProvider supportBlipsProvider) {
        this.supportUiStorage = supportUiStorage;
        this.startConfig = requestUiConfig;
        this.executor = executor;
        this.mainThreadExecutor = executor2;
        this.f1862af = actionFactory;
        this.blipsProvider = supportBlipsProvider;
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void actionQueued(Dispatcher dispatcher, GetState getState) {
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void execute(final Dispatcher dispatcher, GetState getState, final AsyncMiddleware.Callback callback) {
        this.executor.execute(new Runnable() { // from class: zendesk.support.request.ActionInstallConfiguration.1
            /* JADX WARN: Code restructure failed: missing block: B:5:0x003f, code lost:
                if (r0 == false) goto L_0x0048;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 349
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: zendesk.support.request.ActionInstallConfiguration.RunnableC28031.run():void");
            }
        });
    }
}
