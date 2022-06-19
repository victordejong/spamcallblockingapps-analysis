.class public final synthetic Lcom/google/android/gms/internal/ads/zzczp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgtx:Landroid/net/Uri;

.field private final zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

.field private final zzgzn:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczo;Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgtx:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzn:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgtx:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzn:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzczo;->zzb(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
