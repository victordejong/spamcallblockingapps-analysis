.class public final Landroidx/media2/exoplayer/external/metadata/emsg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;
    .locals 9

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v4

    .line 59
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v6

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 2125
    iget p0, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 61
    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 62
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/metadata/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 3

    .line 42
    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/c;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 45
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v1, v0, p1}, Landroidx/media2/exoplayer/external/util/p;-><init>([BI)V

    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/emsg/a;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object v0
.end method
