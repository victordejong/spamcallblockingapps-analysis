.class public abstract Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0016J\u001a\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;",
        "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;",
        "()V",
        "canUseIm",
        "",
        "contact",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "destroy",
        "",
        "getAnalyticsNameLabel",
        "",
        "getImIconResId",
        "",
        "getShareReferTexBody",
        "getShareReferTextSubject",
        "name",
        "encoded",
        "hasIMAccount",
        "init",
        "isAppInstalled",
        "openIm",
        "context",
        "Landroid/content/Context;",
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
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

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

    const/4 v0, 0x0

    return v0
.end method

.method public getShareReferTexBody()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 34
    sget-object p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const p1, 0x7f1205be

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Activities.getString(R.s\u2026Link(analyticsNameLabel))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isAppInstalled()Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contact"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/Singletons;->b(Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void
.end method
