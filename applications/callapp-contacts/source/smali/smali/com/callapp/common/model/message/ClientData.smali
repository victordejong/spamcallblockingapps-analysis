.class public Lcom/callapp/common/model/message/ClientData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x34b3a44017d68d5L


# instance fields
.field private client:Lcom/callapp/common/model/message/CallAppClient;

.field private group:Ljava/lang/Integer;

.field private lastActiveTime:J

.field private phoneNumber:Ljava/lang/String;

.field private registrationId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient()Lcom/callapp/common/model/message/CallAppClient;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/common/model/message/ClientData;->client:Lcom/callapp/common/model/message/CallAppClient;

    return-object v0
.end method

.method public getGroup()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/common/model/message/ClientData;->group:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastActiveTime()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/callapp/common/model/message/ClientData;->lastActiveTime:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/common/model/message/ClientData;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/common/model/message/ClientData;->registrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/common/model/message/ClientData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClient(Lcom/callapp/common/model/message/CallAppClient;)Lcom/callapp/common/model/message/ClientData;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/common/model/message/ClientData;->client:Lcom/callapp/common/model/message/CallAppClient;

    return-object p0
.end method

.method public setGroup(Ljava/lang/Integer;)Lcom/callapp/common/model/message/ClientData;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/common/model/message/ClientData;->group:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLastActiveTime(J)Lcom/callapp/common/model/message/ClientData;
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/callapp/common/model/message/ClientData;->lastActiveTime:J

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/callapp/common/model/message/ClientData;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/common/model/message/ClientData;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setRegistrationId(Ljava/lang/String;)Lcom/callapp/common/model/message/ClientData;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/common/model/message/ClientData;->registrationId:Ljava/lang/String;

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/callapp/common/model/message/ClientData;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/common/model/message/ClientData;->token:Ljava/lang/String;

    return-object p0
.end method
