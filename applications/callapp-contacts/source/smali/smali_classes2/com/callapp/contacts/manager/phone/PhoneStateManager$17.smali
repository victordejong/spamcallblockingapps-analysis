.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$17;
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

    .line 2329
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$17;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$17;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2333
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2334
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;-><init>(Landroid/content/Context;)V

    .line 2335
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 2336
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$17;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onNewIntent(Landroid/content/Intent;)Z

    return-void
.end method
