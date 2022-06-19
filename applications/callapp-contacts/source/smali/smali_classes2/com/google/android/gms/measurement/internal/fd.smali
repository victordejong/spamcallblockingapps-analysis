.class final Lcom/google/android/gms/measurement/internal/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/Boolean;

.field private C:J

.field private D:Ljava/lang/String;

.field private E:J

.field private F:J

.field final a:Lcom/google/android/gms/measurement/internal/es;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:Ljava/lang/String;

.field j:Z

.field private final k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:J

.field private r:J

.field private s:Ljava/lang/String;

.field private t:J

.field private u:Ljava/lang/String;

.field private v:J

.field private w:J

.field private x:Z

.field private y:J

.field private z:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/es;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->q:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->q:J

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->B:Ljava/lang/Boolean;

    .line 3
    sget v2, Lcom/google/android/gms/measurement/internal/ju;->a:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->B:Ljava/lang/Boolean;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fd;->x:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/fd;->x:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->r:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->r:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fd;->m:Ljava/lang/String;

    .line 4
    invoke-static {v2, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->m:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fd;->z:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/fd;->z:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->t:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->t:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/String;

    .line 4
    invoke-static {v2, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->v:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->v:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fd;->D:Ljava/lang/String;

    .line 4
    invoke-static {v2, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->D:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->w:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->w:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->n:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->n:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final f(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->C:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->C:J

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->o:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->o:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final g(J)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/fd;->p:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->p:J

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->s:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->s:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final h(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->E:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->E:J

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->u:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->u:Ljava/lang/String;

    return-void
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->q:J

    return-wide v0
.end method

.method public final i(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->F:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->F:J

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Ljava/lang/String;

    return-void
.end method

.method public final j()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->r:J

    return-wide v0
.end method

.method public final j(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/fd;->y:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fd;->y:J

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->t:J

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final n()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->v:J

    return-wide v0
.end method

.method public final o()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->w:J

    return-wide v0
.end method

.method public final p()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->C:J

    return-wide v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->x:Z

    return v0
.end method

.method public final r()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:J

    return-wide v0
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->E:J

    return-wide v0
.end method

.method public final t()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->F:J

    return-wide v0
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fd;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fd;->j:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->p:J

    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final w()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fd;->y:J

    return-wide v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fd;->z:Z

    return v0
.end method

.method public final y()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->B:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fd;->b:Ljava/util/List;

    return-object v0
.end method
