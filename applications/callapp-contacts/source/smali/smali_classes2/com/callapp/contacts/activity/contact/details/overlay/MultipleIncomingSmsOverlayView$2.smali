.class Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 108
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p1

    const-class p2, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {p1, p2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->access$000(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 109
    invoke-static {}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a()V

    .line 110
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->finishViewContainer(Z)V

    return-void
.end method
