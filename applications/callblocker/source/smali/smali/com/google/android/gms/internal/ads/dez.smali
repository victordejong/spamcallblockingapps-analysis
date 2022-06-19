.class final Lcom/google/android/gms/internal/ads/dez;
.super Lcom/google/android/gms/internal/ads/dbn;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dfb;

.field private b:Lcom/google/android/gms/internal/ads/dbr;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/dew;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dew;)V
    .locals 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dez;->c:Lcom/google/android/gms/internal/ads/dew;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbn;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dfb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dez;->c:Lcom/google/android/gms/internal/ads/dew;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dfb;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dez;->a:Lcom/google/android/gms/internal/ads/dfb;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dez;->b()Lcom/google/android/gms/internal/ads/dbr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dez;->b:Lcom/google/android/gms/internal/ads/dbr;

    return-void
.end method

.method private final b()Lcom/google/android/gms/internal/ads/dbr;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dez;->a:Lcom/google/android/gms/internal/ads/dfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfb;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dez;->a:Lcom/google/android/gms/internal/ads/dfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfb;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbr;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()B
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dez;->b:Lcom/google/android/gms/internal/ads/dbr;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dez;->b:Lcom/google/android/gms/internal/ads/dbr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbr;->a()B

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dez;->b:Lcom/google/android/gms/internal/ads/dbr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbr;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dez;->b()Lcom/google/android/gms/internal/ads/dbr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dez;->b:Lcom/google/android/gms/internal/ads/dbr;

    .line 11
    :cond_1
    return v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dez;->b:Lcom/google/android/gms/internal/ads/dbr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
