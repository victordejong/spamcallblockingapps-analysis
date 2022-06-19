.class public Lsv$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsv;->b(Landroidx/media2/exoplayer/external/Format;)Lfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lsv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lho;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 4

    iget-wide v0, p1, Lzi;->d:J

    iget-object p1, p1, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    new-instance v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Landroidx/media2/player/exoplayer/ByteArrayFrame;-><init>(J[B)V

    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object p1
.end method
