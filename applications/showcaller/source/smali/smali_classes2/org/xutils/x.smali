.class public final Lorg/xutils/x;
.super Ljava/lang/Object;
.source "x.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/x$a;,
        Lorg/xutils/x$Ext;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app()Landroid/app/Application;
    .locals 4

    .line 1
    invoke-static {}, Lorg/xutils/x$Ext;->b()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.android.layoutlib.bridge.impl.RenderAction"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCurrentContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5
    new-instance v1, Lorg/xutils/x$a;

    invoke-direct {v1, v0}, Lorg/xutils/x$a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lorg/xutils/x$Ext;->c(Landroid/app/Application;)Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :catchall_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please invoke x.Ext.init(app) on Application#onCreate() and register your Application in manifest."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    :goto_0
    invoke-static {}, Lorg/xutils/x$Ext;->b()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/xutils/db/DbManagerImpl;->getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object p0

    return-object p0
.end method

.method public static http()Lorg/xutils/HttpManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/xutils/x$Ext;->e()Lorg/xutils/HttpManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/xutils/http/HttpManagerImpl;->registerInstance()V

    .line 3
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->e()Lorg/xutils/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public static image()Lorg/xutils/ImageManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/xutils/x$Ext;->f()Lorg/xutils/ImageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/xutils/image/ImageManagerImpl;->registerInstance()V

    .line 3
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->f()Lorg/xutils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/xutils/x$Ext;->a()Z

    move-result v0

    return v0
.end method

.method public static task()Lorg/xutils/common/TaskController;
    .locals 1

    .line 1
    invoke-static {}, Lorg/xutils/x$Ext;->d()Lorg/xutils/common/TaskController;

    move-result-object v0

    return-object v0
.end method

.method public static view()Lorg/xutils/ViewInjector;
    .locals 1

    .line 1
    invoke-static {}, Lorg/xutils/x$Ext;->g()Lorg/xutils/ViewInjector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/xutils/view/ViewInjectorImpl;->registerInstance()V

    .line 3
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->g()Lorg/xutils/ViewInjector;

    move-result-object v0

    return-object v0
.end method
