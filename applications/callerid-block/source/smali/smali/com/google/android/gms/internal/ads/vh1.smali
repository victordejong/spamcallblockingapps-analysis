.class final Lcom/google/android/gms/internal/ads/vh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/yn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/yn1;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/pi1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/ri1;

.field public final c:Lcom/google/android/gms/internal/ads/zzys;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/zzzd;

.field public final g:Lcom/google/android/gms/internal/ads/mn1;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pi1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/mn1;)V
    .locals 0
    .param p7    # Lcom/google/android/gms/internal/ads/mn1;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TR;>;",
            "Lcom/google/android/gms/internal/ads/ri1;",
            "Lcom/google/android/gms/internal/ads/zzys;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzzd;",
            "Lcom/google/android/gms/internal/ads/mn1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vh1;->a:Lcom/google/android/gms/internal/ads/pi1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vh1;->b:Lcom/google/android/gms/internal/ads/ri1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vh1;->c:Lcom/google/android/gms/internal/ads/zzys;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vh1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vh1;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/vh1;->f:Lcom/google/android/gms/internal/ads/zzzd;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/vh1;->g:Lcom/google/android/gms/internal/ads/mn1;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/mn1;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vh1;->g:Lcom/google/android/gms/internal/ads/mn1;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/yn1;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/ads/vh1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vh1;->a:Lcom/google/android/gms/internal/ads/pi1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vh1;->b:Lcom/google/android/gms/internal/ads/ri1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vh1;->c:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vh1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/vh1;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/vh1;->f:Lcom/google/android/gms/internal/ads/zzzd;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/vh1;->g:Lcom/google/android/gms/internal/ads/mn1;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/vh1;-><init>(Lcom/google/android/gms/internal/ads/pi1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/mn1;)V

    return-object v8
.end method

.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vh1;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method
