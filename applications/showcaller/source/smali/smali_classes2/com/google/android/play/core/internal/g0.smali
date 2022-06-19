.class public final Lcom/google/android/play/core/internal/g0;
.super Lcom/google/android/play/core/internal/f0;


# instance fields
.field private final d:Lcom/google/android/play/core/internal/f0;

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/f0;JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/internal/f0;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/g0;->d:Lcom/google/android/play/core/internal/f0;

    invoke-direct {p0, p2, p3}, Lcom/google/android/play/core/internal/g0;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/play/core/internal/g0;->e:J

    add-long/2addr p1, p4

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/internal/g0;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/play/core/internal/g0;->f:J

    return-void
.end method

.method private final g(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/g0;->d:Lcom/google/android/play/core/internal/f0;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/f0;->a()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/internal/g0;->d:Lcom/google/android/play/core/internal/f0;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/f0;->a()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/play/core/internal/g0;->f:J

    iget-wide v2, p0, Lcom/google/android/play/core/internal/g0;->e:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method protected final e(JJ)Ljava/io/InputStream;
    .locals 1

    iget-wide p1, p0, Lcom/google/android/play/core/internal/g0;->e:J

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/internal/g0;->g(J)J

    move-result-wide p1

    add-long/2addr p3, p1

    invoke-direct {p0, p3, p4}, Lcom/google/android/play/core/internal/g0;->g(J)J

    move-result-wide p3

    iget-object v0, p0, Lcom/google/android/play/core/internal/g0;->d:Lcom/google/android/play/core/internal/f0;

    sub-long/2addr p3, p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/play/core/internal/f0;->e(JJ)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
