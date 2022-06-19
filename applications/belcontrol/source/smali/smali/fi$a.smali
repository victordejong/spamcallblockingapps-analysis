.class public final Lfi$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lfi;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lfi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lfi$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lfi$a;->b:Lfi;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lfi$a;->b:Lfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi$a;->a:Landroid/os/Handler;

    new-instance v1, Lei;

    invoke-direct {v1, p0, p1}, Lei;-><init>(Lfi$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(IJJ)V
    .locals 9

    iget-object v0, p0, Lfi$a;->b:Lfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi$a;->a:Landroid/os/Handler;

    new-instance v8, Lci;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lci;-><init>(Lfi$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lfi$a;->b:Lfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi$a;->a:Landroid/os/Handler;

    new-instance v8, Lai;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lai;-><init>(Lfi$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(Lyi;)V
    .locals 2

    invoke-virtual {p1}, Lyi;->a()V

    iget-object v0, p0, Lfi$a;->b:Lfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi$a;->a:Landroid/os/Handler;

    new-instance v1, Ldi;

    invoke-direct {v1, p0, p1}, Ldi;-><init>(Lfi$a;Lyi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public e(Lyi;)V
    .locals 2

    iget-object v0, p0, Lfi$a;->b:Lfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi$a;->a:Landroid/os/Handler;

    new-instance v1, Lzh;

    invoke-direct {v1, p0, p1}, Lzh;-><init>(Lfi$a;Lyi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public f(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    iget-object v0, p0, Lfi$a;->b:Lfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi$a;->a:Landroid/os/Handler;

    new-instance v1, Lbi;

    invoke-direct {v1, p0, p1}, Lbi;-><init>(Lfi$a;Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic g(I)V
    .locals 1

    iget-object v0, p0, Lfi$a;->b:Lfi;

    invoke-interface {v0, p1}, Lfi;->onAudioSessionId(I)V

    return-void
.end method

.method public final synthetic h(IJJ)V
    .locals 6

    iget-object v0, p0, Lfi$a;->b:Lfi;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lfi;->onAudioSinkUnderrun(IJJ)V

    return-void
.end method

.method public final synthetic i(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lfi$a;->b:Lfi;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lfi;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic j(Lyi;)V
    .locals 1

    invoke-virtual {p1}, Lyi;->a()V

    iget-object v0, p0, Lfi$a;->b:Lfi;

    invoke-interface {v0, p1}, Lfi;->r(Lyi;)V

    return-void
.end method

.method public final synthetic k(Lyi;)V
    .locals 1

    iget-object v0, p0, Lfi$a;->b:Lfi;

    invoke-interface {v0, p1}, Lfi;->i(Lyi;)V

    return-void
.end method

.method public final synthetic l(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    iget-object v0, p0, Lfi$a;->b:Lfi;

    invoke-interface {v0, p1}, Lfi;->u(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
