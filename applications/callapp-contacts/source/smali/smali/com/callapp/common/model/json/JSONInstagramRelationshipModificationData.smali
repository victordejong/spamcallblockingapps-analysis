.class public Lcom/callapp/common/model/json/JSONInstagramRelationshipModificationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x20e6d84bc1de2aaL


# instance fields
.field outgoing_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutgoing_status()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipModificationData;->outgoing_status:Ljava/lang/String;

    return-object v0
.end method

.method public setOutgoing_status(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipModificationData;->outgoing_status:Ljava/lang/String;

    return-void
.end method
