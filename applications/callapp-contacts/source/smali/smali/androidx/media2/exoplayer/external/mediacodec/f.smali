.class final synthetic Landroidx/media2/exoplayer/external/mediacodec/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/f;->a:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/f;->a:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;

    invoke-static {v0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
