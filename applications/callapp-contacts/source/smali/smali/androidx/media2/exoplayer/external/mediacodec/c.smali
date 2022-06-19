.class final synthetic Landroidx/media2/exoplayer/external/mediacodec/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$e;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/c;->a:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/c;->a:Landroidx/media2/exoplayer/external/Format;

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/a;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/mediacodec/a;)I

    move-result p1

    return p1
.end method
