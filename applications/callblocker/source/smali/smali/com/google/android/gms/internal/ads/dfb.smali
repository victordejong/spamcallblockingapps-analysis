.class final Lcom/google/android/gms/internal/ads/dfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/internal/ads/dbu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/android/gms/internal/ads/dew;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/dbu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dew;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/dew;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->i()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->a:Ljava/util/ArrayDeque;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dew;->a(Lcom/google/android/gms/internal/ads/dew;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dfb;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->b:Lcom/google/android/gms/internal/ads/dbu;

    .line 10
    :goto_0
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->a:Ljava/util/ArrayDeque;

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/dbu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfb;->b:Lcom/google/android/gms/internal/ads/dbu;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dfb;-><init>(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbu;
    .locals 2

    .prologue
    .line 11
    move-object v0, p1

    .line 12
    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/dew;

    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/dew;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dfb;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dew;->a(Lcom/google/android/gms/internal/ads/dew;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/dbu;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->b:Lcom/google/android/gms/internal/ads/dbu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->b:Lcom/google/android/gms/internal/ads/dbu;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dfb;->b:Lcom/google/android/gms/internal/ads/dbu;

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->a:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->b:Lcom/google/android/gms/internal/ads/dbu;

    .line 33
    return-object v1

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfb;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dew;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dew;->b(Lcom/google/android/gms/internal/ads/dew;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dfb;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbu;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->c()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
