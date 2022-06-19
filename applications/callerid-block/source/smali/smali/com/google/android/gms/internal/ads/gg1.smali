.class final synthetic Lcom/google/android/gms/internal/ads/gg1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/hg1;

.field private final c:Lcom/google/android/gms/internal/ads/zzym;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hg1;Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg1;->b:Lcom/google/android/gms/internal/ads/hg1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gg1;->c:Lcom/google/android/gms/internal/ads/zzym;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg1;->b:Lcom/google/android/gms/internal/ads/hg1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gg1;->c:Lcom/google/android/gms/internal/ads/zzym;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hg1;->c:Lcom/google/android/gms/internal/ads/jg1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jg1;->g(Lcom/google/android/gms/internal/ads/jg1;)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
