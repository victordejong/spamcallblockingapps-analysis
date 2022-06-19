.class final synthetic Lcom/google/android/gms/internal/ads/cn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y6;


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cn0;->a:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/w7;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn0;->a:[B

    new-instance v1, Lcom/google/android/gms/internal/ads/pn3;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/pn3;-><init>([B)V

    return-object v1
.end method
