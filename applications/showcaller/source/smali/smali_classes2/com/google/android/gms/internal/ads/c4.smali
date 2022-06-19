.class final synthetic Lcom/google/android/gms/internal/ads/c4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/internal/ads/m6;

.field private final c:Lcom/google/android/gms/internal/ads/m6;


# direct methods
.method constructor <init>(ILcom/google/android/gms/internal/ads/m6;Lcom/google/android/gms/internal/ads/m6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/c4;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c4;->b:Lcom/google/android/gms/internal/ads/m6;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/c4;->c:Lcom/google/android/gms/internal/ads/m6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/c4;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c4;->b:Lcom/google/android/gms/internal/ads/m6;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c4;->c:Lcom/google/android/gms/internal/ads/m6;

    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    .line 2
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/h6;->z0(Lcom/google/android/gms/internal/ads/m6;Lcom/google/android/gms/internal/ads/m6;I)V

    return-void
.end method
