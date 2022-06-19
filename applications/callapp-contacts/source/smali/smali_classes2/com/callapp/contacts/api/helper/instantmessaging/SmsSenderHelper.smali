.class public Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f080388

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "sms"

    return-object v0
.end method

.method public getImColor()I
    .locals 1

    const v0, 0x7f0601d9

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 58
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->SMS:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAppInstalled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    .line 27
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 28
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/action/local/SmsAction;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/action/local/SmsAction;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/action/local/SmsAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
