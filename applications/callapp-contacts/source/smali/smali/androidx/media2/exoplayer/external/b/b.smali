.class public final Landroidx/media2/exoplayer/external/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/b/b$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Landroidx/media2/exoplayer/external/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 72
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    new-instance v1, Landroidx/media2/exoplayer/external/b/b$a;

    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/b/b$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;Landroidx/media2/exoplayer/external/b/b$1;)V

    move-object v2, v1

    :cond_0
    iput-object v2, p0, Landroidx/media2/exoplayer/external/b/b;->j:Landroidx/media2/exoplayer/external/b/b$a;

    return-void
.end method
