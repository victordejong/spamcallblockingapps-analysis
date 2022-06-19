.class public final Lyp0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyp0$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lbq0;

.field public final d:Z

.field public final e:I

.field public final f:[I

.field public final g:Landroid/os/Bundle;

.field public final h:Leq0;

.field public final i:Z

.field public final j:Lgq0;


# direct methods
.method public constructor <init>(Lyp0$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyp0$b;->a(Lyp0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyp0;->a:Ljava/lang/String;

    invoke-static {p1}, Lyp0$b;->b(Lyp0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyp0;->b:Ljava/lang/String;

    invoke-static {p1}, Lyp0$b;->c(Lyp0$b;)Lbq0;

    move-result-object v0

    iput-object v0, p0, Lyp0;->c:Lbq0;

    invoke-static {p1}, Lyp0$b;->d(Lyp0$b;)Leq0;

    move-result-object v0

    iput-object v0, p0, Lyp0;->h:Leq0;

    invoke-static {p1}, Lyp0$b;->e(Lyp0$b;)Z

    move-result v0

    iput-boolean v0, p0, Lyp0;->d:Z

    invoke-static {p1}, Lyp0$b;->f(Lyp0$b;)I

    move-result v0

    iput v0, p0, Lyp0;->e:I

    invoke-static {p1}, Lyp0$b;->g(Lyp0$b;)[I

    move-result-object v0

    iput-object v0, p0, Lyp0;->f:[I

    invoke-static {p1}, Lyp0$b;->h(Lyp0$b;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lyp0;->g:Landroid/os/Bundle;

    invoke-static {p1}, Lyp0$b;->i(Lyp0$b;)Z

    move-result v0

    iput-boolean v0, p0, Lyp0;->i:Z

    invoke-static {p1}, Lyp0$b;->j(Lyp0$b;)Lgq0;

    move-result-object p1

    iput-object p1, p0, Lyp0;->j:Lgq0;

    return-void
.end method

.method public synthetic constructor <init>(Lyp0$b;Lyp0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lyp0;-><init>(Lyp0$b;)V

    return-void
.end method


# virtual methods
.method public a()Lbq0;
    .locals 1

    iget-object v0, p0, Lyp0;->c:Lbq0;

    return-object v0
.end method

.method public b()Leq0;
    .locals 1

    iget-object v0, p0, Lyp0;->h:Leq0;

    return-object v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lyp0;->f:[I

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lyp0;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lyp0;->i:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lyp0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lyp0;

    iget-object v2, p0, Lyp0;->a:Ljava/lang/String;

    iget-object v3, p1, Lyp0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyp0;->b:Ljava/lang/String;

    iget-object p1, p1, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lyp0;->d:Z

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lyp0;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyp0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyp0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lyp0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JobInvocation{tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp0;->a:Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", service=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp0;->c:Lbq0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recurring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lyp0;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lifetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyp0;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp0;->f:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp0;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp0;->h:Leq0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replaceCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lyp0;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", triggerReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp0;->j:Lgq0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
