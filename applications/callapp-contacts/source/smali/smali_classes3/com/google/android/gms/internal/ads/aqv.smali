.class final synthetic Lcom/google/android/gms/internal/ads/aqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqs;

.field private final b:Lcom/google/android/gms/internal/ads/dbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aqs;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqv;->a:Lcom/google/android/gms/internal/ads/aqs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqv;->b:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqv;->a:Lcom/google/android/gms/internal/ads/aqs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqv;->b:Lcom/google/android/gms/internal/ads/dbt;

    .line 1019
    new-instance v13, Lcom/google/android/gms/internal/ads/zzauj;

    .line 1020
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aqs;->a:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/aqs;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/aqs;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/aqs;->d:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/aqs;->e:Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aqs;->f:Lcom/google/android/gms/internal/ads/dsb;

    .line 1021
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dbt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/aqs;->g:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzauj;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbar;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/String;)V

    return-object v13
.end method
