.class final Lcom/google/android/exoplayer2/extractor/g/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:J

.field private b:Lcom/google/android/exoplayer2/extractor/p;

.field private c:Lcom/google/android/exoplayer2/extractor/p$a;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/p;Lcom/google/android/exoplayer2/extractor/p$a;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->b:Lcom/google/android/exoplayer2/extractor/p;

    .line 127
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->c:Lcom/google/android/exoplayer2/extractor/p$a;

    const-wide/16 p1, -0x1

    .line 128
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->a:J

    .line 129
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;)J
    .locals 6

    .line 138
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->d:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 140
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->d:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final a()Lcom/google/android/exoplayer2/extractor/v;
    .locals 5

    .line 157
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/extractor/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->b:Lcom/google/android/exoplayer2/extractor/p;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->a:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/o;-><init>(Lcom/google/android/exoplayer2/extractor/p;J)V

    return-object v0
.end method

.method public final a(J)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->c:Lcom/google/android/exoplayer2/extractor/p$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/p$a;->a:[J

    const/4 v1, 0x1

    .line 150
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/af;->a([JJZ)I

    move-result p1

    .line 152
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/b$a;->d:J

    return-void
.end method
