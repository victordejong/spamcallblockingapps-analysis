.class public final Lcom/bytedance/sdk/a/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/aa$a;
    }
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/y;

.field final b:Lcom/bytedance/sdk/a/b/w;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Lcom/bytedance/sdk/a/b/q;

.field final f:Lcom/bytedance/sdk/a/b/r;

.field final g:Lcom/bytedance/sdk/a/b/ab;

.field final h:Lcom/bytedance/sdk/a/b/aa;

.field final i:Lcom/bytedance/sdk/a/b/aa;

.field final j:Lcom/bytedance/sdk/a/b/aa;

.field final k:J

.field final l:J

.field private volatile m:Lcom/bytedance/sdk/a/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/aa$a;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->a:Lcom/bytedance/sdk/a/b/y;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->a:Lcom/bytedance/sdk/a/b/y;

    .line 60
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->b:Lcom/bytedance/sdk/a/b/w;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->b:Lcom/bytedance/sdk/a/b/w;

    .line 61
    iget v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/aa;->c:I

    .line 62
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->d:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->e:Lcom/bytedance/sdk/a/b/q;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->e:Lcom/bytedance/sdk/a/b/q;

    .line 64
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->f:Lcom/bytedance/sdk/a/b/r$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->f:Lcom/bytedance/sdk/a/b/r;

    .line 65
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->g:Lcom/bytedance/sdk/a/b/ab;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->g:Lcom/bytedance/sdk/a/b/ab;

    .line 66
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->h:Lcom/bytedance/sdk/a/b/aa;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->h:Lcom/bytedance/sdk/a/b/aa;

    .line 67
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->i:Lcom/bytedance/sdk/a/b/aa;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->i:Lcom/bytedance/sdk/a/b/aa;

    .line 68
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->j:Lcom/bytedance/sdk/a/b/aa;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->j:Lcom/bytedance/sdk/a/b/aa;

    .line 69
    iget-wide v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->k:J

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/aa;->k:J

    .line 70
    iget-wide v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->l:J

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/aa;->l:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/bytedance/sdk/a/b/y;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->a:Lcom/bytedance/sdk/a/b/y;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->f:Lcom/bytedance/sdk/a/b/r;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final b()Lcom/bytedance/sdk/a/b/w;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->b:Lcom/bytedance/sdk/a/b/w;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/bytedance/sdk/a/b/aa;->c:I

    return v0
.end method

.method public final close()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->g:Lcom/bytedance/sdk/a/b/ab;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->close()V

    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/bytedance/sdk/a/b/aa;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/bytedance/sdk/a/b/q;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->e:Lcom/bytedance/sdk/a/b/q;

    return-object v0
.end method

.method public final g()Lcom/bytedance/sdk/a/b/r;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->f:Lcom/bytedance/sdk/a/b/r;

    return-object v0
.end method

.method public final h()Lcom/bytedance/sdk/a/b/ab;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->g:Lcom/bytedance/sdk/a/b/ab;

    return-object v0
.end method

.method public final i()Lcom/bytedance/sdk/a/b/aa$a;
    .locals 1

    .line 184
    new-instance v0, Lcom/bytedance/sdk/a/b/aa$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/aa$a;-><init>(Lcom/bytedance/sdk/a/b/aa;)V

    return-object v0
.end method

.method public final j()Lcom/bytedance/sdk/a/b/aa;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->j:Lcom/bytedance/sdk/a/b/aa;

    return-object v0
.end method

.method public final k()Lcom/bytedance/sdk/a/b/d;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->m:Lcom/bytedance/sdk/a/b/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->f:Lcom/bytedance/sdk/a/b/r;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/d;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa;->m:Lcom/bytedance/sdk/a/b/d;

    return-object v0
.end method

.method public final l()J
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/aa;->k:J

    return-wide v0
.end method

.method public final m()J
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/aa;->l:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/aa;->b:Lcom/bytedance/sdk/a/b/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/a/b/aa;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/aa;->a:Lcom/bytedance/sdk/a/b/y;

    .line 301
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
