.class public final Lcom/google/android/gms/internal/ads/aqs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzbar;

.field final b:Landroid/content/pm/ApplicationInfo;

.field final c:Ljava/lang/String;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/pm/PackageInfo;

.field final f:Lcom/google/android/gms/internal/ads/dsb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/ads/cti;

.field private final i:Lcom/google/android/gms/internal/ads/cha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cha<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/zzbar;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/dsb;Lcom/google/android/gms/ads/internal/util/zzf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cha;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cti;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cha<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqs;->h:Lcom/google/android/gms/internal/ads/cti;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqs;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aqs;->b:Landroid/content/pm/ApplicationInfo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aqs;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aqs;->d:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aqs;->e:Landroid/content/pm/PackageInfo;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aqs;->f:Lcom/google/android/gms/internal/ads/dsb;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/aqs;->g:Ljava/lang/String;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/aqs;->i:Lcom/google/android/gms/internal/ads/cha;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqs;->h:Lcom/google/android/gms/internal/ads/cti;

    sget-object v1, Lcom/google/android/gms/internal/ads/ctj;->zzhtj:Lcom/google/android/gms/internal/ads/ctj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqs;->i:Lcom/google/android/gms/internal/ads/cha;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cha;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dbt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aqs;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqs;->h:Lcom/google/android/gms/internal/ads/cti;

    sget-object v2, Lcom/google/android/gms/internal/ads/ctj;->zzhtk:Lcom/google/android/gms/internal/ads/ctj;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/dbt;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aqs;->f:Lcom/google/android/gms/internal/ads/dsb;

    .line 15
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dbt;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/aqv;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/aqv;-><init>(Lcom/google/android/gms/internal/ads/aqs;Lcom/google/android/gms/internal/ads/dbt;)V

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/csv;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v0

    return-object v0
.end method
