.class public abstract Lcom/callapp/contacts/manager/popup/ResultPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;
.implements Lcom/callapp/contacts/manager/popup/Popup;


# instance fields
.field e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/app/Activity;)V
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 15
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/manager/popup/ResultPopup;->a(Landroid/content/Intent;)V

    .line 17
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/manager/popup/ResultPopup;->e:I

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(ILcom/callapp/contacts/manager/popup/Popup;)V

    .line 19
    :try_start_0
    iget v0, p0, Lcom/callapp/contacts/manager/popup/ResultPopup;->e:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method
