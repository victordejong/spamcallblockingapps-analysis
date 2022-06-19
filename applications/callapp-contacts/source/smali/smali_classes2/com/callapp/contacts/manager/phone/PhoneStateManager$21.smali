.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->cancelNotification(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$21;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-boolean p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$21;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2434
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2435
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$21;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2436
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/contact/ContactData;ZZ)V

    return-void

    .line 2438
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 2440
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/CallAppApplication;->a(ZLandroid/content/Intent;)V

    return-void
.end method
