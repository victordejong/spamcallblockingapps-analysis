.class public Lcom/callapp/common/model/json/JSONDataAndSource;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/common/model/json/CallAppJSONObject;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b16d2bd10b1f0a2L


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private src:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 15
    iput p1, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->src:I

    .line 16
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONDataAndSource;

    .line 42
    iget v2, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->src:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONDataAndSource;->src:I

    if-eq v2, v3, :cond_2

    return v1

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->data:Ljava/lang/Object;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONDataAndSource;->data:Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getSrc()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->src:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget v0, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->src:I

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->data:Ljava/lang/Object;

    return-void
.end method

.method public setSrc(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/callapp/common/model/json/JSONDataAndSource;->src:I

    return-void
.end method
