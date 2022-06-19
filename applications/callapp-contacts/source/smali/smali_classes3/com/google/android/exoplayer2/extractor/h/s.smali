.class public final Lcom/google/android/exoplayer2/extractor/h/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/x;


# instance fields
.field private a:Lcom/google/android/exoplayer2/Format;

.field private b:Lcom/google/android/exoplayer2/util/ad;

.field private c:Lcom/google/android/exoplayer2/extractor/x;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 1370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/s;->a:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/s;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 55
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 56
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/s;->c:Lcom/google/android/exoplayer2/extractor/x;

    .line 59
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/s;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 9

    .line 2086
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/s;->b:Lcom/google/android/exoplayer2/util/ad;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/s;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/s;->b:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ad;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/s;->a:Lcom/google/android/exoplayer2/Format;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 71
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/s;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v2

    .line 2414
    iput-wide v0, v2, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 71
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/s;->a:Lcom/google/android/exoplayer2/Format;

    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/s;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/s;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v0, p1, v6}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 76
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/s;->c:Lcom/google/android/exoplayer2/extractor/x;

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/s;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ad;->b()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 76
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    return-void
.end method
