.class public Lcom/callapp/common/model/json/CallAppJSONObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private fromDevice:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private final isFromUserProfile:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/callapp/common/model/json/CallAppJSONObject;->isFromUserProfile:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/callapp/common/model/json/CallAppJSONObject;->isFromUserProfile:Z

    return-void
.end method


# virtual methods
.method public isFromDevice()Z
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 29
    iget-boolean v0, p0, Lcom/callapp/common/model/json/CallAppJSONObject;->fromDevice:Z

    return v0
.end method

.method public isFromUserProfile()Z
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 34
    iget-boolean v0, p0, Lcom/callapp/common/model/json/CallAppJSONObject;->isFromUserProfile:Z

    return v0
.end method

.method public setFromDevice(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/callapp/common/model/json/CallAppJSONObject;->fromDevice:Z

    return-void
.end method
