.class public final Lp9/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/b0$a;
    }
.end annotation


# instance fields
.field public final a:Lp9/y;

.field public final b:Lp9/w;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lp9/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lp9/r;

.field public final g:Lp9/d0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lp9/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lp9/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lp9/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:J

.field public final l:J

.field public volatile m:Lp9/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/b0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lp9/b0$a;->a:Lp9/y;

    iput-object v0, p0, Lp9/b0;->a:Lp9/y;

    .line 3
    iget-object v0, p1, Lp9/b0$a;->b:Lp9/w;

    iput-object v0, p0, Lp9/b0;->b:Lp9/w;

    .line 4
    iget v0, p1, Lp9/b0$a;->c:I

    iput v0, p0, Lp9/b0;->c:I

    .line 5
    iget-object v0, p1, Lp9/b0$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lp9/b0;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lp9/b0$a;->e:Lp9/q;

    iput-object v0, p0, Lp9/b0;->e:Lp9/q;

    .line 7
    iget-object v0, p1, Lp9/b0$a;->f:Lp9/r$a;

    .line 8
    new-instance v1, Lp9/r;

    invoke-direct {v1, v0}, Lp9/r;-><init>(Lp9/r$a;)V

    .line 9
    iput-object v1, p0, Lp9/b0;->f:Lp9/r;

    .line 10
    iget-object v0, p1, Lp9/b0$a;->g:Lp9/d0;

    iput-object v0, p0, Lp9/b0;->g:Lp9/d0;

    .line 11
    iget-object v0, p1, Lp9/b0$a;->h:Lp9/b0;

    iput-object v0, p0, Lp9/b0;->h:Lp9/b0;

    .line 12
    iget-object v0, p1, Lp9/b0$a;->i:Lp9/b0;

    iput-object v0, p0, Lp9/b0;->i:Lp9/b0;

    .line 13
    iget-object v0, p1, Lp9/b0$a;->j:Lp9/b0;

    iput-object v0, p0, Lp9/b0;->j:Lp9/b0;

    .line 14
    iget-wide v0, p1, Lp9/b0$a;->k:J

    iput-wide v0, p0, Lp9/b0;->k:J

    .line 15
    iget-wide v0, p1, Lp9/b0$a;->l:J

    iput-wide v0, p0, Lp9/b0;->l:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/b0;->g:Lp9/d0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lp9/d0;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lp9/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/b0;->m:Lp9/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lp9/b0;->f:Lp9/r;

    invoke-static {v0}, Lp9/d;->a(Lp9/r;)Lp9/d;

    move-result-object v0

    iput-object v0, p0, Lp9/b0;->m:Lp9/d;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp9/b0;->b:Lp9/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp9/b0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp9/b0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp9/b0;->a:Lp9/y;

    .line 2
    iget-object v1, v1, Lp9/y;->a:Lp9/s;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
