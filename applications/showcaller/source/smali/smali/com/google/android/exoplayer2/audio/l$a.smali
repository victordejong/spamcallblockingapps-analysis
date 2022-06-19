.class public final Lcom/google/android/exoplayer2/audio/l$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/audio/l;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/l$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/l$a;->b:Lcom/google/android/exoplayer2/audio/l;

    return-void
.end method

.method private synthetic g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->b:Lcom/google/android/exoplayer2/audio/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/l;->a(I)V

    return-void
.end method

.method private synthetic i(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->b:Lcom/google/android/exoplayer2/audio/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/audio/l;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/l;->x(IJJ)V

    return-void
.end method

.method private synthetic k(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->b:Lcom/google/android/exoplayer2/audio/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/audio/l;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/l;->m(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic m(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1/d;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->b:Lcom/google/android/exoplayer2/audio/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/l;->b(Lcom/google/android/exoplayer2/b1/d;)V

    return-void
.end method

.method private synthetic o(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->b:Lcom/google/android/exoplayer2/audio/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/l;->c(Lcom/google/android/exoplayer2/b1/d;)V

    return-void
.end method

.method private synthetic q(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->b:Lcom/google/android/exoplayer2/audio/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/l;->v(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/c;-><init>(Lcom/google/android/exoplayer2/audio/l$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/audio/b;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/b;-><init>(Lcom/google/android/exoplayer2/audio/l$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/audio/d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/d;-><init>(Lcom/google/android/exoplayer2/audio/l$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1/d;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/audio/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/f;-><init>(Lcom/google/android/exoplayer2/audio/l$a;Lcom/google/android/exoplayer2/b1/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/e;-><init>(Lcom/google/android/exoplayer2/audio/l$a;Lcom/google/android/exoplayer2/b1/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/a;-><init>(Lcom/google/android/exoplayer2/audio/l$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic h(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/l$a;->g(I)V

    return-void
.end method

.method public synthetic j(IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/l$a;->i(IJJ)V

    return-void
.end method

.method public synthetic l(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/l$a;->k(Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic n(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/l$a;->m(Lcom/google/android/exoplayer2/b1/d;)V

    return-void
.end method

.method public synthetic p(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/l$a;->o(Lcom/google/android/exoplayer2/b1/d;)V

    return-void
.end method

.method public synthetic r(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/l$a;->q(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
