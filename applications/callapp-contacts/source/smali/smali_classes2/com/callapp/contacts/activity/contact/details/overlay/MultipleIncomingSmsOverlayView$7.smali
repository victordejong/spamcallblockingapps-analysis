.class Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onSendMessageClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;Lcom/callapp/contacts/model/objectbox/SingleSmsData;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$7;->b:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$7;->a:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$7;->b:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$7;->a:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onMessageSent(Lcom/callapp/contacts/model/objectbox/SingleSmsData;Z)V

    return-void
.end method
