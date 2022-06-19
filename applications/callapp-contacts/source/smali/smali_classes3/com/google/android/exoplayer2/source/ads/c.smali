.class public final Lcom/google/android/exoplayer2/source/ads/c;
.super Lcom/google/android/exoplayer2/source/j;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/exoplayer2/source/ads/a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/ads/a;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/j;-><init>(Lcom/google/android/exoplayer2/al;)V

    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:Lcom/google/android/exoplayer2/source/ads/a;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
    .locals 11

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/c;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 48
    iget-wide v0, p2, Lcom/google/android/exoplayer2/al$a;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:Lcom/google/android/exoplayer2/source/ads/a;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/ads/a;->g:J

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lcom/google/android/exoplayer2/al$a;->d:J

    :goto_0
    move-wide v6, v0

    .line 49
    iget-object v3, p2, Lcom/google/android/exoplayer2/al$a;->a:Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    iget v5, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1532
    iget-wide v8, p2, Lcom/google/android/exoplayer2/al$a;->e:J

    .line 54
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ads/c;->c:Lcom/google/android/exoplayer2/source/ads/a;

    move-object v2, p2

    .line 49
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer2/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/a;)Lcom/google/android/exoplayer2/al$a;

    return-object p2
.end method
