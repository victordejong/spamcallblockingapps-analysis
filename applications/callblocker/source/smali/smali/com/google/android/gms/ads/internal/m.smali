.class final Lcom/google/android/gms/ads/internal/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/ads/ctl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->a:Lcom/google/android/gms/ads/internal/l;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->c(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/l;->d(Lcom/google/android/gms/ads/internal/l;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cum;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/cum;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/ctl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ctl;-><init>(Lcom/google/android/gms/internal/ads/cjd;)V

    .line 6
    return-object v1
.end method
