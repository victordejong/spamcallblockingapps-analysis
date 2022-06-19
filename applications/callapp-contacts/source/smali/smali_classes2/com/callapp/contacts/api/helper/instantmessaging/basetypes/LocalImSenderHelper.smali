.class public abstract Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;->hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;->isAppInstalled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
