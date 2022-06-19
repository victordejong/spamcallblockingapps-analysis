.class public abstract Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# instance fields
.field private final componentName:Ljava/lang/String;

.field private final iconResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->componentName:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->iconResId:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getImIconResId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->iconResId:I

    return v0
.end method

.method public synthetic getPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender$-CC;->$default$getPackageName(Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareReferTexBody()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 55
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const p1, 0x7f1205be

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isAppInstalled()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->componentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 45
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/Singletons;->b(Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void
.end method

.method public share(Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;)V
    .locals 3

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0, v1, v2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getActivityResult()Lcom/callapp/contacts/manager/popup/ActivityResult;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
