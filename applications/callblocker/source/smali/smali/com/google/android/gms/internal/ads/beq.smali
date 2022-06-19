.class final synthetic Lcom/google/android/gms/internal/ads/beq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/beh;

.field private final b:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/beh;Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/beq;->a:Lcom/google/android/gms/internal/ads/beh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/beq;->b:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/beq;->a:Lcom/google/android/gms/internal/ads/beh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/beq;->b:Lcom/google/android/gms/internal/ads/act;

    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/beh;->a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V

    return-void
.end method
