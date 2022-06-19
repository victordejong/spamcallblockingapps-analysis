.class public Lcom/allinone/callerid/util/gg/e;
.super Ljava/lang/Object;
.source "CallscreenBackInterstitialTool.java"


# static fields
.field private static a:Lcom/allinone/callerid/util/gg/e;


# instance fields
.field private b:Lcom/google/android/gms/ads/x/a;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/gg/e;

    invoke-direct {v0}, Lcom/allinone/callerid/util/gg/e;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/gg/e;->a:Lcom/allinone/callerid/util/gg/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/util/gg/e;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/util/gg/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/util/gg/e;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/allinone/callerid/util/gg/e;)Lcom/google/android/gms/ads/x/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/util/gg/e;->b:Lcom/google/android/gms/ads/x/a;

    return-object p0
.end method

.method static synthetic c(Lcom/allinone/callerid/util/gg/e;Lcom/google/android/gms/ads/x/a;)Lcom/google/android/gms/ads/x/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/e;->b:Lcom/google/android/gms/ads/x/a;

    return-object p1
.end method

.method public static d()Lcom/allinone/callerid/util/gg/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/gg/e;->a:Lcom/allinone/callerid/util/gg/e;

    return-object v0
.end method


# virtual methods
.method public e(ZLandroid/app/Activity;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "wbb"

    if-eqz v0, :cond_3

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "backInterstitialAd_request"

    .line 3
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/util/gg/e;->c:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/e;->b:Lcom/google/android/gms/ads/x/a;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/allinone/callerid/d/f/f;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 6
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "backInterstitialAd_has_cache"

    .line 7
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/allinone/callerid/util/gg/e;->c:Z

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/util/gg/e$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/allinone/callerid/util/gg/e$a;-><init>(Lcom/allinone/callerid/util/gg/e;ZLandroid/app/Activity;)V

    const-string p1, "ca-app-pub-5825926894918682/1576366355"

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/ads/x/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/x/b;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "\u65e0\u7f51"

    .line 11
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/e;->b:Lcom/google/android/gms/ads/x/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/x/a;->d(Landroid/app/Activity;)V

    .line 3
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "applyInterstitialAd_show"

    .line 4
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/e;->b:Lcom/google/android/gms/ads/x/a;

    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/allinone/callerid/d/f/f;->m(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/allinone/callerid/util/gg/e;->e(ZLandroid/app/Activity;)V

    :goto_0
    return-void
.end method
