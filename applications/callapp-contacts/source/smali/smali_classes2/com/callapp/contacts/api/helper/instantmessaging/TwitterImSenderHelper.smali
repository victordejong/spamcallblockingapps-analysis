.class public final Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;",
        "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;",
        "()V",
        "getAnalyticsNameLabel",
        "",
        "getImColor",
        "",
        "getPackageName",
        "getType",
        "Lcom/callapp/contacts/manager/Singletons$SenderType;",
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

    .line 7
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "tw"

    return-object v0
.end method

.method public final getImColor()I
    .locals 1

    const v0, 0x7f060230

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.twitter.android"

    return-object v0
.end method

.method public final getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 10
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->TWITTER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method
