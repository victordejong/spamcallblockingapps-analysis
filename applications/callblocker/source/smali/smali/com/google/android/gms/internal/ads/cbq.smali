.class public final Lcom/google/android/gms/internal/ads/cbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cbn;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ads/dvw;

.field b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/internal/ads/crs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dvw;Lcom/google/android/gms/internal/ads/crs;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbq;->a:Lcom/google/android/gms/internal/ads/dvw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cbq;->c:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cbq;->b:Landroid/content/Context;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cbn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbq;->c:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/cbp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cbp;-><init>(Lcom/google/android/gms/internal/ads/cbq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
