.class final synthetic Lcom/google/android/gms/internal/ads/hn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/w6;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hn0;->a:Lcom/google/android/gms/internal/ads/mn0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/up3;Lcom/google/android/gms/internal/ads/ii1;Lcom/google/android/gms/internal/ads/w8;Lcom/google/android/gms/internal/ads/t7;)[Lcom/google/android/gms/internal/ads/t6;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn0;->a:Lcom/google/android/gms/internal/ads/mn0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/mn0;->h0(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/up3;Lcom/google/android/gms/internal/ads/ii1;Lcom/google/android/gms/internal/ads/w8;Lcom/google/android/gms/internal/ads/t7;)[Lcom/google/android/gms/internal/ads/t6;

    move-result-object p1

    return-object p1
.end method
