.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$11;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$11;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    .line 779
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDERS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
