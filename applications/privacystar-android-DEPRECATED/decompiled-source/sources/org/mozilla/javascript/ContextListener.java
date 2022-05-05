package org.mozilla.javascript;

import org.mozilla.javascript.ContextFactory;
@Deprecated
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ContextListener.class */
public interface ContextListener extends ContextFactory.Listener {
    @Deprecated
    void contextEntered(Context context);

    @Deprecated
    void contextExited(Context context);
}
