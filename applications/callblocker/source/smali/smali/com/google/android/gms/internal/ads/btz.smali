.class final synthetic Lcom/google/android/gms/internal/ads/btz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/btx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btz;->a:Lcom/google/android/gms/internal/ads/btx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btz;->a:Lcom/google/android/gms/internal/ads/btx;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/btx;->a(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
