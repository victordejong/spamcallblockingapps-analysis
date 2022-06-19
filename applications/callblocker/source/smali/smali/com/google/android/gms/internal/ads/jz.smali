.class final synthetic Lcom/google/android/gms/internal/ads/jz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ka;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ka;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/ka;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jz;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/ka;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jz;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/jc;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ka;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/jc;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
