.class final synthetic Lcom/google/android/gms/internal/ads/chg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chg;->a:Lcom/google/android/gms/internal/ads/chh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/chg;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 1028
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/chh;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1029
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "geo:0,0?q=donuts"

    .line 1030
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/chh;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-string v4, "http://www.google.com"

    .line 1031
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/chh;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 1032
    :goto_1
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 1033
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 1034
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/chh;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/util/j;->d(Landroid/content/Context;)Z

    move-result v12

    .line 1035
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/chh;->a:Landroid/content/Context;

    .line 2001
    invoke-static {v4}, Lcom/google/android/gms/common/util/j;->e(Landroid/content/Context;)Z

    move-result v13

    .line 1036
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    .line 1037
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    .line 1039
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    .line 1040
    :goto_2
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1041
    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1045
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/chh;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/chh;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v16

    .line 1046
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/chh;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/chh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 1047
    sget-object v18, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1048
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->a:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 1051
    new-instance v3, Landroid/content/Intent;

    const-string v4, "http://www.example.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1053
    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/high16 v5, 0x10000

    .line 1055
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    .line 1057
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1058
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1059
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1060
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1061
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dsu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1062
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move/from16 v19, v6

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    .line 1066
    :goto_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzz()J

    move-result-wide v21

    .line 1067
    new-instance v1, Lcom/google/android/gms/internal/ads/che;

    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v7, v1

    invoke-direct/range {v7 .. v22}, Lcom/google/android/gms/internal/ads/che;-><init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    return-object v1
.end method
