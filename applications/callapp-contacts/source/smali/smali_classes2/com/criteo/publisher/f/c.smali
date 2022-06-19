.class abstract Lcom/criteo/publisher/f/c;
.super Lcom/criteo/publisher/f/y;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$a;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/criteo/publisher/f/y;-><init>()V

    const-string v0, "Null feedbacks"

    .line 21
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/criteo/publisher/f/c;->a:Ljava/util/List;

    const-string p1, "Null wrapperVersion"

    .line 25
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lcom/criteo/publisher/f/c;->b:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/criteo/publisher/f/c;->c:I

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$a;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/criteo/publisher/f/c;->a:Ljava/util/List;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "wrapper_version"
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/criteo/publisher/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "profile_id"
    .end annotation

    .line 47
    iget v0, p0, Lcom/criteo/publisher/f/c;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/f/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 65
    check-cast p1, Lcom/criteo/publisher/f/y;

    .line 66
    iget-object v1, p0, Lcom/criteo/publisher/f/c;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/criteo/publisher/f/y;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/f/c;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/criteo/publisher/f/c;->c:I

    .line 68
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y;->c()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/criteo/publisher/f/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 79
    iget-object v2, p0, Lcom/criteo/publisher/f/c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 81
    iget v1, p0, Lcom/criteo/publisher/f/c;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetricRequest{feedbacks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/f/c;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wrapperVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/criteo/publisher/f/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
