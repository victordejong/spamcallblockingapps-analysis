.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 404
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;

    iget-object v1, v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;

    iget-object v1, v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$1100(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$000(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 406
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORD_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
