.class public Lcom/callapp/contacts/model/contact/social/FacebookData$FacebookChatData;
.super Lcom/callapp/contacts/model/contact/ChatData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/contact/social/FacebookData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookChatData"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56999ce28ccec878L


# instance fields
.field private presence:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/social/FacebookData$FacebookChatData;-><init>(Lcom/callapp/common/model/json/JSONIMaddress;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONIMaddress;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/contact/ChatData;-><init>(Lcom/callapp/common/model/json/JSONIMaddress;)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData$FacebookChatData;->presence:I

    return-void
.end method


# virtual methods
.method public fetchPresence()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData$FacebookChatData;->presence:I

    return v0
.end method

.method public getPresence()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData$FacebookChatData;->presence:I

    return v0
.end method

.method public setPresence(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData$FacebookChatData;->presence:I

    return-void
.end method
