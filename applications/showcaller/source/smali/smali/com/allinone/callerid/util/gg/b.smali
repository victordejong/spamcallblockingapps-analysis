.class public Lcom/allinone/callerid/util/gg/b;
.super Ljava/lang/Object;
.source "AdMobRewardInterstitialTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/gg/b$e;,
        Lcom/allinone/callerid/util/gg/b$d;
    }
.end annotation


# static fields
.field private static a:Lcom/allinone/callerid/util/gg/b;


# instance fields
.field private b:Lcom/google/android/gms/ads/z/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/gg/b;

    invoke-direct {v0}, Lcom/allinone/callerid/util/gg/b;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/gg/b;->a:Lcom/allinone/callerid/util/gg/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/util/gg/b;Lcom/google/android/gms/ads/z/b;)Lcom/google/android/gms/ads/z/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/b;->b:Lcom/google/android/gms/ads/z/b;

    return-object p1
.end method

.method public static b()Lcom/allinone/callerid/util/gg/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/gg/b;->a:Lcom/allinone/callerid/util/gg/b;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/allinone/callerid/util/gg/b$d;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "tony"

    if-eqz v0, :cond_0

    const-string v0, "initRewardAd_request"

    .line 2
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/b;->b:Lcom/google/android/gms/ads/z/b;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/allinone/callerid/d/f/f;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 4
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "initRewardAd_has_cache"

    .line 5
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/util/gg/b$a;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/util/gg/b$a;-><init>(Lcom/allinone/callerid/util/gg/b;Lcom/allinone/callerid/util/gg/b$d;)V

    const-string p1, "ca-app-pub-5825926894918682/1702975975"

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/ads/z/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/z/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Landroid/app/Activity;Lcom/allinone/callerid/util/gg/b$e;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "tony"

    if-eqz v0, :cond_0

    const-string v0, "rewardedAd_show"

    .line 2
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/b;->b:Lcom/google/android/gms/ads/z/b;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/allinone/callerid/util/gg/b$b;

    invoke-direct {v1, p0, p2}, Lcom/allinone/callerid/util/gg/b$b;-><init>(Lcom/allinone/callerid/util/gg/b;Lcom/allinone/callerid/util/gg/b$e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/z/b;->b(Lcom/google/android/gms/ads/i;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/b;->b:Lcom/google/android/gms/ads/z/b;

    new-instance v1, Lcom/allinone/callerid/util/gg/b$c;

    invoke-direct {v1, p0, p2}, Lcom/allinone/callerid/util/gg/b$c;-><init>(Lcom/allinone/callerid/util/gg/b;Lcom/allinone/callerid/util/gg/b$e;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/z/b;->c(Landroid/app/Activity;Lcom/google/android/gms/ads/o;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/b;->b:Lcom/google/android/gms/ads/z/b;

    const-wide/16 p1, 0x0

    .line 7
    invoke-static {p1, p2}, Lcom/allinone/callerid/d/f/f;->s(J)V

    goto :goto_0

    .line 8
    :cond_1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "onRewardedAdLoaded_NotShow"

    .line 9
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
