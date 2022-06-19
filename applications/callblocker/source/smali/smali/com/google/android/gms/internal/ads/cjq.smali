.class final Lcom/google/android/gms/internal/ads/cjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/cjp;

.field private c:J

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cjp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cjp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->b:Lcom/google/android/gms/internal/ads/cjp;

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/ads/cjq;->d:I

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/cjq;->e:I

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/cjq;->f:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:J

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cjq;->c:J

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cjq;->c:J

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/cjq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cjq;->d:I

    .line 11
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/cjq;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cjq;->e:I

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->b:Lcom/google/android/gms/internal/ads/cjp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/cjp;->a:Z

    .line 14
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/cjq;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cjq;->f:I

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->b:Lcom/google/android/gms/internal/ads/cjp;

    iget v1, v0, Lcom/google/android/gms/internal/ads/cjp;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/cjp;->b:I

    .line 17
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cjq;->c:J

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/cjq;->d:I

    return v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/cjp;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->b:Lcom/google/android/gms/internal/ads/cjp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjp;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjq;->b:Lcom/google/android/gms/internal/ads/cjp;

    .line 23
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/cjp;->a:Z

    .line 24
    iput v2, v1, Lcom/google/android/gms/internal/ads/cjp;->b:I

    .line 25
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string/jumbo v1, "Created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cjq;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v1, " Last accessed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cjq;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo v1, " Accesses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Lcom/google/android/gms/internal/ads/cjq;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, "\nEntries retrieved: Valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p0, Lcom/google/android/gms/internal/ads/cjq;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, " Stale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/google/android/gms/internal/ads/cjq;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
