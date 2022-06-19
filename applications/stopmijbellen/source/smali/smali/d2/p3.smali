.class public Ld2/p3;
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
    iput-object p1, p0, Ld2/p3;->a:Ld2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/p3;->a:Ld2/r3;

    invoke-static {v0, p1}, Ld2/r3;->a(Ld2/r3;Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ld2/p3;->a:Ld2/r3;

    .line 3
    iget-boolean v1, v0, Ld2/r3;->w:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, v0, Ld2/r3;->s:Z

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v2, v0, Ld2/r3;->s:Z

    .line 6
    :cond_1
    iput-object p1, v0, Ld2/r3;->N:Ld2/t0;

    .line 7
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "time"

    .line 8
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 v1, p1, 0x3e8

    .line 9
    iget-object v2, v0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    .line 10
    iget-object v3, v0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 11
    iget-object v3, v0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v1, 0x1

    if-ne v2, p1, :cond_2

    .line 12
    iput-boolean v1, v0, Ld2/r3;->s:Z

    :cond_2
    :goto_0
    return-void
.end method
