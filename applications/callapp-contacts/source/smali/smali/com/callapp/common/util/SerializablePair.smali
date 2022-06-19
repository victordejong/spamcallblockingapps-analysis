.class public Lcom/callapp/common/util/SerializablePair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/io/Serializable;",
        "S::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final b:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    .line 11
    iput-object p2, p0, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

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

    if-nez p1, :cond_1

    return v1

    .line 34
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/util/SerializablePair;

    if-nez v2, :cond_2

    return v1

    .line 36
    :cond_2
    check-cast p1, Lcom/callapp/common/util/SerializablePair;

    .line 37
    iget-object v2, p0, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    if-nez v2, :cond_3

    .line 38
    iget-object v2, p1, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    if-eqz v2, :cond_4

    return v1

    .line 40
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 42
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    if-nez v2, :cond_5

    .line 43
    iget-object p1, p1, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    if-eqz p1, :cond_6

    return v1

    .line 45
    :cond_5
    iget-object p1, p1, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v2, p0, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pair [first="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
