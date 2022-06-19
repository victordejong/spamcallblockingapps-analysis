.class public Lcom/callapp/common/model/message/OutgoingMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xc506d5299539724L


# instance fields
.field public body:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public to:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/common/model/message/OutgoingMessage;->body:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/common/model/message/OutgoingMessage;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/common/model/message/OutgoingMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/message/OutgoingMessage;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/common/model/message/OutgoingMessage;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/common/model/message/OutgoingMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/common/model/message/OutgoingMessage;->body:Ljava/lang/String;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/common/model/message/OutgoingMessage;->from:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/common/model/message/OutgoingMessage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/common/model/message/OutgoingMessage;->to:Ljava/lang/String;

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/common/model/message/OutgoingMessage;->token:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/common/model/message/OutgoingMessage;->type:Ljava/lang/String;

    return-object p0
.end method
