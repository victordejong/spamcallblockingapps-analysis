.class final synthetic Lcom/google/android/gms/internal/ads/clc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/atg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cki;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clc;->a:Lcom/google/android/gms/internal/ads/cki;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clc;->a:Lcom/google/android/gms/internal/ads/cki;

    check-cast p1, Lcom/google/android/gms/internal/ads/clg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cki;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ckw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cki;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/clg;->c(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V

    .line 3
    return-void
.end method
