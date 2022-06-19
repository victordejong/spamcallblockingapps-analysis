.class public final Lcom/google/android/gms/internal/ads/zzdgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdgd;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzdue:Landroid/content/pm/PackageInfo;

.field private final zzgqc:I

.field private final zzhdv:Lcom/google/android/gms/internal/ads/zzayk;

.field private final zzhea:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayk;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzhdv:Lcom/google/android/gms/internal/ads/zzayk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgc;->executor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzhea:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzdue:Landroid/content/pm/PackageInfo;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzgqc:I

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdgd;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzhdv:Lcom/google/android/gms/internal/ads/zzayk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzhea:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzdue:Landroid/content/pm/PackageInfo;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzgqc:I

    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzayk;->zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgf;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgc;->executor:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdge;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdge;-><init>(Lcom/google/android/gms/internal/ads/zzdgc;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgc;->executor:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzhea:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgd;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
