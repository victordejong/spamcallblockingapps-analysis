package p131c.p161d.p282e.p315q.p328q0;

import com.google.firebase.inappmessaging.ExperimentPayloadProto$ExperimentPayload;
/* renamed from: c.d.e.q.q0.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/a.class */
public final /* synthetic */ class RunnableC5632a implements Runnable {

    /* renamed from: a */
    public final C5639b f18707a;

    /* renamed from: b */
    public final ExperimentPayloadProto$ExperimentPayload f18708b;

    public RunnableC5632a(C5639b bVar, ExperimentPayloadProto$ExperimentPayload experimentPayloadProto$ExperimentPayload) {
        this.f18707a = bVar;
        this.f18708b = experimentPayloadProto$ExperimentPayload;
    }

    /* renamed from: a */
    public static Runnable m23367a(C5639b bVar, ExperimentPayloadProto$ExperimentPayload experimentPayloadProto$ExperimentPayload) {
        return new RunnableC5632a(bVar, experimentPayloadProto$ExperimentPayload);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5639b.m23353a(this.f18707a, this.f18708b);
    }
}
