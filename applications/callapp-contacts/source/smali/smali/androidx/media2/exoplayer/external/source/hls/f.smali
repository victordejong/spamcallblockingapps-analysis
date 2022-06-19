.class public interface abstract Landroidx/media2/exoplayer/external/source/hls/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/f$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/source/hls/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/c;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/hls/c;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/f;->a:Landroidx/media2/exoplayer/external/source/hls/f;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/media2/exoplayer/external/extractor/g;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/source/hls/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/g;",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/util/z;",
            "Landroidx/media2/exoplayer/external/extractor/h;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/f$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
