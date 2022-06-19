.class final synthetic Lcom/google/android/gms/internal/ads/bdq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bdo;

.field private final b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bdo;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdq;->a:Lcom/google/android/gms/internal/ads/bdo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdq;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdq;->a:Lcom/google/android/gms/internal/ads/bdo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdq;->b:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1080
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bcr;->m()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 1081
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    .line 1082
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    .line 1086
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1087
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bdo;->b:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    const-string v4, "2"

    .line 1089
    invoke-interface {v2, v3, v4, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1090
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bdo;->b:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    const-string v3, "1"

    .line 1092
    invoke-interface {v2, v0, v3, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1083
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bdo;->b:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    .line 1084
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    return-void
.end method
