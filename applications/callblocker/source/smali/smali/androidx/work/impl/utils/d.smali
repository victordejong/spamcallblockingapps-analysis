.class public Landroidx/work/impl/utils/d;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "PackageManagerHelper"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 48
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    if-eqz p2, :cond_0

    move v0, v2

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 55
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/utils/d;->a:Ljava/lang/String;

    const-string/jumbo v5, "%s %s"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_1
    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    .line 55
    invoke-virtual {v1, v4, v0, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 61
    :goto_2
    return-void

    :cond_0
    move v0, v3

    .line 49
    goto :goto_0

    .line 56
    :cond_1
    const-string/jumbo v0, "disabled"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 58
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/d;->a:Ljava/lang/String;

    const-string/jumbo v6, "%s could not be %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    if-eqz p2, :cond_2

    const-string/jumbo v0, "enabled"

    :goto_3
    aput-object v0, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v1, v2, v8

    invoke-virtual {v4, v5, v0, v2}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "disabled"

    goto :goto_3
.end method
