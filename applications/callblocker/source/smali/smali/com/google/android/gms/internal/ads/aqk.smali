.class public final Lcom/google/android/gms/internal/ads/aqk;
.super Lcom/google/android/gms/internal/ads/ate;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ate",
        "<",
        "Lcom/google/android/gms/internal/ads/aql;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/aql;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ate;-><init>(Ljava/util/Set;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/aqn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/aqn;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/atg;)V

    .line 4
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/avh;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/aqo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/aqo;-><init>(Lcom/google/android/gms/internal/ads/aqk;Lcom/google/android/gms/internal/ads/avh;)V

    .line 10
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/auq;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/auq;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/auq;)V

    .line 12
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/aqm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/aqm;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/atg;)V

    .line 6
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/aqp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/aqp;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/atg;)V

    .line 8
    return-void
.end method
