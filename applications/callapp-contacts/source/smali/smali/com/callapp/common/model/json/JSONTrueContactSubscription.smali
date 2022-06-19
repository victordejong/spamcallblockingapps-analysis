.class public Lcom/callapp/common/model/json/JSONTrueContactSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x75a60e6049cfe3e0L


# instance fields
.field private allocatedServer:Ljava/lang/String;

.field private peerHost:Ljava/lang/String;

.field private subscriptionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServerHost()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->allocatedServer:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->allocatedServer:Ljava/lang/String;

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->peerHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->peerHost:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "namerica.exposer.truecontact.me"

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public setAllocatedServer(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->allocatedServer:Ljava/lang/String;

    return-void
.end method

.method public setPeerHost(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->peerHost:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONTrueContactSubscription;->subscriptionId:Ljava/lang/String;

    return-void
.end method
