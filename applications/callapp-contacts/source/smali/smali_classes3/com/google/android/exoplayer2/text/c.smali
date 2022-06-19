.class public abstract Lcom/google/android/exoplayer2/text/c;
.super Lcom/google/android/exoplayer2/decoder/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/g<",
        "Lcom/google/android/exoplayer2/text/h;",
        "Lcom/google/android/exoplayer2/text/i;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lcom/google/android/exoplayer2/text/f;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/android/exoplayer2/text/h;

    new-array v0, v0, [Lcom/google/android/exoplayer2/text/i;

    .line 36
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/decoder/g;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/f;)V

    .line 37
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/c;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/c;->e()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/text/h;Lcom/google/android/exoplayer2/text/i;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8

    .line 72
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/h;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/google/android/exoplayer2/text/c;->a([BIZ)Lcom/google/android/exoplayer2/text/e;

    move-result-object v5

    .line 74
    iget-wide v3, p1, Lcom/google/android/exoplayer2/text/h;->e:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/text/h;->g:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/i;->a(JLcom/google/android/exoplayer2/text/e;J)V

    .line 1087
    iget p1, p2, Lcom/google/android/exoplayer2/decoder/a;->a:I

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    iput p1, p2, Lcom/google/android/exoplayer2/decoder/a;->a:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method public static synthetic lambda$MjAfje3fZVm34KjRCGu1-GKlZqc(Lcom/google/android/exoplayer2/text/c;Lcom/google/android/exoplayer2/decoder/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/g;->a(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 27
    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    check-cast p2, Lcom/google/android/exoplayer2/text/i;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/c;->a(Lcom/google/android/exoplayer2/text/h;Lcom/google/android/exoplayer2/text/i;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 2

    .line 2063
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected abstract a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final synthetic g()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    .line 4053
    new-instance v0, Lcom/google/android/exoplayer2/text/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/h;-><init>()V

    return-object v0
.end method

.method public final synthetic h()Lcom/google/android/exoplayer2/decoder/f;
    .locals 2

    .line 3058
    new-instance v0, Lcom/google/android/exoplayer2/text/d;

    new-instance v1, Lcom/google/android/exoplayer2/text/-$$Lambda$c$MjAfje3fZVm34KjRCGu1-GKlZqc;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/text/-$$Lambda$c$MjAfje3fZVm34KjRCGu1-GKlZqc;-><init>(Lcom/google/android/exoplayer2/text/c;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/d;-><init>(Lcom/google/android/exoplayer2/decoder/f$a;)V

    return-object v0
.end method
