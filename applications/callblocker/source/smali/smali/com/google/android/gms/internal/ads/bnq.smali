.class final synthetic Lcom/google/android/gms/internal/ads/bnq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ami;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnq;->a:Lcom/google/android/gms/internal/ads/bmx;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnq;->a:Lcom/google/android/gms/internal/ads/bmx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bnr;->a(Lcom/google/android/gms/internal/ads/bmx;)Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    return-object v0
.end method
