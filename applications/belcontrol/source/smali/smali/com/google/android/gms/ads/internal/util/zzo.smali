.class public final Lcom/google/android/gms/ads/internal/util/zzo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaco;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uri:Landroid/net/Uri;

.field private final synthetic zzeeu:Lcom/google/android/gms/internal/ads/zzacp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzj;Lcom/google/android/gms/internal/ads/zzacp;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzeeu:Lcom/google/android/gms/internal/ads/zzacp;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzst()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzeeu:Lcom/google/android/gms/internal/ads/zzacp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacp;->zzsv()Lh3;

    move-result-object v0

    new-instance v1, Lf3$a;

    invoke-direct {v1, v0}, Lf3$a;-><init>(Lh3;)V

    invoke-virtual {v1}, Lf3$a;->a()Lf3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lf3;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzeeu:Lcom/google/android/gms/internal/ads/zzacp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzacp;->zzc(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzsu()V
    .locals 0

    return-void
.end method
