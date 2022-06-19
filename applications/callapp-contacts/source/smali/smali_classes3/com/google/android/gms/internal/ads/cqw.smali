.class final Lcom/google/android/gms/internal/ads/cqw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/crj<",
            "*>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lcom/google/android/gms/internal/ads/crz;

.field private final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/cqw;->b:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/cqw;->d:I

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/crz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/crz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqw;->d()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created: "

    .line 1027
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/crz;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Last accessed: "

    .line 1029
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/crz;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Accesses: "

    .line 1031
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    iget v2, v0, Lcom/google/android/gms/internal/ads/crz;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nEntries retrieved: Valid: "

    .line 1033
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    iget v2, v0, Lcom/google/android/gms/internal/ads/crz;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Stale: "

    .line 1035
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    iget v0, v0, Lcom/google/android/gms/internal/ads/crz;->f:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cry;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 2021
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/crz;->b:Lcom/google/android/gms/internal/ads/cry;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cry;

    .line 2022
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/crz;->b:Lcom/google/android/gms/internal/ads/cry;

    const/4 v2, 0x0

    .line 2023
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/cry;->a:Z

    .line 2024
    iput v2, v0, Lcom/google/android/gms/internal/ads/cry;->b:I

    return-object v1
.end method

.method final d()V
    .locals 5

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crj;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/crj;->d:J

    sub-long/2addr v1, v3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/cqw;->d:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/crz;->b()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
