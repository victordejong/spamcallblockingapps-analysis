.class public final Landroidx/core/a/b;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 135
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-static {p1}, Landroidx/core/app/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    if-nez v2, :cond_2

    move v0, v1

    .line 103
    goto :goto_0

    .line 106
    :cond_2
    if-nez p4, :cond_3

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 111
    aget-object p4, v3, v1

    .line 114
    :cond_3
    invoke-static {p0, v2, p4}, Landroidx/core/app/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    const/4 v0, -0x2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 119
    goto :goto_0
.end method
