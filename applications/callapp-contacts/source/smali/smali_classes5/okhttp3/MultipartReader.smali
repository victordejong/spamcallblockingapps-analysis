.class public final Lokhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartReader$PartSource;,
        Lokhttp3/MultipartReader$Part;,
        Lokhttp3/MultipartReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bR\u0013\u0010\u0007\u001a\u00020\u00088\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0018\u00010\u0010R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/MultipartReader;",
        "Ljava/io/Closeable;",
        "response",
        "Lokhttp3/ResponseBody;",
        "(Lokhttp3/ResponseBody;)V",
        "source",
        "Lokio/BufferedSource;",
        "boundary",
        "",
        "(Lokio/BufferedSource;Ljava/lang/String;)V",
        "()Ljava/lang/String;",
        "closed",
        "",
        "crlfDashDashBoundary",
        "Lokio/ByteString;",
        "currentPart",
        "Lokhttp3/MultipartReader$PartSource;",
        "dashDashBoundary",
        "noMoreParts",
        "partCount",
        "",
        "close",
        "",
        "currentPartBytesRemaining",
        "",
        "maxResult",
        "nextPart",
        "Lokhttp3/MultipartReader$Part;",
        "Companion",
        "Part",
        "PartSource",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/MultipartReader$Companion;

.field private static final afterBoundaryOptions:Lc/s;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private closed:Z

.field private final crlfDashDashBoundary:Lc/i;

.field private currentPart:Lokhttp3/MultipartReader$PartSource;

.field private final dashDashBoundary:Lc/i;

.field private noMoreParts:Z

.field private partCount:I

