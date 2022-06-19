.class public final Lcom/google/android/gms/internal/ads/aou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ckz;

.field private final b:Lcom/google/android/gms/internal/ads/yd;

.field private final c:Landroid/content/pm/ApplicationInfo;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/pm/PackageInfo;

.field private final g:Lcom/google/android/gms/internal/ads/dhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/uw;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/gms/internal/ads/cag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cag",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/yd;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/dhn;Lcom/google/android/gms/internal/ads/uw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ckz;",
            "Lcom/google/android/gms/internal/ads/yd;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/uw;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cag",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aou;->a:Lcom/google/android/gms/internal/ads/ckz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aou;->b:Lcom/google/android/gms/internal/ads/yd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aou;->c:Landroid/content/pm/ApplicationInfo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aou;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aou;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aou;->f:Landroid/content/pm/PackageInfo;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aou;->g:Lcom/google/android/gms/internal/ads/dhn;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/aou;->h:Lcom/google/android/gms/internal/ads/uw;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/aou;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/aou;->j:Lcom/google/android/gms/internal/ads/cag;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aou;->a:Lcom/google/android/gms/internal/ads/ckz;

    sget-object v1, Lcom/google/android/gms/internal/ads/ckw;->a:Lcom/google/android/gms/internal/ads/ckw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aou;->j:Lcom/google/android/gms/internal/ads/cag;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cag;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckp;->a(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/pw;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/pw;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aou;->b:Lcom/google/android/gms/internal/ads/yd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aou;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aou;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aou;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aou;->f:Landroid/content/pm/PackageInfo;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aou;->g:Lcom/google/android/gms/internal/ads/dhn;

    .line 22
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/dhn;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/crt;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/aou;->h:Lcom/google/android/gms/internal/ads/uw;

    .line 23
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/uw;->f()Z

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/aou;->i:Ljava/lang/String;

    move-object v11, v10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/pw;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/yd;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/gms/internal/ads/ciu;Ljava/lang/String;)V

    .line 24
    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/crt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/pw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aou;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aou;->a:Lcom/google/android/gms/internal/ads/ckz;

    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->b:Lcom/google/android/gms/internal/ads/ckw;

    const/4 v0, 0x2

    new-array v4, v0, [Lcom/google/android/gms/internal/ads/crt;

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aou;->g:Lcom/google/android/gms/internal/ads/dhn;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dhn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crt;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckn;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/aox;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/aox;-><init>(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/crt;)V

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ckn;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    .line 19
    return-object v0
.end method
