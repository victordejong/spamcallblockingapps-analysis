.class final Landroidx/media2/player/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/h;->b(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/h;


# direct methods
.method constructor <init>(Landroidx/media2/player/h;)V
    .locals 0

    .line 44
    iput-object p1, p0, Landroidx/media2/player/h$1;->a:Landroidx/media2/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/metadata/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 4

    .line 47
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/metadata/c;->d:J

    .line 48
    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 49
    new-instance v2, Landroidx/media2/player/ByteArrayFrame;

    array-length v3, p1

    .line 50
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Landroidx/media2/player/ByteArrayFrame;-><init>(J[B)V

    .line 51
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object p1
.end method
