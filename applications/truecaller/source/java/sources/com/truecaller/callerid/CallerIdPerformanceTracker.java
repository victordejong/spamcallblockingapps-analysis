package com.truecaller.callerid;

import kotlin.Metadata;
import p193e.p194a.p1129p5.AbstractC19244l0;
import s1.z.b.a;
/* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/CallerIdPerformanceTracker.class */
public interface CallerIdPerformanceTracker {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0017\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;", "", "<init>", "(Ljava/lang/String;I)V", "RCVR_PHONESTATEHANDLER_STATE_CHG", "RCVR_PHONESTATEHANDLER_OUTGOING", "C_SCREENING_CPROCESSOR_STATE_CHG", "PHONESTATEHANDLER_NORMALIZATION", "PHONESTATEHANDLER_CPROC_STCHG", "CPROC_STATECHGDEDUPLICATION", "CPROC_ISSYSTEMAWAREVOIPCALL", "CPROC_GETFILTER", "CPROC_HASMULTISIM", "CPROC_GETSIMINDEX", "CIDMGR_PROVIDEFROMCARRIERNUMBER", "CIDMGR_ONOUTGOINGCALL", "CIDMGR_GETFILTERACTIONFORNUMBER", "CIDMGR_GETCONTACTFROMAGGRCONTDAO", "CIDMGR_PHONEBOOKCHECK", "CIDSEARCH_GETCONTACTFROMAGGREG", "CIDSEARCH_PERFORMNETWORKSEARCH", "CIDWINDOW_INIT", "CIDWINDOW_UPDATE", "CIDSERVICE_INJECT", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/CallerIdPerformanceTracker$TraceType.class */
    public enum TraceType {
        RCVR_PHONESTATEHANDLER_STATE_CHG,
        RCVR_PHONESTATEHANDLER_OUTGOING,
        C_SCREENING_CPROCESSOR_STATE_CHG,
        PHONESTATEHANDLER_NORMALIZATION,
        PHONESTATEHANDLER_CPROC_STCHG,
        CPROC_STATECHGDEDUPLICATION,
        CPROC_ISSYSTEMAWAREVOIPCALL,
        CPROC_GETFILTER,
        CPROC_HASMULTISIM,
        CPROC_GETSIMINDEX,
        CIDMGR_PROVIDEFROMCARRIERNUMBER,
        CIDMGR_ONOUTGOINGCALL,
        CIDMGR_GETFILTERACTIONFORNUMBER,
        CIDMGR_GETCONTACTFROMAGGRCONTDAO,
        CIDMGR_PHONEBOOKCHECK,
        CIDSEARCH_GETCONTACTFROMAGGREG,
        CIDSEARCH_PERFORMNETWORKSEARCH,
        CIDWINDOW_INIT,
        CIDWINDOW_UPDATE,
        CIDSERVICE_INJECT
    }

    /* renamed from: a */
    void mo22910a(AbstractC19244l0 abstractC19244l0);

    /* renamed from: b */
    AbstractC19244l0 mo22909b(TraceType traceType);

    /* renamed from: c */
    <R> R mo22908c(TraceType traceType, a<? extends R> aVar);
}