.field private final source:Lc/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/MultipartReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/MultipartReader;->Companion:Lokhttp3/MultipartReader$Companion;

    .line 202
    sget-object v0, Lc/s;->d:Lc/s$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lc/i;

    .line 203
    sget-object v2, Lc/i;->d:Lc/i$a;

    const-string v2, "\r\n"

    invoke-static {v2}, Lc/i$a;->a(Ljava/lang/String;)Lc/i;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 204
    sget-object v2, Lc/i;->d:Lc/i$a;

    const-string v2, "--"

    invoke-static {v2}, Lc/i$a;->a(Ljava/lang/String;)Lc/i;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 205
    sget-object v2, Lc/i;->d:Lc/i$a;

    const-string v2, " "

    invoke-static {v2}, Lc/i$a;->a(Ljava/lang/String;)Lc/i;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 206
    sget-object v2, Lc/i;->d:Lc/i$a;

    const-string v2, "\t"

    invoke-static {v2}, Lc/i$a;->a(Ljava/lang/String;)Lc/i;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 202
    invoke-virtual {v0, v1}, Lc/s$a;->a([Lc/i;)Lc/s;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lc/s;

    return-void
.end method

.method public constructor <init>(Lc/h;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    iput-object p2, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 62
    new-instance p1, Lc/f;

    invoke-direct {p1}, Lc/f;-><init>()V

    const-string v0, "--"

    .line 63
    invoke-virtual {p1, v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p2}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lc/f;->q()Lc/i;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lc/i;

    .line 71
    new-instance p1, Lc/f;

    invoke-direct {p1}, Lc/f;-><init>()V

    const-string v0, "\r\n--"

    .line 72
    invoke-virtual {p1, v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lc/f;->q()Lc/i;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lc/i;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lc/h;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lokhttp3/MediaType;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0, v0, p1}, Lokhttp3/MultipartReader;-><init>(Lc/h;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected the Content-Type to have a boundary parameter"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final synthetic access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getAfterBoundaryOptions$cp()Lc/s;
    .locals 1

    .line 57
    sget-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lc/s;

    return-object v0
.end method

.method public static final synthetic access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;
    .locals 0

    .line 57
    iget-object p0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/MultipartReader;)Lc/h;
    .locals 0

    .line 57
    iget-object p0, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    return-object p0
.end method

.method public static final synthetic access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    return-void
.end method

.method private final currentPartBytesRemaining(J)J
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 178
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Lc/h;

    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lc/i;

    .line 4124
    invoke-virtual {v4}, Lc/i;->f()I

    move-result v4

    int-to-long v4, v4

    .line 178
    invoke-interface {v3, v4, v5}, Lc/h;->a(J)V

    .line 180
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Lc/h;

    invoke-interface {v3}, Lc/h;->b()Lc/f;

    move-result-object v3

    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lc/i;

    const-string v5, "bytes"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4469
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6124
    invoke-virtual {v4}, Lc/i;->f()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_d

    .line 5911
    iget-object v5, v3, Lc/f;->a:Lc/y;

    const-wide/16 v7, 0x1

    if-nez v5, :cond_1

    goto/16 :goto_7

    .line 7073
    :cond_1
    iget-wide v11, v3, Lc/f;->b:J

    const-wide/16 v13, 0x0

    sub-long/2addr v11, v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_6

    .line 8073
    iget-wide v11, v3, Lc/f;->b:J

    :goto_1
    cmp-long v15, v11, v13

    if-lez v15, :cond_2

    .line 5943
    iget-object v5, v5, Lc/y;->g:Lc/y;

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 5944
    iget v15, v5, Lc/y;->c:I

    iget v9, v5, Lc/y;->b:I

    sub-int/2addr v15, v9

    int-to-long v9, v15

    sub-long/2addr v11, v9

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    goto/16 :goto_7

    .line 5917
    :cond_3
    invoke-virtual {v4}, Lc/i;->h()[B

    move-result-object v9

    .line 5918
    aget-byte v6, v9, v6

    .line 8124
    invoke-virtual {v4}, Lc/i;->f()I

    move-result v4

    .line 9073
    iget-wide v13, v3, Lc/f;->b:J

    move-wide/from16 v18, v11

    int-to-long v10, v4

    sub-long/2addr v13, v10

    add-long/2addr v13, v7

    move-wide/from16 v11, v18

    const-wide/16 v16, 0x0

    :goto_2
    cmp-long v3, v11, v13

    if-gez v3, :cond_b

    .line 5923
    iget-object v3, v5, Lc/y;->a:[B

    .line 5924
    iget v10, v5, Lc/y;->c:I

    iget v15, v5, Lc/y;->b:I

    int-to-long v7, v15

    add-long/2addr v7, v13

    sub-long/2addr v7, v11

    move-wide/from16 v20, v13

    int-to-long v13, v10

    .line 5925
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 5926
    iget v7, v5, Lc/y;->b:I

    int-to-long v13, v7

    add-long v13, v13, v16

    sub-long/2addr v13, v11

    long-to-int v7, v13

    :goto_3
    if-ge v7, v8, :cond_5

    .line 5927
    aget-byte v10, v3, v7

    if-ne v10, v6, :cond_4

    add-int/lit8 v10, v7, 0x1

    invoke-static {v5, v10, v9, v4}, Lc/a/a;->a(Lc/y;I[BI)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5928
    iget v3, v5, Lc/y;->b:I

    sub-int/2addr v7, v3

    int-to-long v3, v7

    add-long/2addr v3, v11

    goto/16 :goto_8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5933
    :cond_5
    iget v3, v5, Lc/y;->c:I

    iget v7, v5, Lc/y;->b:I

    sub-int/2addr v3, v7

    int-to-long v7, v3

    add-long v16, v11, v7

    .line 5935
    iget-object v5, v5, Lc/y;->f:Lc/y;

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide/from16 v11, v16

    move-wide/from16 v13, v20

    const-wide/16 v7, 0x1

    goto :goto_2

    :cond_6
    const-wide/16 v7, 0x0

    .line 5951
    :goto_4
    iget v9, v5, Lc/y;->c:I

    iget v10, v5, Lc/y;->b:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-gtz v13, :cond_7

    .line 5953
    iget-object v5, v5, Lc/y;->f:Lc/y;

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v7, v9

    goto :goto_4

    :cond_7
    if-nez v5, :cond_8

    goto :goto_7

    .line 5917
    :cond_8
    invoke-virtual {v4}, Lc/i;->h()[B

    move-result-object v9

    .line 5918
    aget-byte v6, v9, v6

    .line 9124
    invoke-virtual {v4}, Lc/i;->f()I

    move-result v4

    .line 10073
    iget-wide v13, v3, Lc/f;->b:J

    int-to-long v11, v4

    sub-long/2addr v13, v11

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    const-wide/16 v16, 0x0

    :goto_5
    cmp-long v3, v7, v13

    if-gez v3, :cond_b

    .line 5923
    iget-object v3, v5, Lc/y;->a:[B

    .line 5924
    iget v10, v5, Lc/y;->c:I

    iget v11, v5, Lc/y;->b:I

    int-to-long v11, v11

    add-long/2addr v11, v13

    sub-long/2addr v11, v7

    move-wide/from16 v20, v13

    int-to-long v13, v10

    .line 5925
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v11, v10

    .line 5926
    iget v10, v5, Lc/y;->b:I

    int-to-long v12, v10

    add-long v12, v12, v16

    sub-long/2addr v12, v7

    long-to-int v10, v12

    :goto_6
    if-ge v10, v11, :cond_a

    .line 5927
    aget-byte v12, v3, v10

    if-ne v12, v6, :cond_9

    add-int/lit8 v12, v10, 0x1

    invoke-static {v5, v12, v9, v4}, Lc/a/a;->a(Lc/y;I[BI)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 5928
    iget v3, v5, Lc/y;->b:I

    sub-int/2addr v10, v3

    int-to-long v3, v10

    add-long/2addr v3, v7

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 5933
    :cond_a
    iget v3, v5, Lc/y;->c:I

    iget v10, v5, Lc/y;->b:I

    sub-int/2addr v3, v10

    int-to-long v10, v3

    add-long v16, v7, v10

    .line 5935
    iget-object v5, v5, Lc/y;->f:Lc/y;

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide/from16 v7, v16

    move-wide/from16 v13, v20

    goto :goto_5

    :cond_b
    :goto_7
    const-wide/16 v3, -0x1

    :goto_8
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_c

    .line 181
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Lc/h;

    invoke-interface {v3}, Lc/h;->b()Lc/f;

    move-result-object v3

    .line 11073
    iget-wide v3, v3, Lc/f;->b:J

    .line 181
    iget-object v5, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lc/i;

    .line 11124
    invoke-virtual {v5}, Lc/i;->f()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 181
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1

    .line 182
    :cond_c
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1

    .line 5906
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes is empty"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 191
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    invoke-interface {v0}, Lc/h;->close()V

    return-void
.end method

.method public final nextPart()Lokhttp3/MultipartReader$Part;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 94
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 97
    :cond_0
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    iget-object v5, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lc/i;

    invoke-interface {v0, v3, v4, v5}, Lc/h;->a(JLc/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    iget-object v3, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Lc/i;

    .line 2124
    invoke-virtual {v3}, Lc/i;->f()I

    move-result v3

    int-to-long v3, v3

    .line 99
    invoke-interface {v0, v3, v4}, Lc/h;->h(J)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v5, 0x2000

    .line 103
    invoke-direct {p0, v5, v6}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    invoke-interface {v0, v5, v6}, Lc/h;->h(J)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    iget-object v3, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Lc/i;

    .line 3124
    invoke-virtual {v3}, Lc/i;->f()I

    move-result v3

    int-to-long v3, v3

    .line 107
    invoke-interface {v0, v3, v4}, Lc/h;->h(J)V

    :goto_1
    const/4 v0, 0x0

    .line 113
    :goto_2
    iget-object v3, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    sget-object v4, Lokhttp3/MultipartReader;->afterBoundaryOptions:Lc/s;

    invoke-interface {v3, v4}, Lc/h;->a(Lc/s;)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "unexpected characters after boundary"

    if-eq v3, v4, :cond_8

    if-eqz v3, :cond_7

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    .line 123
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    if-eqz v0, :cond_5

    .line 124
    iput-boolean v1, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    return-object v2

    .line 123
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "expected at least 1 part"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 122
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 116
    :cond_7
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 139
    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    iget-object v1, p0, Lokhttp3/MultipartReader;->source:Lc/h;

    invoke-direct {v0, v1}, Lokhttp3/internal/http1/HeadersReader;-><init>(Lc/h;)V

    invoke-virtual {v0}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    move-result-object v0

    .line 140
    new-instance v1, Lokhttp3/MultipartReader$PartSource;

    invoke-direct {v1, p0}, Lokhttp3/MultipartReader$PartSource;-><init>(Lokhttp3/MultipartReader;)V

    .line 141
    iput-object v1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 142
    new-instance v2, Lokhttp3/MultipartReader$Part;

    check-cast v1, Lc/ad;

    .line 4001
    invoke-static {v1}, Lc/r;->a(Lc/ad;)Lc/h;

    move-result-object v1

    .line 142
    invoke-direct {v2, v0, v1}, Lokhttp3/MultipartReader$Part;-><init>(Lokhttp3/Headers;Lc/h;)V

    return-object v2

    .line 134
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 92
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
