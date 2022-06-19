.class final Lcom/e/a/a/a$f;
.super Lcom/e/a/a/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/e/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/e/a/a/a$f$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/e/a/a/a$e;-><init>(Lcom/e/a/a/a$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/a/a$1;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/e/a/a/a$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/e/a/a/a$c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "mInstance"

    .line 78
    invoke-super {p0, p1, p2}, Lcom/e/a/a/a$e;->a(Landroid/content/Context;Lcom/e/a/a/a$c;)Z

    move-result v1

    .line 79
    const-class v2, Lcom/e/a/a/a;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1086
    :try_start_0
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IActivityManagerSingleton"

    invoke-static {v2, v3}, Lcom/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1088
    invoke-static {v2, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1090
    new-instance v4, Lcom/e/a/a/a$f$a;

    const/4 v5, 0x0

    invoke-direct {v4, v3, p2, v5}, Lcom/e/a/a/a$f$a;-><init>(Ljava/lang/Object;Lcom/e/a/a/a$c;Lcom/e/a/a/a$1;)V

    const-string p2, "android.app.IActivityManager"

    .line 1091
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    .line 1092
    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 1093
    invoke-static {v2, v0, p1}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v1
.end method
