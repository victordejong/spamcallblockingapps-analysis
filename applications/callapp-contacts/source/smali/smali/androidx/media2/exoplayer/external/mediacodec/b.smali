.class public interface abstract Landroidx/media2/exoplayer/external/mediacodec/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/mediacodec/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/b$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/mediacodec/b$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/b;->a:Landroidx/media2/exoplayer/external/mediacodec/b;

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/media2/exoplayer/external/mediacodec/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
