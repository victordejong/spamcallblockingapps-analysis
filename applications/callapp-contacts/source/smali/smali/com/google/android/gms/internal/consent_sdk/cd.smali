.class final Lcom/google/android/gms/internal/consent_sdk/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/consent_sdk/cf;

.field final b:Landroid/app/Activity;

.field final c:Lcom/google/android/c/a;

.field final d:Lcom/google/android/c/d;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/cf;Landroid/app/Activity;Lcom/google/android/c/a;Lcom/google/android/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->b:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->c:Lcom/google/android/c/a;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->d:Lcom/google/android/c/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/cf;Landroid/app/Activity;Lcom/google/android/c/a;Lcom/google/android/c/d;Lcom/google/android/gms/internal/consent_sdk/cg;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/consent_sdk/cd;-><init>(Lcom/google/android/gms/internal/consent_sdk/cf;Landroid/app/Activity;Lcom/google/android/c/a;Lcom/google/android/c/d;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/consent_sdk/aq;
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 1013
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 2013
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 127
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    .line 130
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/aq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/consent_sdk/aq;-><init>()V

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/consent_sdk/aq;->a:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 3013
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 135
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 4013
    iget-object v4, v4, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 136
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_0
    iput-object v1, v3, Lcom/google/android/gms/internal/consent_sdk/aq;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 140
    invoke-static {v2}, Landroidx/core/content/a/a;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/consent_sdk/aq;->c:Ljava/lang/String;

    :cond_1
    return-object v3
.end method

.method final b()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzk;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->d:Lcom/google/android/c/d;

    .line 4017
    iget-object v0, v0, Lcom/google/android/c/d;->b:Ljava/lang/String;

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 5013
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 148
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 6013
    iget-object v3, v3, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 149
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_1

    const-string v0, "com.google.android.gms.ads.APPLICATION_ID"

    .line 154
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 157
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v1, 0x3

    const-string v2, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    .line 159
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    throw v0
.end method
