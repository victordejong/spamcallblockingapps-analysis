.class public Ld2/q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/r3;


# direct methods
.method public constructor <init>(Ld2/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/q3;->a:Ld2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/q3;->a:Ld2/r3;

    invoke-static {v0, p1}, Ld2/r3;->a(Ld2/r3;Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld2/q3;->a:Ld2/r3;

    .line 3
    iget-boolean v1, v0, Ld2/r3;->w:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "volume"

    .line 5
    invoke-static {v1, v2}, Ld2/e4;->p(Ld2/f4;Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    .line 7
    iget-object v2, v2, Ld2/f1;->o:Ld2/q;

    .line 8
    iget-object v0, v0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 9
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const/4 v1, 0x1

    const-string v2, "success"

    .line 10
    invoke-static {v0, v2, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 11
    invoke-virtual {p1, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :cond_1
    :goto_0
    return-void
.end method
