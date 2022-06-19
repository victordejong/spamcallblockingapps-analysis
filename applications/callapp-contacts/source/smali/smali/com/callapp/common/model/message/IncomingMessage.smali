.class public Lcom/callapp/common/model/message/IncomingMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3d903e84305ca28dL


# instance fields
.field public body:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public sent:Ljava/util/Date;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    check-cast p1, Lcom/callapp/common/model/message/IncomingMessage;

    .line 67
    iget-object v0, p0, Lcom/callapp/common/model/message/IncomingMessage;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/message/IncomingMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/common/model/message/IncomingMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/common/model/message/IncomingMessage;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/common/model/message/IncomingMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSent()Ljava/util/Date;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/common/model/message/IncomingMessage;->sent:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/common/model/message/IncomingMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/common/model/message/IncomingMessage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/callapp/common/model/message/IncomingMessage;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/callapp/common/model/message/IncomingMessage;->body:Ljava/lang/String;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/callapp/common/model/message/IncomingMessage;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/callapp/common/model/message/IncomingMessage;->from:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/callapp/common/model/message/IncomingMessage;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/callapp/common/model/message/IncomingMessage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setSent(Ljava/util/Date;)Lcom/callapp/common/model/message/IncomingMessage;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/common/model/message/IncomingMessage;->sent:Ljava/util/Date;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/callapp/common/model/message/IncomingMessage;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/common/model/message/IncomingMessage;->type:Ljava/lang/String;

    return-object p0
.end method
