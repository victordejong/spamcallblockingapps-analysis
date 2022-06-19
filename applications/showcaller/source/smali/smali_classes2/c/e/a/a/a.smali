.class public final Lc/e/a/a/a;
.super Ljava/lang/Object;
.source "LoadedApkHuaWei.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/a$d;,
        Lc/e/a/a/a$c;,
        Lc/e/a/a/a$b;,
        Lc/e/a/a/a$e;,
        Lc/e/a/a/a$f;,
        Lc/e/a/a/a$g;
    }
.end annotation


# static fields
.field private static final a:Lc/e/a/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Lc/e/a/a/a$g;

    invoke-direct {v0, v1}, Lc/e/a/a/a$g;-><init>(Lc/e/a/a/a$a;)V

    sput-object v0, Lc/e/a/a/a;->a:Lc/e/a/a/a$c;

    goto :goto_0

    :cond_0
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 3
    new-instance v0, Lc/e/a/a/a$f;

    invoke-direct {v0, v1}, Lc/e/a/a/a$f;-><init>(Lc/e/a/a/a$a;)V

    sput-object v0, Lc/e/a/a/a;->a:Lc/e/a/a/a$c;

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    .line 4
    new-instance v0, Lc/e/a/a/a$e;

    invoke-direct {v0, v1}, Lc/e/a/a/a$e;-><init>(Lc/e/a/a/a$a;)V

    sput-object v0, Lc/e/a/a/a;->a:Lc/e/a/a/a$c;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lc/e/a/a/a$b;

    invoke-direct {v0, v1}, Lc/e/a/a/a$b;-><init>(Lc/e/a/a/a$a;)V

    sput-object v0, Lc/e/a/a/a;->a:Lc/e/a/a/a$c;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lc/e/a/a/a;->b(Landroid/app/Application;Lc/e/a/a/a$d;)V

    return-void
.end method

.method public static b(Landroid/app/Application;Lc/e/a/a/a$d;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lc/e/a/a/a;->a:Lc/e/a/a/a$c;

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lc/e/a/a/a$c;->a(Landroid/content/Context;Lc/e/a/a/a$d;)Z

    goto :goto_0

    .line 2
    :cond_0
    const-class p0, Lc/e/a/a/a;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "application is null \uff01\uff01\uff01"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
