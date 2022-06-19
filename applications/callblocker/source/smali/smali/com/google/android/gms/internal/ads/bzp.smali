.class final synthetic Lcom/google/android/gms/internal/ads/bzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzp;->a:Lcom/google/android/gms/internal/ads/bzm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzp;->a:Lcom/google/android/gms/internal/ads/bzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bzm;->b()Lcom/google/android/gms/internal/ads/bzn;

    move-result-object v0

    return-object v0
.end method
