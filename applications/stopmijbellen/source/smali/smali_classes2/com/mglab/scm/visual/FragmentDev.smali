.class public Lcom/mglab/scm/visual/FragmentDev;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public buttonShowButtons:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public buttonsLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public header:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-class v2, Lh8/u;

    const-class v3, Lh8/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "*** DEBUG ***"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n\n*** ADS ***"

    .line 2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.google.android.gms.ads.APPLICATION_ID"

    .line 5
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\nGOOGLE ADS APPLICATION_ID: "

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ca-app-pub-1274344974707798~8720585367"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OK]"

    goto :goto_0

    :cond_0
    const-string v0, "ERROR"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    const-string v0, "\nInterstitial_ADS_REPEAT_INTERVAL_MIN: "

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    const-string v5, "video_ads_repeat_interval_min"

    .line 9
    invoke-virtual {v0, v5}, Lf8/b;->b(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nInterstitial_ADS_SHOW_AFTER_BLOCK_CALLS: "

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    const-string v5, "video_ads_show_after_block_calls"

    .line 11
    invoke-virtual {v0, v5}, Lf8/b;->b(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nInterstitialAdsLastShown: "

    .line 12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valshown"

    .line 13
    invoke-static {v1, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    .line 14
    invoke-static {v1, v5, v6}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** APP STATS ***"

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nAppInstallDate: "

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appinsd"

    .line 17
    invoke-static {v1, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    .line 18
    invoke-static {v1, v5, v6}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nAppBlockedCalls: "

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nChecked today/total: "

    .line 20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->g(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    .line 21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->h(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nBlocked today/total: "

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** DB ***"

    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nDB LAST CHECK: "

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->t(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMAIN COUNT[MAX ID]: "

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lh8/q;->s()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lh8/q;->v()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nLOG: "

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 28
    :try_start_1
    new-instance v0, Lw8/o;

    new-array v7, v5, [Lx8/a;

    new-array v8, v6, [Lx8/a;

    invoke-static {v8}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v0, v7}, Lw8/o;-><init>([Lx8/a;)V

    const-class v7, Lh8/l;

    .line 29
    new-instance v8, Lw8/g;

    invoke-direct {v8, v0, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {v8}, Lw8/d;->c()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    long-to-int v0, v7

    goto :goto_2

    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 32
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nCACHE: "

    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :try_start_2
    new-instance v0, Lw8/o;

    new-array v7, v5, [Lx8/a;

    new-array v8, v6, [Lx8/a;

    invoke-static {v8}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v0, v7}, Lw8/o;-><init>([Lx8/a;)V

    const-class v7, Lh8/g;

    .line 35
    new-instance v8, Lw8/g;

    invoke-direct {v8, v0, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 36
    invoke-virtual {v8}, Lw8/d;->c()J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    long-to-int v0, v7

    goto :goto_3

    :catch_2
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 38
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nBL: "

    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lh8/q;->n()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nWL: "

    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lh8/q;->x()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nCONTACTS: "

    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :try_start_3
    new-instance v0, Lw8/o;

    new-array v7, v5, [Lx8/a;

    new-array v8, v6, [Lx8/a;

    invoke-static {v8}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v0, v7}, Lw8/o;-><init>([Lx8/a;)V

    const-class v7, Lh8/i;

    .line 43
    new-instance v8, Lw8/g;

    invoke-direct {v8, v0, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {v8}, Lw8/d;->c()J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    long-to-int v0, v7

    goto :goto_4

    :catch_3
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 46
    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nBILLING: "

    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :try_start_4
    new-instance v0, Lw8/o;

    new-array v7, v5, [Lx8/a;

    new-array v8, v6, [Lx8/a;

    invoke-static {v8}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v0, v7}, Lw8/o;-><init>([Lx8/a;)V

    const-class v7, Lh8/e;

    .line 49
    new-instance v8, Lw8/g;

    invoke-direct {v8, v0, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {v8}, Lw8/d;->c()J

    move-result-wide v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    long-to-int v0, v7

    goto :goto_5

    :catch_4
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 52
    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nADATA: "

    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :try_start_5
    new-instance v0, Lw8/o;

    new-array v7, v5, [Lx8/a;

    new-array v8, v6, [Lx8/a;

    invoke-static {v8}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v0, v7}, Lw8/o;-><init>([Lx8/a;)V

    .line 55
    new-instance v7, Lw8/g;

    invoke-direct {v7, v0, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {v7}, Lw8/d;->c()J

    move-result-wide v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    long-to-int v0, v7

    goto :goto_6

    :catch_5
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 58
    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nSETTINGS: "

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :try_start_6
    new-instance v0, Lw8/o;

    new-array v7, v5, [Lx8/a;

    new-array v8, v6, [Lx8/a;

    invoke-static {v8}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v0, v7}, Lw8/o;-><init>([Lx8/a;)V

    .line 61
    new-instance v7, Lw8/g;

    invoke-direct {v7, v0, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {v7}, Lw8/d;->c()J

    move-result-wide v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    long-to-int v0, v7

    goto :goto_7

    :catch_6
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 64
    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** DB DELAYS, INTERVALS, VALUES ***"

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nSEND_USER_CALLLOG_BL: "

    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->l(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nLAST_SEND_BL_ID: "

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->u(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nLAST_SEND_CALLLOG_ID: "

    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->v(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nLAST_DEL_ID: "

    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->m(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nCONTACTS LAST_TIME_SYNC: "

    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->j(Landroid/content/Context;)J

    move-result-wide v7

    invoke-static {v1, v7, v8}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nSYNC_CONTACTS NOT_UPDATE_AFTER_CALL_INTERVAL: 3 sec"

    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCLEAR_CACHE_INTERVAL: "

    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lg8/d;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " days"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMAX_LOG_RECORDS: 300"

    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMAX_CALL_LOG_RECORDS: 200"

    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMAX_PRESETS_COUNT: 10"

    const-string v7, "\nCALL_LOG_TIME_DIFFERENCE: 1 min"

    const-string v8, "\nCALL_LOG_CHECK_DELAY: 3 sec"

    const-string v9, "\n\n*** CONTACTS CONTENT OBSERVER ***"

    .line 75
    invoke-static {v4, v0, v7, v8, v9}, Landroid/support/v4/media/b;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\nCALL_THRESHOLD_TIME: "

    const-wide/16 v7, 0x7d0

    const-string v9, " sec"

    .line 76
    invoke-static {v4, v0, v7, v8, v9}, La6/d;->i(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, "\nONCHANGE_THRESHOLD_TIME: "

    const-wide/16 v7, 0x5

    .line 77
    invoke-static {v4, v0, v7, v8, v9}, La6/d;->i(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, "\nContactsSyncScheduleStarted: "

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "contactssyncschedulestarted"

    .line 79
    invoke-static {v1, v0, v6}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TRUE"

    goto :goto_8

    :cond_1
    const-string v0, "FALSE"

    .line 80
    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** SYSTEM ***"

    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nANDROID_ID (DEVICE_ID): "

    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "android_id"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPHONE_MANUFACTURER: "

    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPHONE_MODEL: "

    .line 86
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nFIRST_SIM_NO: "

    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->b0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nTELEPHONY_COUNTRY_CODE: "

    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nSIM_OPERATOR_COUNTRY_CODE: "

    .line 89
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "phone"

    .line 90
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nSYSTEM_LANGUAGE:"

    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nBUILD_FINGERPRINT: "

    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nBUILD_NUMBER: "

    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nANDROID_VERSION_SDK_INT: "

    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nANDROID_VERSION_CODENAME: "

    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-class v0, Landroid/os/Build$VERSION_CODES;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 99
    array-length v8, v7

    const-string v10, ""

    const/4 v0, 0x0

    move-object v12, v10

    const/4 v11, 0x0

    :goto_9
    const/4 v13, -0x1

    if-ge v11, v8, :cond_3

    aget-object v0, v7, v11

    .line 100
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 101
    :try_start_7
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v13, v0, :cond_2

    move-object v12, v14

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 104
    :cond_3
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nANDROID_VERSION_RELEASE: "

    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nAPP_VERSION_CODE: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lf8/g;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nAPP_VERSION_NAME: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "2.3.21"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nFONT SCALE: "

    .line 108
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n\nBOOTBR_LAST_START: "

    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bootbrlaststart"

    .line 110
    invoke-static {v1, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 111
    invoke-static {v1, v7, v8}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** GOOGLE APP UPDATE ***"

    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nAPP_UPDATE_REPEAT_INTERVAL_HRS: "

    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    const-string v7, "app_update_repeat_interval_hrs"

    .line 114
    invoke-virtual {v0, v7}, Lf8/b;->b(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nNOTIFICATION_LAST_START: "

    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->o(Landroid/content/Context;)J

    move-result-wide v7

    invoke-static {v1, v7, v8}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** PERMISSIONS ***"

    .line 116
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCALL_PHONE: "

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.CALL_PHONE"

    .line 118
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_b

    :cond_4
    const/4 v0, 0x0

    :goto_b
    const-string v7, "true"

    const-string v8, "false"

    if-eqz v0, :cond_5

    move-object v0, v7

    goto :goto_c

    :cond_5
    move-object v0, v8

    .line 119
    :goto_c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nREAD_PHONE_STATE: "

    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 121
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_d

    :cond_6
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_7

    move-object v0, v7

    goto :goto_e

    :cond_7
    move-object v0, v8

    .line 122
    :goto_e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nREAD_CALL_LOG: "

    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 124
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_f

    :cond_8
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_9

    move-object v0, v7

    goto :goto_10

    :cond_9
    move-object v0, v8

    .line 125
    :goto_10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nWRITE_CALL_LOG: "

    .line 126
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v7

    goto :goto_11

    :cond_a
    move-object v0, v8

    :goto_11
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nREAD_CONTACTS: "

    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v7

    goto :goto_12

    :cond_b
    move-object v0, v8

    :goto_12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nINTERNET: "

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.INTERNET"

    .line 129
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_13

    :cond_c
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_d

    move-object v0, v7

    goto :goto_14

    :cond_d
    move-object v0, v8

    .line 130
    :goto_14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nWAKE_LOCK: "

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.WAKE_LOCK"

    .line 132
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_15

    :cond_e
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_f

    move-object v0, v7

    goto :goto_16

    :cond_f
    move-object v0, v8

    .line 133
    :goto_16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nRECEIVE_BOOT_COMPLETED: "

    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 135
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_17

    :cond_10
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_11

    move-object v0, v7

    goto :goto_18

    :cond_11
    move-object v0, v8

    .line 136
    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nANSWER_PHONE_CALLS: "

    .line 137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 138
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_19

    :cond_12
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_13

    move-object v0, v7

    goto :goto_1a

    :cond_13
    move-object v0, v8

    .line 139
    :goto_1a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nDEFAULT_PHONE_APP: "

    .line 140
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/g;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v7

    goto :goto_1b

    :cond_14
    move-object v0, v8

    :goto_1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** ALARMS ***"

    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nALARM_LAST_START: "

    .line 142
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lastalrmcheck"

    .line 143
    invoke-static {v1, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    .line 144
    invoke-static {v1, v11, v12}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_15

    const-string v0, "\nAJIS_INTERVAL_DEFAULT_HRS: "

    .line 145
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v11, Lf8/b;

    invoke-direct {v11}, Lf8/b;-><init>()V

    const-string v12, "AJIS_interval_default_hrs"

    .line 146
    invoke-virtual {v11, v12}, Lf8/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nINTERVAL_SHORT_MIN: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Lf8/b;

    invoke-direct {v11}, Lf8/b;-><init>()V

    const-string v12, "AJIS_interval_short_min"

    invoke-virtual {v11, v12}, Lf8/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nAJIS_NEED_START_NOW_INTERVAL_HRS: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Lf8/b;

    invoke-direct {v11}, Lf8/b;-><init>()V

    const-string v12, "AJIS_need_start_now_interval_hrs"

    invoke-virtual {v11, v12}, Lf8/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v0, "\n\n*** API INTERVALS ***"

    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nAPI_REQUEST_TIMEOUT: 10 sec"

    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nGET_FEED_TIMEOUT: "

    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPOST_FEED_TIMEOUT: "

    .line 153
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPOST_VOTE_TIMEOUT: "

    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** APP INTERVALS ***"

    .line 155
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nNEW_VERSION_NOTIFICATION_REPEAT_INTERVAL = 7 days"

    const-string v9, "\nUPDATE_DISABLE_REPEAT_INTERVAL = 1 days"

    const-string v11, "\nRATE_US_NOTIFICATION_BLOCKED_CALLS: 100"

    const-string v12, "\nRATE_US_100_BLOCKED_CALLS: 10"

    .line 156
    invoke-static {v4, v0, v9, v11, v12}, Landroid/support/v4/media/b;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\nRATE_US_100_REMIND_INTERVAL: 3 days"

    .line 157
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPREVENT_FROM_UNLOAD_REMIND_INTERVAL: 3 hours"

    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n*** PREINIT ***"

    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    if-nez p1, :cond_17

    .line 160
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "PREINIT_COUNT: "

    invoke-static {v11}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lf8/h;->D(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "LAST_USED: "

    .line 162
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->C(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "LAST_USED_URL: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 163
    :goto_1c
    invoke-static/range {p0 .. p0}, Lf8/h;->D(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v11, v12, :cond_16

    const-string v12, "SRV"

    .line 164
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v11}, Lf8/h;->A(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_16
    const-string v11, "PREINIT_LIFITIME: 24 hours\nPREINIT_MAX_ERROR_COUNT: 1\nPREINIT_ERROR_COUNT: "

    .line 166
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 168
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nPREINIT_CODE: "

    .line 169
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->y(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\nNEW_VERSION_NOTIFICATION_REPEAT_INTERVAL: 7days"

    .line 170
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nUPDATE_DISABLE_REPEAT_INTERVAL: 1days"

    .line 171
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nPREINIT_MESSAGE: "

    .line 172
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "pmessage"

    .line 173
    invoke-static {v1, v9, v10}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 174
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nPREINIT_MESSAGE_LAST_SHOWN_ID: "

    .line 175
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "pmessagelsid"

    invoke-static {v1, v10, v9}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 177
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_17
    const-string v9, "\nPREINIT_COMMAND_ID: "

    .line 178
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->i(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\n\n*** INIT ***"

    .line 179
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_18

    const-string v9, "\nINIT_URL: "

    .line 180
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nINIT_MAX_ERROR_COUNT: 3"

    .line 181
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v9, "\nINIT_ERROR_COUNT: "

    .line 182
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->p(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n\n*** SETTINGS ***"

    .line 183
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nAPP_ON_OFF [INCOMING CALLS BLOCKING]: "

    .line 184
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nBLOCK METHOD: "

    .line 185
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->F(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\nUSE DEFAULT PHONE APP: "

    .line 186
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->Y(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nUSE DND: "

    .line 187
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->X(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nUSE SYSTEM SETTINGS: "

    .line 188
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->Z(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\n\n*** ADVANCED SETTINGS ***"

    .line 189
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nFOREGROUND SERVICE: "

    .line 190
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->K(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nFOREGROUND SERVICE ICON: "

    .line 191
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->L(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nPIN CODE ENTRY: "

    .line 192
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->R(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nLOAD FEEDBACKS NAMES: "

    .line 193
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->O(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nBLOCK SECOND CALL: "

    .line 194
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->G(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nSHOW SIM: "

    .line 195
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->T(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nALTERNATIVE CONTACS NAMES: "

    .line 196
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->W(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nHIDE CLEAR BUTTON: "

    .line 197
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->M(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nDARK THEME: "

    .line 198
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "\nNOTIFICATION_USE_CUSTOM_TEXT_COLOR: "

    .line 199
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->Q(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_19

    move-object v9, v7

    goto :goto_1d

    :cond_19
    move-object v9, v8

    :goto_1d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nNOTIFICATION_CUSTOM_TEXT_COLOR: "

    .line 200
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->P(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\nLANGUAGE: "

    .line 201
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n\n*** SETTINGS - PRESETS ***"

    .line 202
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v6, [Lx8/a;

    .line 203
    new-instance v10, Lw8/o;

    invoke-direct {v10, v9}, Lw8/o;-><init>([Lx8/a;)V

    .line 204
    new-instance v9, Lw8/g;

    invoke-direct {v9, v10, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {v9}, Lw8/e;->l()Ljava/util/List;

    move-result-object v2

    const/4 v9, 0x0

    .line 206
    :goto_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, "0"

    if-ge v9, v10, :cond_22

    if-nez v9, :cond_1a

    move-object v10, v0

    goto :goto_1f

    :cond_1a
    const-string v10, "\n\n"

    .line 207
    :goto_1f
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh8/u;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lh8/u;->b:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; active="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->d:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lh8/u;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; priority="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lh8/u;->e:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; useSim1="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->f:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; useSim2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->g:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; useDB="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->h:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; useBL="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->i:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; useWL="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->j:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; useContacts="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->k:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; blockAllExceptContacts="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->l:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; blockAllExceptWL="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->m:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; blockHidden="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->n:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; blockForeign="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->o:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; deleteBlocked="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->p:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; showNotifications="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->q:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; useCalendar="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->r:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; days="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-boolean v13, v10, Lh8/u;->s:Z

    const-string v14, "1"

    if-eqz v13, :cond_1b

    move-object v13, v14

    goto :goto_20

    :cond_1b
    move-object v13, v11

    :goto_20
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->t:Z

    if-eqz v13, :cond_1c

    move-object v13, v14

    goto :goto_21

    :cond_1c
    move-object v13, v11

    :goto_21
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->u:Z

    if-eqz v13, :cond_1d

    move-object v13, v14

    goto :goto_22

    :cond_1d
    move-object v13, v11

    :goto_22
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->v:Z

    if-eqz v13, :cond_1e

    move-object v13, v14

    goto :goto_23

    :cond_1e
    move-object v13, v11

    :goto_23
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->w:Z

    if-eqz v13, :cond_1f

    move-object v13, v14

    goto :goto_24

    :cond_1f
    move-object v13, v11

    :goto_24
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->x:Z

    if-eqz v13, :cond_20

    move-object v13, v14

    goto :goto_25

    :cond_20
    move-object v13, v11

    :goto_25
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v10, Lh8/u;->y:Z

    if-eqz v13, :cond_21

    move-object v11, v14

    :cond_21
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; time="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Lh8/u;->z:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " - "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lh8/u;->A:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 210
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1e

    :cond_22
    if-nez p1, :cond_25

    const-string v2, "\n\n*** OTHER URL\'s ***"

    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nFEEDBACKS_URL: "

    .line 212
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "hy#Ut*PkU@385%d2"

    invoke-static {v9, v2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nHELP_URL: "

    .line 213
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hurl"

    const-string v9, "http://127.0.0.1"

    .line 214
    invoke-static {v1, v2, v9}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "01htP*PkU@3d2KuP"

    .line 215
    invoke-static {v9, v2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nBILLING_URL: "

    .line 216
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lf8/h;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n*** ADATA ***"

    .line 217
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Lx8/a;

    .line 218
    new-instance v9, Lw8/o;

    invoke-direct {v9, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 219
    new-instance v2, Lw8/g;

    invoke-direct {v2, v9, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 220
    invoke-virtual {v2}, Lw8/e;->l()Ljava/util/List;

    move-result-object v2

    .line 221
    :goto_26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_23

    .line 222
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/a;

    iget-object v3, v3, Lh8/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/a;

    iget-object v3, v3, Lh8/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 223
    :cond_23
    invoke-static/range {p0 .. p0}, Lf8/h;->e0(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "\nUN_BAN_DATE: "

    .line 224
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_24

    const-string v2, "null"

    goto :goto_27

    .line 225
    :cond_24
    invoke-static/range {p0 .. p0}, Lf8/h;->e0(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 226
    :goto_27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const-string v2, "\n\n*** PURCHASES ***"

    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nisPro: "

    .line 228
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lf8/g;->y()Z

    move-result v2

    if-eqz v2, :cond_26

    move-object v2, v7

    goto :goto_28

    :cond_26
    move-object v2, v8

    :goto_28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nisLifetimePro: "

    .line 229
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lf8/g;->x()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_29

    :cond_27
    move-object v7, v8

    :goto_29
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ndiscountPercent: "

    .line 230
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dispercent"

    invoke-static {v1, v3, v2}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 232
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndiscountExpireDate: "

    .line 233
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "disexpdate"

    .line 234
    invoke-static {v1, v2, v11}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    sget-object v1, Lf8/a;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 238
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "SKU"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": isAcknowledged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "isAcknowledged"

    .line 239
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; PurchaseState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PurchaseState"

    .line 240
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; OrderId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "OrderId"

    .line 241
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "OriginalJson"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 244
    :cond_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mglab/scm/visual/FragmentDev;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public firstTimeStart()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fstart"

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 4
    const-class v1, Lh8/l;

    .line 5
    new-instance v3, Lw8/g;

    invoke-direct {v3, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v3}, Lw8/e;->i()Lc9/g;

    .line 7
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 8
    const-class v1, Lh8/r;

    .line 9
    new-instance v3, Lw8/g;

    invoke-direct {v3, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v3}, Lw8/e;->i()Lc9/g;

    .line 11
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 12
    const-class v1, Lh8/g;

    .line 13
    new-instance v3, Lw8/g;

    invoke-direct {v3, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {v3}, Lw8/e;->i()Lc9/g;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "psetcreatebasepresets"

    .line 16
    invoke-static {v0, v1, v2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentDev;->c()V

    .line 18
    new-instance v0, Le2/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const-string v1, "First time start enabled"

    .line 19
    iput-object v1, v0, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v1, 0x7f06005b

    .line 20
    invoke-virtual {v0, v1}, Le2/g$a;->l(I)Le2/g$a;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f060091

    goto :goto_0

    :cond_0
    const v3, 0x7f06005e

    :goto_0
    invoke-virtual {v0, v3}, Le2/g$a;->a(I)Le2/g$a;

    const v3, 0x1080041

    .line 22
    invoke-virtual {v0, v3}, Le2/g$a;->e(I)Le2/g$a;

    .line 23
    invoke-virtual {v0, v1}, Le2/g$a;->c(I)Le2/g$a;

    const-string v1, "Logs, Main, Cache tables cleared\nPlease restart application"

    .line 24
    invoke-virtual {v0, v1}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 25
    iput-boolean v2, v0, Le2/g$a;->y:Z

    .line 26
    iput-boolean v2, v0, Le2/g$a;->z:Z

    const v1, 0x7f11018f

    .line 27
    invoke-virtual {v0, v1}, Le2/g$a;->i(I)Le2/g$a;

    .line 28
    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    return-void
.end method

.method public onButton01Click()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lf8/c;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lf8/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onButton03Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_ID"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "DEVICE_ID copied to buffer"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onButton04Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lf8/h;->i0(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lf8/h;->l0(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pmessagelsid"

    invoke-static {v0, v2, v1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MAX ERROR COUNTS"

    const-string v2, "PREINIT_ERROR_COUNT = 1\nINIT_ERROR_COUNT = 3\nPreInitMessageLastShownId = -1"

    invoke-static {v0, v1, v2}, Lf8/g;->J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentDev;->c()V

    return-void
.end method

.method public onButton05Click()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    const-class v0, Lh8/l;

    .line 2
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lw8/n;

    .line 3
    sget-object v2, Lh8/m;->n:Lx8/b;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    invoke-virtual {v0}, Lw8/e;->i()Lc9/g;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "Call Log Uncleared"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onButton06Click()V
    .locals 14
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v1

    .line 3
    invoke-static {v0}, Lf8/h;->n(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    const v6, 0x7f11018f

    const v7, 0x7f0800ee

    const v8, 0x7f060033

    const v9, 0x7f060091

    const v10, 0x7f06005b

    const v11, 0x7f06005e

    if-eq v2, v4, :cond_7

    const/4 v12, 0x2

    if-eq v2, v12, :cond_4

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v12

    const-string v13, "BAN_APP"

    invoke-static {v2, v12, v13}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->e0(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    .line 6
    new-instance v12, Le2/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v13, 0x7f11002a

    .line 7
    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 8
    iput-object v13, v12, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v12, v10}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const v9, 0x7f06005e

    .line 10
    :goto_0
    invoke-virtual {v12, v9}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v1, :cond_2

    const v8, 0x7f06005e

    .line 11
    :cond_2
    invoke-virtual {v12, v8}, Le2/g$a;->c(I)Le2/g$a;

    .line 12
    invoke-virtual {v12, v7}, Le2/g$a;->e(I)Le2/g$a;

    const v1, 0x7f11002b

    new-array v7, v4, [Ljava/lang/Object;

    if-nez v2, :cond_3

    const-string v2, "null"

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v0}, Lf8/h;->e0(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v2}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v7, v5

    .line 14
    invoke-virtual {p0, v1, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 15
    iput-boolean v5, v12, Le2/g$a;->y:Z

    .line 16
    iput-boolean v5, v12, Le2/g$a;->z:Z

    .line 17
    invoke-virtual {v12, v6}, Le2/g$a;->i(I)Le2/g$a;

    sget-object v1, Lz2/p;->g:Lz2/p;

    .line 18
    iput-object v1, v12, Le2/g$a;->u:Le2/g$c;

    .line 19
    invoke-virtual {v12}, Le2/g$a;->j()Le2/g;

    goto/16 :goto_4

    .line 20
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v12

    const-string v13, "BLOCK_APP"

    invoke-static {v2, v12, v13}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 21
    new-instance v2, Le2/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v2, v12}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v12, 0x7f11002c

    .line 22
    invoke-virtual {p0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 23
    iput-object v12, v2, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {v2, v10}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const v9, 0x7f06005e

    .line 25
    :goto_2
    invoke-virtual {v2, v9}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v1, :cond_6

    const v8, 0x7f06005e

    .line 26
    :cond_6
    invoke-virtual {v2, v8}, Le2/g$a;->c(I)Le2/g$a;

    .line 27
    invoke-virtual {v2, v7}, Le2/g$a;->e(I)Le2/g$a;

    const v1, 0x7f11002d

    .line 28
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 29
    iput-boolean v5, v2, Le2/g$a;->y:Z

    .line 30
    iput-boolean v5, v2, Le2/g$a;->z:Z

    .line 31
    invoke-virtual {v2, v6}, Le2/g$a;->i(I)Le2/g$a;

    sget-object v1, Lz2/o;->g:Lz2/o;

    .line 32
    iput-object v1, v2, Le2/g$a;->u:Le2/g$c;

    .line 33
    invoke-virtual {v2}, Le2/g$a;->j()Le2/g;

    goto :goto_4

    .line 34
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v12

    const-string v13, "UPDATE_DISABLE\nUPDATE_DISABLE_REPEAT_INTERVAL = 1 days"

    invoke-static {v2, v12, v13}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 35
    new-instance v2, Le2/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v2, v12}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v12, 0x7f110032

    .line 36
    invoke-virtual {p0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 37
    iput-object v12, v2, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {v2, v10}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const v9, 0x7f06005e

    .line 39
    :goto_3
    invoke-virtual {v2, v9}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v1, :cond_9

    const v8, 0x7f06005e

    .line 40
    :cond_9
    invoke-virtual {v2, v8}, Le2/g$a;->c(I)Le2/g$a;

    .line 41
    invoke-virtual {v2, v7}, Le2/g$a;->e(I)Le2/g$a;

    const v1, 0x7f110033

    .line 42
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 43
    iput-boolean v5, v2, Le2/g$a;->y:Z

    .line 44
    iput-boolean v5, v2, Le2/g$a;->z:Z

    .line 45
    invoke-virtual {v2, v6}, Le2/g$a;->i(I)Le2/g$a;

    .line 46
    invoke-virtual {v2}, Le2/g$a;->j()Le2/g;

    goto :goto_4

    .line 47
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const-string v6, "NEW_VERSION_AVAILABLE\nNEW_VERSION_NOTIFICATION_REPEAT_INTERVAL = 7 days"

    invoke-static {v1, v2, v6}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mglab/scm/visual/MGNotification;->c(Landroid/content/Context;)V

    .line 49
    :goto_4
    invoke-static {v0}, Lf8/h;->n(Landroid/content/Context;)I

    move-result v1

    if-lt v1, v3, :cond_b

    goto :goto_5

    .line 50
    :cond_b
    invoke-static {v0}, Lf8/h;->n(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    .line 51
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "devshowpcode"

    invoke-static {v0, v2, v1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onButton13Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh8/q;->k(Landroid/content/Context;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Presets disabled!"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onButton15Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/h;->p(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lf8/h;->i0(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "INIT_ERROR_COUNT = "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->p(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "++INIT_ERROR_COUNT"

    .line 4
    invoke-static {v0, v2, v1}, Lf8/g;->J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentDev;->c()V

    return-void
.end method

.method public onButton17Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "N/A"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onButton18Click()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Lh8/l;

    invoke-direct {v0}, Lh8/l;-><init>()V

    .line 2
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    iput-object v1, v0, Lh8/l;->i:Ljava/sql/Date;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lh8/l;->g:Ljava/lang/Integer;

    const-string v2, "6505551212"

    .line 4
    iput-object v2, v0, Lh8/l;->c:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lh8/l;->j:Ljava/lang/Integer;

    const/16 v1, 0x2b

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lh8/l;->k:Ljava/lang/Integer;

    const-string v1, "US"

    .line 7
    iput-object v1, v0, Lh8/l;->l:Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lh8/l;->i:Ljava/sql/Date;

    iput-object v1, v0, Lh8/l;->e:Ljava/sql/Date;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lh8/l;->h:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh8/l;->v:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "number 6505551212 added"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onButton19Click()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/v;

    invoke-direct {v1}, Lk8/v;-><init>()V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onButton20Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "psetdev"

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f09025b

    .line 5
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f09025a

    .line 6
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Dev stuffs hidden"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onButton21Click()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    const-string v1, "video_ads_show_after_block_calls"

    invoke-virtual {v0, v1}, Lf8/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    long-to-int v1, v0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "appblc"

    invoke-static {v2, v3, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "psbt"

    invoke-static {v0, v3, v2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "valshown"

    .line 7
    invoke-static {v0, v4, v2, v3}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BlockedTotal set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVideoAdsLastShown cleared"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentDev;->c()V

    .line 10
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/t;

    invoke-direct {v1}, Lk8/t;-><init>()V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onButton22Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Lh8/q;

    invoke-direct {v0}, Lh8/q;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lh8/q;->B(Landroid/content/Context;Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/mglab/scm/visual/FragmentDev;->a(Landroid/content/Context;Z)Ljava/lang/String;

    return-void
.end method

.method public onButton23Click()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lh8/q;->s()I

    move-result v0

    .line 2
    invoke-static {}, Lh8/q;->v()I

    move-result v1

    .line 3
    const-class v2, Lh8/k;

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v2

    .line 4
    new-instance v3, Lh8/n;

    invoke-direct {v3, v1, v0}, Lh8/n;-><init>(II)V

    .line 5
    new-instance v0, Ld9/h$a;

    invoke-direct {v0, v3, v2}, Ld9/h$a;-><init>(Ld9/c;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 6
    sget-object v1, Lz2/l;->h:Lz2/l;

    .line 7
    iput-object v1, v0, Ld9/h$a;->d:Ld9/h$c;

    .line 8
    sget-object v1, Lt4/d;->i:Lt4/d;

    .line 9
    iput-object v1, v0, Ld9/h$a;->c:Ld9/h$b;

    .line 10
    new-instance v1, Ld9/h;

    invoke-direct {v1, v0}, Ld9/h;-><init>(Ld9/h$a;)V

    .line 11
    invoke-virtual {v1}, Ld9/h;->a()V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mglab/scm/visual/FragmentDev;->a(Landroid/content/Context;Z)Ljava/lang/String;

    return-void
.end method

.method public onButtonTest2Click()V
    .locals 13
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 2
    const-class v1, Lh8/l;

    .line 3
    new-instance v2, Lw8/g;

    invoke-direct {v2, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v2}, Lw8/e;->i()Lc9/g;

    .line 5
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 6
    const-class v1, Lh8/c;

    .line 7
    new-instance v2, Lw8/g;

    invoke-direct {v2, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v2}, Lw8/e;->i()Lc9/g;

    .line 9
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 10
    const-class v1, Lh8/w;

    .line 11
    new-instance v2, Lw8/g;

    invoke-direct {v2, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {v2}, Lw8/e;->i()Lc9/g;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    .line 14
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 15
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v3, v2, Lh8/l;->i:Ljava/sql/Date;

    const/4 v3, 0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lh8/l;->g:Ljava/lang/Integer;

    const-string v4, "+1234567890"

    .line 17
    iput-object v4, v2, Lh8/l;->c:Ljava/lang/String;

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lh8/l;->j:Ljava/lang/Integer;

    const/16 v5, 0x2b

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lh8/l;->k:Ljava/lang/Integer;

    const-string v5, "RU"

    .line 20
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 21
    iget-object v6, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v6, v2, Lh8/l;->e:Ljava/sql/Date;

    const-string v6, "\u0422\u0430\u043a\u0441\u0438"

    .line 22
    iput-object v6, v2, Lh8/l;->h:Ljava/lang/String;

    .line 23
    invoke-static {v4}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lh8/l;->v:Ljava/lang/String;

    .line 24
    invoke-virtual {v2}, Lb9/a;->a()Z

    const-wide/32 v7, 0x22ca40

    add-long/2addr v0, v7

    .line 25
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 26
    new-instance v7, Ljava/sql/Date;

    invoke-direct {v7, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v7, v2, Lh8/l;->i:Ljava/sql/Date;

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Lh8/l;->g:Ljava/lang/Integer;

    const-string v7, "+9234567895"

    .line 28
    iput-object v7, v2, Lh8/l;->c:Ljava/lang/String;

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Lh8/l;->j:Ljava/lang/Integer;

    const/4 v7, 0x0

    .line 30
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v2, Lh8/l;->k:Ljava/lang/Integer;

    .line 31
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 32
    iget-object v8, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v8, v2, Lh8/l;->e:Ljava/sql/Date;

    const/16 v8, 0xa

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v2, Lh8/l;->d:Ljava/lang/Integer;

    const/4 v8, -0x1

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lh8/l;->f:Ljava/lang/Integer;

    .line 35
    invoke-virtual {v2}, Lb9/a;->a()Z

    const-wide/32 v9, 0x7e57c0

    add-long/2addr v0, v9

    .line 36
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 37
    new-instance v9, Ljava/sql/Date;

    invoke-direct {v9, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v9, v2, Lh8/l;->i:Ljava/sql/Date;

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lh8/l;->g:Ljava/lang/Integer;

    const-string v9, "+1234567892"

    .line 39
    iput-object v9, v2, Lh8/l;->c:Ljava/lang/String;

    const/4 v9, 0x3

    .line 40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lh8/l;->j:Ljava/lang/Integer;

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lh8/l;->k:Ljava/lang/Integer;

    const-string v9, ""

    .line 42
    iput-object v9, v2, Lh8/l;->h:Ljava/lang/String;

    .line 43
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 44
    iget-object v9, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v9, v2, Lh8/l;->e:Ljava/sql/Date;

    const/16 v9, 0x19

    .line 45
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lh8/l;->d:Ljava/lang/Integer;

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lh8/l;->f:Ljava/lang/Integer;

    .line 47
    invoke-virtual {v2}, Lb9/a;->a()Z

    const-wide/32 v9, 0x433bea0

    add-long/2addr v0, v9

    .line 48
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 49
    new-instance v9, Ljava/sql/Date;

    invoke-direct {v9, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v9, v2, Lh8/l;->i:Ljava/sql/Date;

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lh8/l;->g:Ljava/lang/Integer;

    const-string v9, "+1234567897"

    .line 51
    iput-object v9, v2, Lh8/l;->c:Ljava/lang/String;

    const-string v10, "\u0420\u0430\u0431\u043e\u0442\u0430"

    .line 52
    iput-object v10, v2, Lh8/l;->h:Ljava/lang/String;

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->j:Ljava/lang/Integer;

    const/16 v11, 0x163

    .line 54
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->k:Ljava/lang/Integer;

    .line 55
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 56
    iget-object v11, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v11, v2, Lh8/l;->e:Ljava/sql/Date;

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->d:Ljava/lang/Integer;

    .line 58
    invoke-static {v9}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->v:Ljava/lang/String;

    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->f:Ljava/lang/Integer;

    .line 60
    invoke-virtual {v2}, Lb9/a;->a()Z

    const-wide/32 v11, 0x927c0

    add-long/2addr v0, v11

    .line 61
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 62
    new-instance v11, Ljava/sql/Date;

    invoke-direct {v11, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v11, v2, Lh8/l;->i:Ljava/sql/Date;

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->g:Ljava/lang/Integer;

    .line 64
    iput-object v9, v2, Lh8/l;->c:Ljava/lang/String;

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->j:Ljava/lang/Integer;

    .line 66
    iput-object v10, v2, Lh8/l;->h:Ljava/lang/String;

    .line 67
    invoke-static {v9}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->v:Ljava/lang/String;

    const/16 v11, 0x12a

    .line 68
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->k:Ljava/lang/Integer;

    .line 69
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 70
    iget-object v11, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v11, v2, Lh8/l;->e:Ljava/sql/Date;

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->d:Ljava/lang/Integer;

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->f:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v2}, Lb9/a;->a()Z

    const-wide/32 v11, 0x493e0

    add-long/2addr v0, v11

    .line 74
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 75
    new-instance v11, Ljava/sql/Date;

    invoke-direct {v11, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v11, v2, Lh8/l;->i:Ljava/sql/Date;

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->g:Ljava/lang/Integer;

    .line 77
    iput-object v9, v2, Lh8/l;->c:Ljava/lang/String;

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->j:Ljava/lang/Integer;

    .line 79
    iput-object v10, v2, Lh8/l;->h:Ljava/lang/String;

    .line 80
    invoke-static {v9}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->v:Ljava/lang/String;

    .line 81
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->k:Ljava/lang/Integer;

    .line 82
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 83
    iget-object v0, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v0, v2, Lh8/l;->e:Ljava/sql/Date;

    const/16 v0, 0x14

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->d:Ljava/lang/Integer;

    .line 85
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->f:Ljava/lang/Integer;

    .line 86
    invoke-virtual {v2}, Lb9/a;->a()Z

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 89
    new-instance v11, Ljava/sql/Date;

    invoke-direct {v11, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v11, v2, Lh8/l;->i:Ljava/sql/Date;

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->g:Ljava/lang/Integer;

    const-string v11, "-2"

    .line 91
    iput-object v11, v2, Lh8/l;->c:Ljava/lang/String;

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->j:Ljava/lang/Integer;

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->k:Ljava/lang/Integer;

    .line 94
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 95
    iget-object v11, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v11, v2, Lh8/l;->e:Ljava/sql/Date;

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->d:Ljava/lang/Integer;

    .line 97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lh8/l;->f:Ljava/lang/Integer;

    .line 98
    invoke-virtual {v2}, Lb9/a;->a()Z

    const-wide/32 v11, 0x59b8c0

    add-long/2addr v0, v11

    .line 99
    new-instance v2, Lh8/l;

    invoke-direct {v2}, Lh8/l;-><init>()V

    .line 100
    new-instance v11, Ljava/sql/Date;

    invoke-direct {v11, v0, v1}, Ljava/sql/Date;-><init>(J)V

    iput-object v11, v2, Lh8/l;->i:Ljava/sql/Date;

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->g:Ljava/lang/Integer;

    .line 102
    iput-object v4, v2, Lh8/l;->c:Ljava/lang/String;

    .line 103
    iput-object v6, v2, Lh8/l;->h:Ljava/lang/String;

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->j:Ljava/lang/Integer;

    const/16 v0, 0x22

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->k:Ljava/lang/Integer;

    .line 106
    invoke-static {v4}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->v:Ljava/lang/String;

    .line 107
    iput-object v5, v2, Lh8/l;->l:Ljava/lang/String;

    .line 108
    iget-object v0, v2, Lh8/l;->i:Ljava/sql/Date;

    iput-object v0, v2, Lh8/l;->e:Ljava/sql/Date;

    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->d:Ljava/lang/Integer;

    .line 110
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lh8/l;->f:Ljava/lang/Integer;

    .line 111
    invoke-virtual {v2}, Lb9/a;->a()Z

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "psbt"

    invoke-static {v0, v2, v1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "psbtd"

    invoke-static {v0, v2, v1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "psctd"

    invoke-static {v0, v5, v2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "psct"

    invoke-static {v0, v5, v2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "psbtdd"

    invoke-static {v0, v5, v2}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "psctdd"

    invoke-static {v0, v5, v2}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lh8/c;

    invoke-direct {v0}, Lh8/c;-><init>()V

    .line 119
    iput-object v10, v0, Lh8/c;->d:Ljava/lang/String;

    .line 120
    iput v7, v0, Lh8/c;->f:I

    .line 121
    invoke-static {v9}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lh8/c;->e:Ljava/lang/String;

    .line 122
    iput-object v9, v0, Lh8/c;->c:Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 124
    new-instance v0, Lh8/c;

    invoke-direct {v0}, Lh8/c;-><init>()V

    .line 125
    iput v3, v0, Lh8/c;->f:I

    const-string v2, "+1234567880"

    .line 126
    iput-object v2, v0, Lh8/c;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 128
    new-instance v0, Lh8/c;

    invoke-direct {v0}, Lh8/c;-><init>()V

    .line 129
    iput v3, v0, Lh8/c;->f:I

    const-string v2, "+1234567881"

    .line 130
    iput-object v2, v0, Lh8/c;->c:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 132
    new-instance v0, Lh8/c;

    invoke-direct {v0}, Lh8/c;-><init>()V

    .line 133
    iput v1, v0, Lh8/c;->f:I

    const-string v1, "+1234567882"

    .line 134
    iput-object v1, v0, Lh8/c;->c:Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 136
    new-instance v0, Lh8/w;

    invoke-direct {v0}, Lh8/w;-><init>()V

    .line 137
    iput-object v6, v0, Lh8/w;->d:Ljava/lang/String;

    .line 138
    invoke-static {v4}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh8/w;->e:Ljava/lang/String;

    .line 139
    iput-object v4, v0, Lh8/w;->c:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Lb9/a;->a()Z

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "Data for screenshots added"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onClearCallLogContactsClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Le2/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const-string v1, "Clear calllog/contacts"

    .line 2
    iput-object v1, v0, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v1, 0x7f06005b

    .line 3
    invoke-virtual {v0, v1}, Le2/g$a;->l(I)Le2/g$a;

    const v1, 0x7f0800ee

    .line 4
    invoke-virtual {v0, v1}, Le2/g$a;->e(I)Le2/g$a;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Le2/g$a;->y:Z

    .line 6
    iput-boolean v1, v0, Le2/g$a;->z:Z

    const-string v1, "Clear all"

    .line 7
    iput-object v1, v0, Le2/g$a;->l:Ljava/lang/CharSequence;

    const-string v1, "Clear calllog"

    .line 8
    iput-object v1, v0, Le2/g$a;->m:Ljava/lang/CharSequence;

    const-string v1, "Cancel"

    .line 9
    iput-object v1, v0, Le2/g$a;->n:Ljava/lang/CharSequence;

    .line 10
    sget-object v1, Lz2/l;->i:Lz2/l;

    .line 11
    iput-object v1, v0, Le2/g$a;->u:Le2/g$c;

    .line 12
    sget-object v1, Lt4/d;->k:Lt4/d;

    .line 13
    iput-object v1, v0, Le2/g$a;->w:Le2/g$c;

    .line 14
    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    return-void
.end method

.method public onClickButton02()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentDev;->c()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mglab/scm/visual/MGNotification;->c(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mglab/scm/visual/MGNotification;->d(Landroid/content/Context;)V

    return-void
.end method

.method public onClickClearCache()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Lcom/mglab/scm/visual/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mglab/scm/visual/c;->h(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0059

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentDev;->a:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onMessageEvent(Lk8/e;)V
    .locals 3
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lk8/e;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentDev;->c()V

    .line 3
    iget v0, p1, Lk8/e;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4
    new-instance v0, Le2/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lk8/e;->a:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v1, 0x7f06005b

    .line 6
    invoke-virtual {v0, v1}, Le2/g$a;->l(I)Le2/g$a;

    .line 7
    iget p1, p1, Lk8/e;->b:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const p1, 0x7f0800ee

    goto :goto_0

    :cond_0
    const p1, 0x1080041

    :goto_0
    invoke-virtual {v0, p1}, Le2/g$a;->e(I)Le2/g$a;

    .line 8
    invoke-virtual {v0, v1}, Le2/g$a;->c(I)Le2/g$a;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f060091

    goto :goto_1

    :cond_1
    const p1, 0x7f06005e

    :goto_1
    invoke-virtual {v0, p1}, Le2/g$a;->a(I)Le2/g$a;

    .line 10
    iput-boolean v2, v0, Le2/g$a;->y:Z

    .line 11
    iput-boolean v2, v0, Le2/g$a;->z:Z

    const p1, 0x7f11018f

    .line 12
    invoke-virtual {v0, p1}, Le2/g$a;->i(I)Le2/g$a;

    .line 13
    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    :cond_2
    return-void
.end method

.method public onMessageEventProStatusChanged(Lk8/s;)V
    .locals 1
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mglab/scm/visual/FragmentDev;->a(Landroid/content/Context;Z)Ljava/lang/String;

    return-void
.end method

.method public onShowButtonsClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev;->buttonsLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev;->buttonShowButtons:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentDev;->buttonsLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HIDE BUTTONS"

    goto :goto_1

    :cond_1
    const-string v1, "SHOW BUTTONS"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    const p2, 0x7f110020

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf/j;

    invoke-virtual {p1}, Lf/j;->s()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lf/a;->p(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentDev;->c()V

    return-void
.end method

.method public onbutton07Click()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh8/q;->C(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "Call Log updated"

    invoke-static {v0, v1, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onbutton09Click(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "Download DB started.. please wait.."

    invoke-static {p1, v0, v1}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    return-void
.end method

.method public onbutton10Click(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    const-class p1, Lh8/l;

    .line 2
    new-instance v0, Lw8/q;

    invoke-direct {v0, p1}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lw8/n;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lh8/m;->A:Lx8/b;

    .line 4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {v0, p1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lw8/d;->d()V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "Log.feedbackChecked updated to false\nStart updateAllNamesFromFeedbacks"

    invoke-static {p1, v0, v1}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->Q(Landroid/content/Context;)V

    return-void
.end method
