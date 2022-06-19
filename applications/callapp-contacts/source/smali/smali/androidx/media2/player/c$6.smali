.class final Landroidx/media2/player/c$6;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(Landroidx/media/AudioAttributesCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/AudioAttributesCompat;

.field final synthetic b:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZLandroidx/media/AudioAttributesCompat;)V
    .locals 0

    .line 359
    iput-object p1, p0, Landroidx/media2/player/c$6;->b:Landroidx/media2/player/c;

    iput-object p4, p0, Landroidx/media2/player/c$6;->a:Landroidx/media/AudioAttributesCompat;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 362
    iget-object v0, p0, Landroidx/media2/player/c$6;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget-object v1, p0, Landroidx/media2/player/c$6;->a:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x1

    .line 1298
    iput-boolean v2, v0, Landroidx/media2/player/e;->k:Z

    .line 1299
    iget-object v2, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-static {v1}, Landroidx/media2/player/d;->a(Landroidx/media/AudioAttributesCompat;)Landroidx/media2/exoplayer/external/audio/c;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/audio/c;)V

    .line 1302
    iget v1, v0, Landroidx/media2/player/e;->l:I

    if-eqz v1, :cond_0

    .line 1303
    iget-object v1, v0, Landroidx/media2/player/e;->g:Landroid/os/Handler;

    iget-object v2, v0, Landroidx/media2/player/e;->h:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    iget v0, v0, Landroidx/media2/player/e;->l:I

    .line 1789
    new-instance v3, Landroidx/media2/player/e$1;

    invoke-direct {v3, v2, v0}, Landroidx/media2/player/e$1;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
