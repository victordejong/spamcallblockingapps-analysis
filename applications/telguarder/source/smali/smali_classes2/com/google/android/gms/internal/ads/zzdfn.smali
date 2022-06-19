.class final synthetic Lcom/google/android/gms/internal/ads/zzdfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdlk:Ljava/lang/Object;

.field private final zzhct:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzhct:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzdlk:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzhct:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzdlk:Ljava/lang/Object;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdzw;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdzw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdfj;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzdfj;->zzr(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method
