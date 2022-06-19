.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallScreen(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/content/Intent;)V
    .locals 0

    .line 2373
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2376
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2378
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20$1;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;)V

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V

    .line 2388
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 2389
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onNewIntent(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
