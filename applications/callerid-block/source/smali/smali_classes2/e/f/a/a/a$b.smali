.class Le/f/a/a/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/f/a/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Le/f/a/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Le/f/a/a/a$b;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "android.app.LoadedApk"

    const-string v1, "mReceiverResource"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Le/f/b/a;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.app.ContextImpl"

    const-string v3, "mPackageInfo"

    invoke-static {v1, v3, v2}, Le/f/b/a;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Le/f/b/a;->f(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v0, p1, v2}, Le/f/b/a;->g(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Le/f/b/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/f/a/a/a$d;)Z
    .locals 3

    invoke-direct {p0, p1}, Le/f/a/a/a$b;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "mWhiteList"

    invoke-direct {p0, p2, v0}, Le/f/a/a/a$b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Le/f/b/a;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const-string v0, "mResourceConfig"

    invoke-static {p2, v0, p1}, Le/f/b/a;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Le/f/a/a/a$b;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Le/f/a/a/a$b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
