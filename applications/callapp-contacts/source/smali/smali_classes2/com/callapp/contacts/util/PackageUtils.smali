.class public Lcom/callapp/contacts/util/PackageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/PackageUtils$PackageInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/common/model/json/JSONInstalledApp;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 54
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 57
    new-instance v3, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;

    invoke-direct {v3}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;-><init>()V

    .line 58
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->a(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->b(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->c(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->a(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;I)I

    .line 62
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->a(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;J)J

    .line 63
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->b(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;J)J

    .line 64
    invoke-virtual {v3}, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->getJsonObject()Lcom/callapp/common/model/json/JSONInstalledApp;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 16
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
