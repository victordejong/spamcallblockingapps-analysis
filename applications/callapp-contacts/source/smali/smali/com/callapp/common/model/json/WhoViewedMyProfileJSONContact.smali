.class public Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;
.super Lcom/callapp/common/model/json/JSONContact;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x34b4a145c61c1fbbL


# instance fields
.field private count:I

.field private entryPoint:I

.field private lastSeen:J

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->count:I

    return v0
.end method

.method public getEntryPoint()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->entryPoint:I

    return v0
.end method

.method public getLastSeen()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->lastSeen:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->type:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->count:I

    return-void
.end method

.method public setEntryPoint(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->entryPoint:I

    return-void
.end method

.method public setLastSeen(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->lastSeen:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->phone:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->type:I

    return-void
.end method
