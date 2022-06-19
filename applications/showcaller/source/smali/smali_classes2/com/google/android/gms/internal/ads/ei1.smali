.class final synthetic Lcom/google/android/gms/internal/ads/ei1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp0;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/mi1;

.field private final e:Lcom/google/android/gms/internal/ads/wn0;

.field private final f:Lcom/google/android/gms/internal/ads/ui0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ui0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ei1;->d:Lcom/google/android/gms/internal/ads/mi1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ei1;->e:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ei1;->f:Lcom/google/android/gms/internal/ads/ui0;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei1;->d:Lcom/google/android/gms/internal/ads/mi1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ei1;->e:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ei1;->f:Lcom/google/android/gms/internal/ads/ui0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/mi1;->e(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ui0;Z)V

    return-void
.end method
