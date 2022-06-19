package com.truecaller.voip.callconnection;

import android.os.Bundle;
import android.telecom.Connection;
import android.telecom.ConnectionRequest;
import android.telecom.PhoneAccountHandle;
import com.truecaller.voip.C4781R;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p652q.AbstractC11745a;
import p193e.p194a.p619d.p652q.AbstractC11776v;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u000fJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\t\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\t\u0010\bJ#\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\r\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/truecaller/voip/callconnection/VoipCallConnectionService;", "Landroid/telecom/ConnectionService;", "Landroid/telecom/PhoneAccountHandle;", "connectionManagerPhoneAccount", "Landroid/telecom/ConnectionRequest;", "request", "Landroid/telecom/Connection;", "onCreateOutgoingConnection", "(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;", "onCreateIncomingConnection", "Ls1/s;", "onCreateOutgoingConnectionFailed", "(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V", "onCreateIncomingConnectionFailed", "onDestroy", "()V", "Le/a/d/q/v;", "d", "Le/a/d/q/v;", "getConnectionManager", "()Le/a/d/q/v;", "setConnectionManager", "(Le/a/d/q/v;)V", "connectionManager", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/callconnection/VoipCallConnectionService.class */
public final class VoipCallConnectionService extends AbstractC11745a {
    @Inject

    /* renamed from: d */
    public AbstractC11776v f16300d;

    @Override // android.telecom.ConnectionService
    public Connection onCreateIncomingConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        StringBuilder m8728C = C22128a.m8728C("New incoming connection. Request:");
        m8728C.append(connectionRequest != null ? connectionRequest.getAddress() : null);
        m8728C.append(" Extras:");
        m8728C.append(connectionRequest != null ? connectionRequest.getExtras() : null);
        m8728C.toString();
        AbstractC11776v abstractC11776v = this.f16300d;
        if (abstractC11776v != null) {
            return abstractC11776v.mo24004i();
        }
        l.l("connectionManager");
        throw null;
    }

    @Override // android.telecom.ConnectionService
    public void onCreateIncomingConnectionFailed(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        StringBuilder m8728C = C22128a.m8728C("Incoming connection is failed. Request: ");
        m8728C.append(connectionRequest != null ? connectionRequest.getAddress() : null);
        m8728C.append(" Extras:");
        Bundle bundle = null;
        if (connectionRequest != null) {
            bundle = connectionRequest.getExtras();
        }
        m8728C.append(bundle);
        m8728C.toString();
        super.onCreateIncomingConnectionFailed(phoneAccountHandle, connectionRequest);
    }

    @Override // android.telecom.ConnectionService
    public Connection onCreateOutgoingConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        StringBuilder m8728C = C22128a.m8728C("New outgoing connection. Request:");
        m8728C.append(connectionRequest != null ? connectionRequest.getAddress() : null);
        m8728C.append(" Extras:");
        m8728C.append(connectionRequest != null ? connectionRequest.getExtras() : null);
        m8728C.toString();
        AbstractC11776v abstractC11776v = this.f16300d;
        if (abstractC11776v != null) {
            return abstractC11776v.mo24006g();
        }
        l.l("connectionManager");
        throw null;
    }

    @Override // android.telecom.ConnectionService
    public void onCreateOutgoingConnectionFailed(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        super.onCreateOutgoingConnectionFailed(phoneAccountHandle, connectionRequest);
        StringBuilder m8728C = C22128a.m8728C("Outgoing connection is failed. Request: ");
        m8728C.append(connectionRequest != null ? connectionRequest.getAddress() : null);
        m8728C.append(" Extras:");
        m8728C.append(connectionRequest != null ? connectionRequest.getExtras() : null);
        m8728C.toString();
        C19291g.m13589S1(this, C4781R.string.voip_group_error_initiating_outgoing_call, null, 0, 6);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        AbstractC11776v abstractC11776v = this.f16300d;
        if (abstractC11776v != null) {
            abstractC11776v.mo24007f();
        } else {
            l.l("connectionManager");
            throw null;
        }
    }
}
