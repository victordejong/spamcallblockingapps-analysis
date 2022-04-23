package com.integralads.avid.library.mopub.session.internal;

import android.content.Context;
import com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/InternalAvidDisplayAdSession.class */
public class InternalAvidDisplayAdSession extends InternalAvidHtmlAdSession {
    public InternalAvidDisplayAdSession(Context context, String str, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        super(context, str, externalAvidAdSessionContext);
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public MediaType getMediaType() {
        return MediaType.DISPLAY;
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public SessionType getSessionType() {
        return SessionType.DISPLAY;
    }
}
