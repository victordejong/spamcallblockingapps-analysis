.class final Lcom/google/android/gms/internal/ads/can;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cak;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/can;->b:Landroid/content/Context;

    .line 4
    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    const-string/jumbo v2, "com.android.vending"

    const/16 v3, 0x80

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 12
    const-string/jumbo v1, "market://details?id=com.google.android.gms.ads"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/can;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-object v0

    .line 15
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 16
    if-eqz v1, :cond_0

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cak;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/cam;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cam;-><init>(Lcom/google/android/gms/internal/ads/can;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/cak;
    .locals 19

    .prologue
    .line 28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/can;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 30
    const-string/jumbo v3, "geo:0,0?q=donuts"

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/can;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 31
    :goto_0
    const-string/jumbo v4, "http://www.google.com"

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/ads/can;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 32
    :goto_1
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 33
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v7, "generic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 34
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/can;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/gms/common/util/i;->d(Landroid/content/Context;)Z

    move-result v7

    .line 35
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/can;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/common/util/i;->c(Landroid/content/Context;)Z

    move-result v8

    .line 36
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v2, v11, :cond_2

    .line 39
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v11

    .line 40
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v11}, Landroid/os/LocaleList;->size()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 41
    invoke-virtual {v11, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 30
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 45
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/can;->b:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/can;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v11

    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/can;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/can;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 47
    sget-object v13, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/can;->b:Landroid/content/Context;

    .line 50
    if-eqz v14, :cond_4

    .line 51
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v16, "android.intent.action.VIEW"

    const-string/jumbo v17, "http://www.example.com"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    const/16 v16, 0x0

    .line 53
    move/from16 v0, v16

    invoke-virtual {v14, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 54
    const/high16 v17, 0x10000

    .line 55
    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 56
    if-eqz v17, :cond_4

    if-eqz v16, :cond_4

    .line 57
    const/4 v2, 0x0

    move v14, v2

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_4

    .line 58
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 59
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/dif;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 62
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 66
    :goto_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vj;->e()J

    move-result-wide v16

    .line 67
    new-instance v2, Lcom/google/android/gms/internal/ads/cak;

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/cak;-><init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    return-object v2

    .line 63
    :cond_3
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_3

    .line 64
    :cond_4
    const/4 v14, 0x0

    goto :goto_4
.end method
