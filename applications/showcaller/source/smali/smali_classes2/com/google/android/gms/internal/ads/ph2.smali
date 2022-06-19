.class final synthetic Lcom/google/android/gms/internal/ads/ph2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fg2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/nd0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ph2;->a:Lcom/google/android/gms/internal/ads/nd0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ph2;->a:Lcom/google/android/gms/internal/ads/nd0;

    check-cast p1, Lcom/google/android/gms/internal/ads/ud0;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ud0;->U3(Lcom/google/android/gms/internal/ads/nd0;)V

    return-void
.end method
