.class public Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;
    .locals 2

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-object v0
.end method
