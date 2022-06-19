.class public final Lcom/google/android/gms/internal/ads/bnu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmv",
        "<",
        "Lcom/google/android/gms/internal/ads/avq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/awq;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/ads/cgp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/awq;Lcom/google/android/gms/internal/ads/cgp;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnu;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bnu;->b:Lcom/google/android/gms/internal/ads/awq;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnu;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bnu;->d:Lcom/google/android/gms/internal/ads/cgp;

    .line 6
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/cgr;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "tab_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 11

    .prologue
    .line 21
    :try_start_0
    new-instance v0, Landroidx/browser/a/b$a;

    invoke-direct {v0}, Landroidx/browser/a/b$a;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/a/b$a;->a()Landroidx/browser/a/b;

    move-result-object v0

    .line 22
    iget-object v1, v0, Landroidx/browser/a/b;->a:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 23
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v0, v0, Landroidx/browser/a/b;->a:Landroid/content/Intent;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Landroid/content/Intent;)V

    .line 24
    new-instance v6, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnu;->b:Lcom/google/android/gms/internal/ads/awq;

    new-instance v2, Lcom/google/android/gms/internal/ads/amy;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/avv;

    new-instance v4, Lcom/google/android/gms/internal/ads/bnw;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/bnw;-><init>(Lcom/google/android/gms/internal/ads/yo;)V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/avv;-><init>(Lcom/google/android/gms/internal/ads/awx;)V

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/awq;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/avv;)Lcom/google/android/gms/internal/ads/avs;

    move-result-object v7

    .line 28
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/avs;->i()Lcom/google/android/gms/internal/ads/aro;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/internal/ads/yd;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Lcom/google/android/gms/internal/ads/yd;-><init>(IIZ)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/d;Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/yd;)V

    .line 30
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnu;->d:Lcom/google/android/gms/internal/ads/cgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cgp;->c()V

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/avs;->h()Lcom/google/android/gms/internal/ads/avq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v1, "Error in CustomTabsAdRenderer"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnu;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnu;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bnu;->a(Lcom/google/android/gms/internal/ads/cgr;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/avq;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bnu;->a(Lcom/google/android/gms/internal/ads/cgr;)Ljava/lang/String;

    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 15
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bnx;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/bnx;-><init>(Lcom/google/android/gms/internal/ads/bnu;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnu;->c:Ljava/util/concurrent/Executor;

    .line 16
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 17
    return-object v0

    :cond_0
    move-object v0, v1

    .line 13
    goto :goto_0
.end method
