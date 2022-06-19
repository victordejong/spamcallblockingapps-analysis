.class public abstract Lcom/google/android/gms/internal/ads/zzdqv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzhps:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzfth:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzhpt:Lcom/google/android/gms/internal/ads/zzdrh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdrh<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhps:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdrh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzdrh<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzfth:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhpt:Lcom/google/android/gms/internal/ads/zzdrh;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdzv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    return-object p0
.end method

.method public static synthetic zzaxg()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhps:Lcom/google/android/gms/internal/ads/zzdzw;

    return-object v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdqv;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzfth:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdrh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzhpt:Lcom/google/android/gms/internal/ads/zzdrh;

    return-object p0
.end method


# virtual methods
.method public final varargs zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdqx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzdqx;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdqx;-><init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdqy;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TI;>;)",
            "Lcom/google/android/gms/internal/ads/zzdrb<",
            "TI;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdrb;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdrb;-><init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzw;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdqy;)V

    return-object v8
.end method

.method public final zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdqz;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqz;-><init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqy;)V

    return-object v0
.end method

.method public abstract zzu(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
