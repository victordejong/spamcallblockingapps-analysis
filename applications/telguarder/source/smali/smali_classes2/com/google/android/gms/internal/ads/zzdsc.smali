.class public final Lcom/google/android/gms/internal/ads/zzdsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdrz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzewu:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfrq:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhrp:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdso;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdso;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzewu:Lcom/google/android/gms/internal/ads/zzeqo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzhrp:Lcom/google/android/gms/internal/ads/zzeqo;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzfrq:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzewu:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeqc;->zzav(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzepv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzhrp:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeqc;->zzav(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzepv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzfrq:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzdam:Lcom/google/android/gms/internal/ads/zzaba;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdsb;-><init>(Lcom/google/android/gms/internal/ads/zzdrz;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrz;

    :goto_0
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 15
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrz;

    return-object v0
.end method
