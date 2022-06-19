.class public Lcom/google/android/gms/internal/ads/ru;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/google/android/gms/internal/ads/xo;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/AdFormat;

.field public final c:Lcom/google/android/gms/internal/ads/emr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/emr;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ru;->b:Lcom/google/android/gms/ads/AdFormat;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ru;->c:Lcom/google/android/gms/internal/ads/emr;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xo;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/ru;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/ru;->d:Lcom/google/android/gms/internal/ads/xo;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    .line 1052
    new-instance v3, Lcom/google/android/gms/internal/ads/ejm;

    invoke-direct {v3, v1, p0, v2}, Lcom/google/android/gms/internal/ads/ejm;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;)V

    const/4 v1, 0x0

    .line 1053
    invoke-virtual {v3, p0, v1}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    .line 1054
    check-cast p0, Lcom/google/android/gms/internal/ads/xo;

    .line 3
    sput-object p0, Lcom/google/android/gms/internal/ads/ru;->d:Lcom/google/android/gms/internal/ads/xo;

    .line 4
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/ru;->d:Lcom/google/android/gms/internal/ads/xo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
