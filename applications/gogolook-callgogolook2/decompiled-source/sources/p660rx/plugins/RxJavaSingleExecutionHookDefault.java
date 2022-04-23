package p660rx.plugins;
/* renamed from: rx.plugins.RxJavaSingleExecutionHookDefault */
/* loaded from: classes3-dex2jar.jar:rx/plugins/RxJavaSingleExecutionHookDefault.class */
public final class RxJavaSingleExecutionHookDefault extends RxJavaSingleExecutionHook {
    public static final RxJavaSingleExecutionHookDefault INSTANCE = new RxJavaSingleExecutionHookDefault();

    public static RxJavaSingleExecutionHook getInstance() {
        return INSTANCE;
    }
}
