.class final synthetic Lcom/google/android/gms/internal/ads/biq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bih;

.field private final b:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bih;Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/biq;->a:Lcom/google/android/gms/internal/ads/bih;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/biq;->b:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/biq;->a:Lcom/google/android/gms/internal/ads/bih;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/biq;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 1048
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bih;->d:Lcom/google/android/gms/internal/ads/aju;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/adt;)V

    return-void
.end method
