.class final Lcom/google/android/gms/internal/ads/z50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xi0;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/x50;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x50;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z50;->a:Lcom/google/android/gms/internal/ads/x50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z50;->a:Lcom/google/android/gms/internal/ads/x50;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cj0;->d()V

    return-void
.end method
