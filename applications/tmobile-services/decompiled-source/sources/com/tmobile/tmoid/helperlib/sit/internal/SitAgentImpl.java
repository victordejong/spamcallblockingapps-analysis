package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.RemoteException;
import com.tmobile.tmoid.helperlib.CommunicationException;
import com.tmobile.tmoid.helperlib.InvalidStateException;
import com.tmobile.tmoid.helperlib.sit.MsisdnData;
import com.tmobile.tmoid.helperlib.sit.SessionInstanceToken;
import com.tmobile.tmoid.helperlib.sit.SitAgent;
import com.tmobile.tmoid.helperlib.sit.SitMobileDataConnectionException;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/SitAgentImpl.class */
public class SitAgentImpl extends SitAgent {

    /* renamed from: a */
    private final ISitHelperLibrary f14894a;

    public SitAgentImpl(ISitHelperLibrary iSitHelperLibrary) {
        this.f14894a = iSitHelperLibrary;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.SitAgent
    /* renamed from: a */
    public void mo4761a() {
        try {
            this.f14894a.mo4749w0();
        } catch (RemoteException e) {
            e.printStackTrace();
            Log.m4654d("TMO-Agent", "Cleared values from RamStorage failed");
        }
    }

    @Override // com.tmobile.tmoid.helperlib.sit.SitAgent
    @Deprecated
    /* renamed from: b */
    public MsisdnData mo4760b() throws CommunicationException, SitMobileDataConnectionException, SitServerCommunicationErrorException, InvalidStateException {
        return m4757e(null);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.SitAgent
    /* renamed from: c */
    public SessionInstanceToken mo4759c(String str) throws CommunicationException, SitMobileDataConnectionException, SitServerCommunicationErrorException, InvalidStateException {
        return m4756f(str, null, null);
    }

    /* renamed from: d */
    public MsisdnData m4758d(String str, String str2) throws CommunicationException, SitMobileDataConnectionException, SitServerCommunicationErrorException, InvalidStateException {
        try {
            MsisdnDataAPIResponse e0 = this.f14894a.mo4752e0(str, new MsisdnDataAPIRequest(str2));
            if (e0 == null) {
                throw new IllegalStateException("Null MSISDN data response received!");
            } else if (!e0.m4776f()) {
                return e0.m4778d();
            } else {
                Throwable a = e0.m4819a();
                if (a instanceof SitMobileDataConnectionException) {
                    throw ((SitMobileDataConnectionException) a);
                } else if (a instanceof SitServerCommunicationErrorException) {
                    throw ((SitServerCommunicationErrorException) a);
                } else if (a instanceof InvalidStateException) {
                    throw ((InvalidStateException) a);
                } else {
                    throw new IllegalStateException("unexpected", a);
                }
            }
        } catch (RemoteException e) {
            throw new CommunicationException(e);
        }
    }

    @Deprecated
    /* renamed from: e */
    public MsisdnData m4757e(String str) throws CommunicationException, SitMobileDataConnectionException, SitServerCommunicationErrorException, InvalidStateException {
        return m4758d(null, str);
    }

    /* renamed from: f */
    public SessionInstanceToken m4756f(String str, String str2, String str3) throws CommunicationException, SitMobileDataConnectionException, SitServerCommunicationErrorException, InvalidStateException {
        try {
            SitAPIResponse Q = this.f14894a.mo4754Q(new SitAPIRequest(str, str2, str3));
            if (Q == null) {
                throw new IllegalStateException("Null SIT response received!");
            } else if (Q.m4766c()) {
                Throwable a = Q.m4819a();
                if (a instanceof SitMobileDataConnectionException) {
                    throw ((SitMobileDataConnectionException) a);
                } else if (a instanceof SitServerCommunicationErrorException) {
                    throw ((SitServerCommunicationErrorException) a);
                } else if (a instanceof InvalidStateException) {
                    throw ((InvalidStateException) a);
                } else {
                    throw new IllegalStateException("unexpected", a);
                }
            } else {
                SessionInstanceToken e = Q.m4764e();
                e.m4995d(true);
                return e;
            }
        } catch (RemoteException e2) {
            throw new CommunicationException(e2);
        }
    }
}
