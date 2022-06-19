.class final Landroidx/media2/exoplayer/external/audio/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/media/AudioTrack;

.field final b:Landroid/media/AudioTimestamp;

.field c:J

.field d:J

.field e:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/n$a;->a:Landroid/media/AudioTrack;

    .line 283
    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/n$a;->b:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 308
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/n$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
