.class public final Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;",
        "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;",
        "()V",
        "getAnalyticsNameLabel",
        "",
        "getImColor",
        "",
        "getPackageName",
        "getType",
        "Lcom/callapp/contacts/manager/Singletons$SenderType;",
        "share",
        "",
        "shareData",
        "Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "inst"

    return-object v0
.end method

.method public final getImColor()I
    .locals 1

    const v0, 0x7f060120

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.instagram.android"

    return-object v0
.end method

.method public final getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 13
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->INSTAGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public final share(Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;)V
    .locals 3

    const-string v0, "shareData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/*"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "if (shareData.contactDat\u2026 StringUtils.EMPTY_STRING"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v1, v2}, Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;->getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getActivityResult()Lcom/callapp/contacts/manager/popup/ActivityResult;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
