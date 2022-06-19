.class Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;
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

    .line 141
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;->b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;->b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getVerificationStatus()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->access$000(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;ILcom/callapp/framework/phone/Phone;)V

    return-void
.end method
