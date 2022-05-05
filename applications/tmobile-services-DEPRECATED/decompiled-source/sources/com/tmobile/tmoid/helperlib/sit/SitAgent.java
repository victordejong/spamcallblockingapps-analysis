package com.tmobile.tmoid.helperlib.sit;

import android.os.RemoteException;
import com.tmobile.tmoid.helperlib.CommunicationException;
import com.tmobile.tmoid.helperlib.InvalidStateException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitAgent.class */
public abstract class SitAgent {
    /* renamed from: a */
    public abstract void mo4761a() throws RemoteException;

    /* renamed from: b */
    public abstract MsisdnData mo4760b() throws CommunicationException, SitMobileDataConnectionException, SitServerCommunicationErrorException, InvalidStateException;

    /* renamed from: c */
    public abstract SessionInstanceToken mo4759c(String str) throws CommunicationException, SitMobileDataConnectionException, SitServerCommunicationErrorException, InvalidStateException;
}
