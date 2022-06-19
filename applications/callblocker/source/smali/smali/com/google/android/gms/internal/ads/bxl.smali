.class final synthetic Lcom/google/android/gms/internal/ads/bxl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bxi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxl;->a:Lcom/google/android/gms/internal/ads/bxi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxl;->a:Lcom/google/android/gms/internal/ads/bxi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bxi;->b()Lcom/google/android/gms/internal/ads/bxn;

    move-result-object v0

    return-object v0
.end method
