.class Lcom/e/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/e/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/e/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/a/a$1;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/e/a/a/a$a;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    const-string v0, "android.app.LoadedApk"

    const-string v1, "mReceiverResource"

    .line 216
    invoke-static {v0, v1}, Lcom/e/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.app.ContextImpl"

    const-string v2, "mPackageInfo"

    .line 218
    invoke-static {v1, v2}, Lcom/e/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {v1, p0}, Lcom/e/b/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 222
    invoke-static {v0, p0, v1}, Lcom/e/b/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/e/a/a/a$a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/e/a/a/a$a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    .line 207
    :try_start_0
    invoke-static {p0, p1}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/e/a/a/a$c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/e/a/a/a$a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "mWhiteList"

    .line 184
    invoke-static {p2, v0}, Lcom/e/a/a/a$a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 186
    check-cast v1, [Ljava/lang/String;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const-string v0, "mResourceConfig"

    .line 194
    invoke-static {p2, v0, p1}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
