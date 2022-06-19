.class final Lcom/google/android/datatransport/h/b;
.super Lcom/google/android/datatransport/h/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/h/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/h/m;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/datatransport/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/c<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/datatransport/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/d<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/datatransport/b;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/h/m;Ljava/lang/String;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/h/m;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/c<",
            "*>;",
            "Lcom/google/android/datatransport/d<",
            "*[B>;",
            "Lcom/google/android/datatransport/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/datatransport/h/l;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/b;->a:Lcom/google/android/datatransport/h/m;

    iput-object p2, p0, Lcom/google/android/datatransport/h/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/datatransport/h/b;->c:Lcom/google/android/datatransport/c;

    iput-object p4, p0, Lcom/google/android/datatransport/h/b;->d:Lcom/google/android/datatransport/d;

    iput-object p5, p0, Lcom/google/android/datatransport/h/b;->e:Lcom/google/android/datatransport/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/h/m;Ljava/lang/String;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/h/b$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/datatransport/h/b;-><init>(Lcom/google/android/datatransport/h/m;Ljava/lang/String;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/b;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/h/b;->e:Lcom/google/android/datatransport/b;

    return-object v0
.end method

.method c()Lcom/google/android/datatransport/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/h/b;->c:Lcom/google/android/datatransport/c;

    return-object v0
.end method

.method e()Lcom/google/android/datatransport/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/d<",
            "*[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/h/b;->d:Lcom/google/android/datatransport/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/h/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/datatransport/h/l;

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->a:Lcom/google/android/datatransport/h/m;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->f()Lcom/google/android/datatransport/h/m;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->c:Lcom/google/android/datatransport/c;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->c()Lcom/google/android/datatransport/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->d:Lcom/google/android/datatransport/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->e()Lcom/google/android/datatransport/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->e:Lcom/google/android/datatransport/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->b()Lcom/google/android/datatransport/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Lcom/google/android/datatransport/h/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/h/b;->a:Lcom/google/android/datatransport/h/m;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/h/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/h/b;->a:Lcom/google/android/datatransport/h/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/h/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/h/b;->c:Lcom/google/android/datatransport/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/h/b;->d:Lcom/google/android/datatransport/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->e:Lcom/google/android/datatransport/b;

    invoke-virtual {v1}, Lcom/google/android/datatransport/b;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->a:Lcom/google/android/datatransport/h/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->c:Lcom/google/android/datatransport/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->d:Lcom/google/android/datatransport/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/h/b;->e:Lcom/google/android/datatransport/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
