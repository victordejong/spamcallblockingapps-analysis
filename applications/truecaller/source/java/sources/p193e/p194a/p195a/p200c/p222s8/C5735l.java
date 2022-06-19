package p193e.p194a.p195a.p200c.p222s8;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton;
import com.truecaller.messaging.conversation.voice_notes.RecordView;
import p193e.p194a.p195a.p200c.C5059a4;
import s1.z.c.l;
/* renamed from: e.a.a.c.s8.l */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/l.class */
public final class C5735l extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ RecordFloatingActionButton f19202a;

    public C5735l(RecordFloatingActionButton recordFloatingActionButton) {
        this.f19202a = recordFloatingActionButton;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        l.e(motionEvent, "e");
        this.f19202a.f13126u = motionEvent.getX();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        l.e(motionEvent, "e");
        this.f19202a.getRecordView().m35081g(this.f19202a);
        super.onLongPress(motionEvent);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        l.e(motionEvent, "event");
        RecordView.AbstractC4182a abstractC4182a = this.f19202a.getRecordView().f13138a;
        if (abstractC4182a != null) {
            ((C5059a4) abstractC4182a).f17322a.f19484b.mo33370Ng();
            return true;
        }
        return true;
    }
}
