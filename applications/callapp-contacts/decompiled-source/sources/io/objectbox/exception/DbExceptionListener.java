package io.objectbox.exception;
/* loaded from: classes5-dex2jar.jar:io/objectbox/exception/DbExceptionListener.class */
public interface DbExceptionListener {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/exception/DbExceptionListener$_CC.class */
    public final /* synthetic */ class _CC {
        public static void cancelCurrentException() {
            DbExceptionListenerJni.nativeCancelCurrentException();
        }
    }

    void onDbException(Exception exc);
}
