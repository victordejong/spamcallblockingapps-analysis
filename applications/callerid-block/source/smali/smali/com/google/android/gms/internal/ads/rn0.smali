.class public final Lcom/google/android/gms/internal/ads/rn0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/w9;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/y80;

.field private final c:Lcom/google/android/gms/internal/ads/zzaxe;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/y80;Lcom/google/android/gms/internal/ads/al1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rn0;->b:Lcom/google/android/gms/internal/ads/y80;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/al1;->l:Lcom/google/android/gms/internal/ads/zzaxe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rn0;->c:Lcom/google/android/gms/internal/ads/zzaxe;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/al1;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rn0;->d:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/al1;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rn0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final X(Lcom/google/android/gms/internal/ads/zzaxe;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rn0;->c:Lcom/google/android/gms/internal/ads/zzaxe;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaxe;->b:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaxe;->c:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const-string v0, ""

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/wj;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/wj;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rn0;->b:Lcom/google/android/gms/internal/ads/y80;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rn0;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rn0;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/y80;->P0(Lcom/google/android/gms/internal/ads/zj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rn0;->b:Lcom/google/android/gms/internal/ads/y80;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y80;->a1()V

    return-void
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rn0;->b:Lcom/google/android/gms/internal/ads/y80;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y80;->f()V

    return-void
.end method
