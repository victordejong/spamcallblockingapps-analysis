.class Le/f/a/a/a$g;
.super Le/f/a/a/a$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/a/a$g$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/f/a/a/a$f;-><init>(Le/f/a/a/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Le/f/a/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Le/f/a/a/a$g;-><init>()V

    return-void
.end method

.method private e(Ljava/lang/ClassLoader;Le/f/a/a/a$d;)V
    .locals 5

    const-string v0, "mInstance"

    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IActivityManagerSingleton"

    invoke-static {v1, v2}, Le/f/b/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Le/f/b/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Le/f/a/a/a$g$a;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, v4}, Le/f/a/a/a$g$a;-><init>(Ljava/lang/Object;Le/f/a/a/a$d;Le/f/a/a/a$a;)V

    const-string p2, "android.app.IActivityManager"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    invoke-static {p1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Le/f/b/a;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/f/a/a/a$d;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Le/f/a/a/a$f;->a(Landroid/content/Context;Le/f/a/a/a$d;)Z

    move-result v0

    const-class v1, Le/f/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Le/f/a/a/a$g;->e(Ljava/lang/ClassLoader;Le/f/a/a/a$d;)V

    return v0
.end method
