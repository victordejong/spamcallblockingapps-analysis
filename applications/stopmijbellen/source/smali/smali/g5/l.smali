.class public final Lg5/l;
.super Lg5/v$d$d$a$b;
.source "SourceFile"


# instance fields
.field public final a:Lg5/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg5/w<",
            "Lg5/v$d$d$a$b$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg5/v$d$d$a$b$b;

.field public final c:Lg5/v$d$d$a$b$c;

.field public final d:Lg5/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg5/w<",
            "Lg5/v$d$d$a$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/w;Lg5/v$d$d$a$b$b;Lg5/v$d$d$a$b$c;Lg5/w;Lg5/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg5/v$d$d$a$b;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/l;->a:Lg5/w;

    .line 3
    iput-object p2, p0, Lg5/l;->b:Lg5/v$d$d$a$b$b;

    .line 4
    iput-object p3, p0, Lg5/l;->c:Lg5/v$d$d$a$b$c;

    .line 5
    iput-object p4, p0, Lg5/l;->d:Lg5/w;

    return-void
.end method


# virtual methods
.method public a()Lg5/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg5/w<",
            "Lg5/v$d$d$a$b$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg5/l;->d:Lg5/w;

    return-object v0
.end method

.method public b()Lg5/v$d$d$a$b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg5/l;->b:Lg5/v$d$d$a$b$b;

    return-object v0
.end method

.method public c()Lg5/v$d$d$a$b$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg5/l;->c:Lg5/v$d$d$a$b$c;

    return-object v0
.end method

.method public d()Lg5/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg5/w<",
            "Lg5/v$d$d$a$b$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg5/l;->a:Lg5/w;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lg5/v$d$d$a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lg5/v$d$d$a$b;

    .line 3
    iget-object v1, p0, Lg5/l;->a:Lg5/w;

    invoke-virtual {p1}, Lg5/v$d$d$a$b;->d()Lg5/w;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg5/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg5/l;->b:Lg5/v$d$d$a$b$b;

    .line 4
    invoke-virtual {p1}, Lg5/v$d$d$a$b;->b()Lg5/v$d$d$a$b$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg5/l;->c:Lg5/v$d$d$a$b$c;

    .line 5
    invoke-virtual {p1}, Lg5/v$d$d$a$b;->c()Lg5/v$d$d$a$b$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg5/l;->d:Lg5/w;

    .line 6
    invoke-virtual {p1}, Lg5/v$d$d$a$b;->a()Lg5/w;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg5/w;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lg5/l;->a:Lg5/w;

    invoke-virtual {v0}, Lg5/w;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lg5/l;->b:Lg5/v$d$d$a$b$b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Lg5/l;->c:Lg5/v$d$d$a$b$c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v1, p0, Lg5/l;->d:Lg5/w;

    invoke-virtual {v1}, Lg5/w;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Execution{threads="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg5/l;->a:Lg5/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/l;->b:Lg5/v$d$d$a$b$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/l;->c:Lg5/v$d$d$a$b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/l;->d:Lg5/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
