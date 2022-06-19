.class final Landroidx/media2/player/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;I)V
    .locals 0

    .line 789
    iput-object p1, p0, Landroidx/media2/player/e$1;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    iput p2, p0, Landroidx/media2/player/e$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 792
    iget-object v0, p0, Landroidx/media2/player/e$1;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    iget v1, p0, Landroidx/media2/player/e$1;->b:I

    .line 1886
    iget v2, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    if-eq v2, v1, :cond_0

    .line 1887
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    .line 1888
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i()V

    :cond_0
    return-void
.end method
