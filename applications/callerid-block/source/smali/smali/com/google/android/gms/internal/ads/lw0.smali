.class final synthetic Lcom/google/android/gms/internal/ads/lw0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tw0;

.field private final b:Lcom/google/android/gms/internal/ads/sw0;

.field private final c:Lcom/google/android/gms/internal/ads/zzawc;

.field private final d:Lcom/google/android/gms/internal/ads/uy1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tw0;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/uy1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lw0;->a:Lcom/google/android/gms/internal/ads/tw0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lw0;->b:Lcom/google/android/gms/internal/ads/sw0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lw0;->c:Lcom/google/android/gms/internal/ads/zzawc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lw0;->d:Lcom/google/android/gms/internal/ads/uy1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lw0;->a:Lcom/google/android/gms/internal/ads/tw0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lw0;->b:Lcom/google/android/gms/internal/ads/sw0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lw0;->c:Lcom/google/android/gms/internal/ads/zzawc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lw0;->d:Lcom/google/android/gms/internal/ads/uy1;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/tw0;->f(Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/uy1;Lcom/google/android/gms/internal/ads/zzcsk;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
