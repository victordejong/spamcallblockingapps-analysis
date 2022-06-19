.class public final Lcom/google/android/gms/internal/ads/btw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsk<",
        "Lcom/google/android/gms/internal/ads/azi;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bai;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/ads/cot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bai;Lcom/google/android/gms/internal/ads/cot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btw;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/btw;->b:Lcom/google/android/gms/internal/ads/bai;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btw;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/btw;->d:Lcom/google/android/gms/internal/ads/cot;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/cov;)Ljava/lang/String;
    .locals 1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final synthetic a(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    :try_start_0
    new-instance v0, Landroidx/browser/customtabs/d$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/d$a;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/d$a;->a()Landroidx/browser/customtabs/d;

    move-result-object v0

    .line 22
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 23
    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btw;->b:Lcom/google/android/gms/internal/ads/bai;

    new-instance v2, Lcom/google/android/gms/internal/ads/aof;

    invoke-direct {v2, p2, p3, v0}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/azj;

    new-instance p3, Lcom/google/android/gms/internal/ads/bty;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/bty;-><init>(Lcom/google/android/gms/internal/ads/zp;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/azj;-><init>(Lcom/google/android/gms/internal/ads/bap;)V

    .line 27
    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/ads/bai;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/azj;)Lcom/google/android/gms/internal/ads/azk;

    move-result-object p2

    .line 28
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v4, 0x0

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/azk;->i()Lcom/google/android/gms/internal/ads/atj;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbar;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(IIZ)V

    const/4 v8, 0x0

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/adt;)V

    .line 30
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btw;->d:Lcom/google/android/gms/internal/ads/cot;

    .line 1037
    sget p3, Lcom/google/android/gms/internal/ads/cow;->b:I

    sget v0, Lcom/google/android/gms/internal/ads/cow;->c:I

    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/internal/ads/cot;->a(II)V

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/azk;->h()Lcom/google/android/gms/internal/ads/azi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "Error in CustomTabsAdRenderer"

    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btw;->a:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btw;->a:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/br;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/btw;->a(Lcom/google/android/gms/internal/ads/cov;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/azi;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/btw;->a(Lcom/google/android/gms/internal/ads/cov;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 15
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/btz;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/btz;-><init>(Lcom/google/android/gms/internal/ads/btw;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btw;->c:Ljava/util/concurrent/Executor;

    .line 1019
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
