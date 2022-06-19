.class Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->access$100(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;)V

    return-void
.end method
