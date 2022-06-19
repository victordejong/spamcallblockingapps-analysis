.class Lc/e/a/a/a$e;
.super Lc/e/a/a/a$b;
.source "LoadedApkHuaWei.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
    invoke-direct {p0}, Lc/e/a/a/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/e/a/a/a$d;)Z
    .locals 1

    const-string p2, "mWhiteList"

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/a$b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
