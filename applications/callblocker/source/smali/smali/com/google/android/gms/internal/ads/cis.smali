.class final Lcom/google/android/gms/internal/ads/cis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/civ;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/civ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/civ;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cis;->a:Lcom/google/android/gms/internal/ads/civ;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/cis;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cis;->d:I

    .line 4
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/cis;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cis;->e:I

    .line 6
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/cis;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cis;->b:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cis;->a:Lcom/google/android/gms/internal/ads/civ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/civ;->a:Z

    .line 9
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/cis;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cis;->c:I

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cis;->a:Lcom/google/android/gms/internal/ads/civ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/civ;->b:Z

    .line 12
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/cis;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cis;->f:I

    .line 14
    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/ads/civ;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cis;->a:Lcom/google/android/gms/internal/ads/civ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/civ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/civ;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cis;->a:Lcom/google/android/gms/internal/ads/civ;

    .line 17
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/civ;->a:Z

    .line 18
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/civ;->b:Z

    .line 19
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string/jumbo v1, "\n\tPool does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/cis;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v1, "\n\tNew pools created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/cis;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v1, "\n\tPools removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/cis;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v1, "\n\tEntries added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/cis;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v1, "\n\tNo entries retrieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/google/android/gms/internal/ads/cis;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
