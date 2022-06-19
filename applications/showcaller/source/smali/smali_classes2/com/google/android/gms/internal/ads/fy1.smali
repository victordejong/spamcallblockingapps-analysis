.class public final Lcom/google/android/gms/internal/ads/fy1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qw1<",
        "Lcom/google/android/gms/internal/ads/lb1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/jc1;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/ads/dj2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/jc1;Lcom/google/android/gms/internal/ads/dj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fy1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fy1;->b:Lcom/google/android/gms/internal/ads/jc1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fy1;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fy1;->d:Lcom/google/android/gms/internal/ads/dj2;

    return-void
.end method

.method private static d(Lcom/google/android/gms/internal/ads/ej2;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

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
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fy1;->a:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/o;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fy1;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jx;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fy1;->d(Lcom/google/android/gms/internal/ads/ej2;)Ljava/lang/String;

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

.method public final b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/lb1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fy1;->d(Lcom/google/android/gms/internal/ads/ej2;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/dy1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/dy1;-><init>(Lcom/google/android/gms/internal/ads/fy1;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fy1;->c:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 11

    .line 1
    :try_start_0
    new-instance p4, Landroidx/browser/customtabs/c$a;

    invoke-direct {p4}, Landroidx/browser/customtabs/c$a;-><init>()V

    invoke-virtual {p4}, Landroidx/browser/customtabs/c$a;->a()Landroidx/browser/customtabs/c;

    move-result-object p4

    .line 2
    iget-object v0, p4, Landroidx/browser/customtabs/c;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p4, Landroidx/browser/customtabs/c;->a:Landroid/content/Intent;

    const/4 p4, 0x0

    invoke-direct {v2, p1, p4}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/s;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/vi0;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy1;->b:Lcom/google/android/gms/internal/ads/jc1;

    new-instance v1, Lcom/google/android/gms/internal/ads/mz0;

    .line 5
    invoke-direct {v1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/pb1;

    new-instance p3, Lcom/google/android/gms/internal/ads/ey1;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/ey1;-><init>(Lcom/google/android/gms/internal/ads/vi0;)V

    .line 6
    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/pb1;-><init>(Lcom/google/android/gms/internal/ads/qc1;Lcom/google/android/gms/internal/ads/wn0;)V

    .line 7
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/jc1;->c(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/pb1;)Lcom/google/android/gms/internal/ads/mb1;

    move-result-object p2

    .line 8
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mb1;->i()Lcom/google/android/gms/internal/ads/f51;

    move-result-object v4

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcgz;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p4

    .line 10
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(IIZZZ)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p3

    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 12
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fy1;->d:Lcom/google/android/gms/internal/ads/dj2;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dj2;->d()V

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mb1;->h()Lcom/google/android/gms/internal/ads/lb1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "Error in CustomTabsAdRenderer"

    .line 15
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    throw p1
.end method
