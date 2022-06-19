.class public final Lcom/google/android/gms/internal/ads/but;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cqt",
        "<",
        "Lcom/google/android/gms/internal/ads/pw;",
        "Lcom/google/android/gms/internal/ads/buu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lcom/google/android/gms/internal/ads/bkg;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bkg;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/but;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/but;->b:Lcom/google/android/gms/internal/ads/bkg;

    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/pw;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/but;->b:Lcom/google/android/gms/internal/ads/bkg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bkg;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/bus;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bus;-><init>(Lcom/google/android/gms/internal/ads/pw;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/but;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 8
    return-object v0
.end method
