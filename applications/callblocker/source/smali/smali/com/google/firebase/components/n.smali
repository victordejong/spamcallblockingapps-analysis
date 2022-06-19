.class public final Lcom/google/firebase/components/n;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "Null dependency anInterface."

    invoke-static {p1, v0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/firebase/components/n;->a:Ljava/lang/Class;

    .line 45
    iput p2, p0, Lcom/google/firebase/components/n;->b:I

    .line 46
    iput p3, p0, Lcom/google/firebase/components/n;->c:I

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/firebase/components/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/n;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Lcom/google/firebase/components/n;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/n;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lcom/google/firebase/components/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/n;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/google/firebase/components/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/n;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static c(Ljava/lang/Class;)Lcom/google/firebase/components/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/n;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/google/firebase/components/n;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/n;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/firebase/components/n;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    iget v1, p0, Lcom/google/firebase/components/n;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/google/firebase/components/n;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/firebase/components/n;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    instance-of v1, p1, Lcom/google/firebase/components/n;

    if-eqz v1, :cond_0

    .line 92
    check-cast p1, Lcom/google/firebase/components/n;

    .line 93
    iget-object v1, p0, Lcom/google/firebase/components/n;->a:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/firebase/components/n;->a:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/firebase/components/n;->b:I

    iget v2, p1, Lcom/google/firebase/components/n;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/firebase/components/n;->c:I

    iget v2, p1, Lcom/google/firebase/components/n;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 95
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/firebase/components/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    .line 102
    mul-int/2addr v0, v2

    .line 103
    iget v1, p0, Lcom/google/firebase/components/n;->b:I

    xor-int/2addr v0, v1

    .line 104
    mul-int/2addr v0, v2

    .line 105
    iget v1, p0, Lcom/google/firebase/components/n;->c:I

    xor-int/2addr v0, v1

    .line 106
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Dependency{anInterface="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/components/n;->a:Ljava/lang/Class;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", type="

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    iget v0, p0, Lcom/google/firebase/components/n;->b:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "required"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", direct="

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/google/firebase/components/n;->c:I

    if-nez v0, :cond_2

    move v0, v1

    .line 117
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    iget v0, p0, Lcom/google/firebase/components/n;->b:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "optional"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "set"

    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
