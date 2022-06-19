.class public final Lg5/j;
.super Lg5/v$d$d;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Lg5/v$d$d$a;

.field public final d:Lg5/v$d$d$b;

.field public final e:Lg5/v$d$d$c;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lg5/v$d$d$a;Lg5/v$d$d$b;Lg5/v$d$d$c;Lg5/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg5/v$d$d;-><init>()V

    .line 2
    iput-wide p1, p0, Lg5/j;->a:J

    .line 3
    iput-object p3, p0, Lg5/j;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lg5/j;->c:Lg5/v$d$d$a;

    .line 5
    iput-object p5, p0, Lg5/j;->d:Lg5/v$d$d$b;

    .line 6
    iput-object p6, p0, Lg5/j;->e:Lg5/v$d$d$c;

    return-void
.end method


# virtual methods
.method public a()Lg5/v$d$d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg5/j;->c:Lg5/v$d$d$a;

    return-object v0
.end method

.method public b()Lg5/v$d$d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg5/j;->d:Lg5/v$d$d$b;

    return-object v0
.end method

.method public c()Lg5/v$d$d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg5/j;->e:Lg5/v$d$d$c;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg5/j;->a:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg5/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lg5/v$d$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lg5/v$d$d;

    .line 3
    iget-wide v3, p0, Lg5/j;->a:J

    invoke-virtual {p1}, Lg5/v$d$d;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lg5/j;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lg5/v$d$d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg5/j;->c:Lg5/v$d$d$a;

    .line 5
    invoke-virtual {p1}, Lg5/v$d$d;->a()Lg5/v$d$d$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg5/j;->d:Lg5/v$d$d$b;

    .line 6
    invoke-virtual {p1}, Lg5/v$d$d;->b()Lg5/v$d$d$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg5/j;->e:Lg5/v$d$d$c;

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lg5/v$d$d;->c()Lg5/v$d$d$c;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg5/v$d$d;->c()Lg5/v$d$d$c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lg5/j;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-object v2, p0, Lg5/j;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 3
    iget-object v2, p0, Lg5/j;->c:Lg5/v$d$d$a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 4
    iget-object v2, p0, Lg5/j;->d:Lg5/v$d$d$b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 5
    iget-object v0, p0, Lg5/j;->e:Lg5/v$d$d$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Event{timestamp="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lg5/j;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/j;->c:Lg5/v$d$d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/j;->d:Lg5/v$d$d$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/j;->e:Lg5/v$d$d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
