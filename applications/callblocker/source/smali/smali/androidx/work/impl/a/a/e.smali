.class public Landroidx/work/impl/a/a/e;
.super Landroidx/work/impl/a/a/c;
.source "NetworkMeteredController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/a/a/c",
        "<",
        "Landroidx/work/impl/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/a/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1, p2}, Landroidx/work/impl/a/b/g;->a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Landroidx/work/impl/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/a/b/g;->c()Landroidx/work/impl/a/b/e;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/work/impl/a/a/c;-><init>(Landroidx/work/impl/a/b/d;)V

    .line 40
    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/a/b;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    .line 54
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/a/a/e;->a:Ljava/lang/String;

    const-string/jumbo v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {p1}, Landroidx/work/impl/a/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroidx/work/impl/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroidx/work/impl/a/b;->c()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method a(Landroidx/work/impl/b/p;)Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->a()Landroidx/work/m;

    move-result-object v0

    sget-object v1, Landroidx/work/m;->e:Landroidx/work/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Landroidx/work/impl/a/b;

    invoke-virtual {p0, p1}, Landroidx/work/impl/a/a/e;->a(Landroidx/work/impl/a/b;)Z

    move-result v0

    return v0
.end method
