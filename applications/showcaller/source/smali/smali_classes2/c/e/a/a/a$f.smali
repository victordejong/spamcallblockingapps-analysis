.class Lc/e/a/a/a$f;
.super Lc/e/a/a/a$b;
.source "LoadedApkHuaWei.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/a$b;-><init>(Lc/e/a/a/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lc/e/a/a/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/a/a$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/e/a/a/a$d;)Z
    .locals 3

    const-string p2, "mWhiteListMap"

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a$b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/util/Map;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Ljava/util/Map;

    .line 5
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
