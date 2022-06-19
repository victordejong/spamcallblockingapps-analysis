.class final Lcom/google/android/gms/internal/consent_sdk/zzo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

.field private final zzb:Landroid/app/Activity;

.field private final zzc:Ls4/a;

.field private final zzd:Ls4/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzn;Landroid/app/Activity;Ls4/a;Ls4/d;Lcom/google/android/gms/internal/consent_sdk/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzc:Ls4/a;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzd:Ls4/d;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zzo;)Lcom/google/android/gms/internal/consent_sdk/zzbu;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzj;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzbu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzd:Ls4/d;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_2

    .line 4
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 7
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "com.google.android.gms.ads.APPLICATION_ID"

    .line 8
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 9
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 10
    :goto_2
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzn;)Lcom/google/android/gms/internal/consent_sdk/zzb;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzb;->zza()Lcom/google/android/gms/internal/consent_sdk/zza;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/internal/consent_sdk/zza;->zza:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzc:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/consent_sdk/zza;->zzb:Z

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzb:Ljava/lang/Boolean;

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzc:Ls4/a;

    .line 13
    iget-boolean v2, v2, Ls4/a;->a:Z

    if-nez v2, :cond_3

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_3

    .line 15
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzc:Ls4/a;

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbp;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_3
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzk:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzn;)Lcom/google/android/gms/internal/consent_sdk/zzam;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzam;->zzb()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzg:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzd:Ls4/d;

    .line 21
    iget-boolean v2, v2, Ls4/d;->a:Z

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzf:Ljava/lang/Boolean;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zze:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 24
    invoke-direct {v3}, Lcom/google/android/gms/internal/consent_sdk/zzbq;-><init>()V

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzb:Ljava/lang/Integer;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zza:Ljava/lang/String;

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzc:I

    iput-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 28
    invoke-direct {v4}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>()V

    .line 29
    iget v5, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza:Ljava/lang/Integer;

    .line 30
    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzc:Ljava/lang/Double;

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_4

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    .line 33
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zzb:Landroid/app/Activity;

    if-nez v2, :cond_5

    move-object v2, v1

    goto :goto_4

    .line 34
    :cond_5
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_5

    .line 35
    :cond_6
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    :goto_5
    if-nez v2, :cond_7

    move-object v2, v1

    goto :goto_6

    .line 36
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    :goto_6
    if-nez v2, :cond_8

    move-object v2, v1

    goto :goto_7

    .line 37
    :cond_8
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_9

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_9

    .line 39
    :cond_9
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    new-instance v5, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_a

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-direct {v7}, Lcom/google/android/gms/internal/consent_sdk/zzbr;-><init>()V

    .line 42
    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzb:Ljava/lang/Integer;

    .line 43
    iget v8, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzc:Ljava/lang/Integer;

    .line 44
    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza:Ljava/lang/Integer;

    .line 45
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzd:Ljava/lang/Integer;

    .line 46
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object v2, v5

    .line 47
    :goto_9
    iput-object v2, v4, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzd:Ljava/util/List;

    iput-object v4, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v2

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-object v4, v1

    :goto_a
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzbo;

    invoke-direct {v5}, Lcom/google/android/gms/internal/consent_sdk/zzbo;-><init>()V

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzbo;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    iput-object v1, v5, Lcom/google/android/gms/internal/consent_sdk/zzbo;->zzb:Ljava/lang/String;

    if-eqz v4, :cond_e

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_d

    .line 53
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    goto :goto_b

    .line 54
    :cond_d
    iget p0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p0

    .line 55
    :goto_b
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/google/android/gms/internal/consent_sdk/zzbo;->zzc:Ljava/lang/String;

    :cond_e
    iput-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzbo;

    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzbt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzbt;-><init>()V

    const-string v1, "2.0.0"

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbt;->zza:Ljava/lang/String;

    iput-object p0, v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbt;

    return-object v0

    .line 56
    :cond_f
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const/4 v0, 0x3

    const-string v1, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    throw p0
.end method
