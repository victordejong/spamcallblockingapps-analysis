.class final Lcom/google/android/gms/internal/ads/zzdju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqa;"
    }
.end annotation


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final zzbut:Ljava/lang/String;

.field public final zzdud:Lcom/google/android/gms/internal/ads/zzvl;

.field public final zzhba:Lcom/google/android/gms/internal/ads/zzvx;

.field public final zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final zzhhf:Lcom/google/android/gms/internal/ads/zzdko;

.field private final zzhhg:Lcom/google/android/gms/internal/ads/zzdpl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzdpl;)V
    .locals 0
    .param p7    # Lcom/google/android/gms/internal/ads/zzdpl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;",
            "Lcom/google/android/gms/internal/ads/zzdko;",
            "Lcom/google/android/gms/internal/ads/zzvl;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzvx;",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhf:Lcom/google/android/gms/internal/ads/zzdko;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzdud:Lcom/google/android/gms/internal/ads/zzvl;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzbut:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhba:Lcom/google/android/gms/internal/ads/zzvx;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhg:Lcom/google/android/gms/internal/ads/zzdpl;

    return-void
.end method


# virtual methods
.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzaup()Lcom/google/android/gms/internal/ads/zzdpl;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhg:Lcom/google/android/gms/internal/ads/zzdpl;

    return-object v0
.end method

.method public final zzauq()Lcom/google/android/gms/internal/ads/zzdqa;
    .locals 9

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhf:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzdud:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzbut:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhba:Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhg:Lcom/google/android/gms/internal/ads/zzdpl;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdju;-><init>(Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzdpl;)V

    return-object v8
.end method
