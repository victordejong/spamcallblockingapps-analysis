package okhttp3;
/* loaded from: classes2-dex2jar.jar:okhttp3/EventListener$2.class */
class EventListener$2 implements EventListener$Factory {
    final /* synthetic */ EventListener val$listener;

    EventListener$2(EventListener eventListener) {
        this.val$listener = eventListener;
    }

    @Override // okhttp3.EventListener$Factory
    public EventListener create(Call call) {
        return this.val$listener;
    }
}
