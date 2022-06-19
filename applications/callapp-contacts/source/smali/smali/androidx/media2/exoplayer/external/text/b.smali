.class public abstract Landroidx/media2/exoplayer/external/text/b;
.super Landroidx/media2/exoplayer/external/b/g;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/b/g<",
        "Landroidx/media2/exoplayer/external/text/g;",
        "Landroidx/media2/exoplayer/external/text/h;",
        "Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;",
        ">;",
        "Landroidx/media2/exoplayer/external/text/e;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/media2/exoplayer/external/text/g;

    new-array v0, v0, [Landroidx/media2/exoplayer/external/text/h;

    .line 42
    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/b/g;-><init>([Landroidx/media2/exoplayer/external/b/e;[Landroidx/media2/exoplayer/external/b/f;)V

    .line 43
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/b;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/b;->e()V

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/text/g;Landroidx/media2/exoplayer/external/text/h;Z)Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
    .locals 8

    .line 83
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/g;->c:Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Landroidx/media2/exoplayer/external/text/b;->a([BIZ)Landroidx/media2/exoplayer/external/text/d;

    move-result-object v5

    .line 85
    iget-wide v3, p1, Landroidx/media2/exoplayer/external/text/g;->d:J

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/text/g;->f:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/media2/exoplayer/external/text/h;->a(JLandroidx/media2/exoplayer/external/text/d;J)V

    .line 1093
    iget p1, p2, Landroidx/media2/exoplayer/external/b/a;->a:I

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    iput p1, p2, Landroidx/media2/exoplayer/external/b/a;->a:I
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method


# virtual methods
.method protected abstract a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method public final bridge synthetic a(Landroidx/media2/exoplayer/external/b/e;Landroidx/media2/exoplayer/external/b/f;Z)Ljava/lang/Exception;
    .locals 0

    .line 31
    check-cast p1, Landroidx/media2/exoplayer/external/text/g;

    check-cast p2, Landroidx/media2/exoplayer/external/text/h;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/b;->a(Landroidx/media2/exoplayer/external/text/g;Landroidx/media2/exoplayer/external/text/h;Z)Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 2

    .line 2069
    new-instance v0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Landroidx/media2/exoplayer/external/b/f;)V
    .locals 0

    .line 31
    check-cast p1, Landroidx/media2/exoplayer/external/text/h;

    .line 4074
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/b/g;->a(Landroidx/media2/exoplayer/external/b/f;)V

    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/text/h;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/b/g;->a(Landroidx/media2/exoplayer/external/b/f;)V

    return-void
.end method

.method public final synthetic g()Landroidx/media2/exoplayer/external/b/e;
    .locals 1

    .line 4059
    new-instance v0, Landroidx/media2/exoplayer/external/text/g;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/g;-><init>()V

    return-object v0
.end method

.method public final synthetic h()Landroidx/media2/exoplayer/external/b/f;
    .locals 1

    .line 3064
    new-instance v0, Landroidx/media2/exoplayer/external/text/c;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/text/c;-><init>(Landroidx/media2/exoplayer/external/text/b;)V

    return-object v0
.end method
