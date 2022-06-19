.class public Lcom/bumptech/glide/f/h;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;
.implements Lcom/bumptech/glide/f/c;


# instance fields
.field private final a:Lcom/bumptech/glide/f/c;

.field private b:Lcom/bumptech/glide/f/b;

.field private c:Lcom/bumptech/glide/f/b;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/h;-><init>(Lcom/bumptech/glide/f/c;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/f/c;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    .line 25
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->b(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->d(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->c(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    invoke-interface {v0}, Lcom/bumptech/glide/f/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f/h;->d:Z

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->a()V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/f/h;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->a()V

    .line 121
    :cond_1
    return-void
.end method

.method public a(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    .line 29
    iput-object p2, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    .line 30
    return-void
.end method

.method public a(Lcom/bumptech/glide/f/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 172
    instance-of v1, p1, Lcom/bumptech/glide/f/h;

    if-eqz v1, :cond_0

    .line 173
    check-cast p1, Lcom/bumptech/glide/f/h;

    .line 174
    iget-object v1, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    if-nez v1, :cond_0

    .line 175
    :goto_1
    const/4 v0, 0x1

    .line 177
    :cond_0
    return v0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    iget-object v2, p1, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/f/b;->a(Lcom/bumptech/glide/f/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    iget-object v2, p1, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    .line 175
    invoke-interface {v1, v2}, Lcom/bumptech/glide/f/b;->a(Lcom/bumptech/glide/f/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/f/h;->d:Z

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->b()V

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->b()V

    .line 128
    return-void
.end method

.method public b(Lcom/bumptech/glide/f/b;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/bumptech/glide/f/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->c()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/bumptech/glide/f/b;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/f/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/f/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 143
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/bumptech/glide/f/b;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/bumptech/glide/f/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/bumptech/glide/f/b;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->e(Lcom/bumptech/glide/f/b;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->b()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/bumptech/glide/f/b;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->a:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->f(Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->g()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->b:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->h()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/f/h;->c:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->h()V

    .line 168
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/bumptech/glide/f/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/f/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
