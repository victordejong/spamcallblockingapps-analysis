.class public final Le/f/a/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/a/a$d;,
        Le/f/a/a/a$c;,
        Le/f/a/a/a$b;,
        Le/f/a/a/a$e;,
        Le/f/a/a/a$f;,
        Le/f/a/a/a$g;
    }
.end annotation


# static fields
.field private static final a:Le/f/a/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    new-instance v0, Le/f/a/a/a$g;

    invoke-direct {v0, v1}, Le/f/a/a/a$g;-><init>(Le/f/a/a/a$a;)V

    :goto_0
    sput-object v0, Le/f/a/a/a;->a:Le/f/a/a/a$c;

    goto :goto_1

    :cond_0
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    new-instance v0, Le/f/a/a/a$f;

    invoke-direct {v0, v1}, Le/f/a/a/a$f;-><init>(Le/f/a/a/a$a;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    new-instance v0, Le/f/a/a/a$e;

    invoke-direct {v0, v1}, Le/f/a/a/a$e;-><init>(Le/f/a/a/a$a;)V

    goto :goto_0

    :cond_2
    new-instance v0, Le/f/a/a/a$b;

    invoke-direct {v0, v1}, Le/f/a/a/a$b;-><init>(Le/f/a/a/a$a;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le/f/a/a/a;->b(Landroid/app/Application;Le/f/a/a/a$d;)V

    return-void
.end method

.method public static b(Landroid/app/Application;Le/f/a/a/a$d;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Le/f/a/a/a;->a:Le/f/a/a/a$c;

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Le/f/a/a/a$c;->a(Landroid/content/Context;Le/f/a/a/a$d;)Z

    goto :goto_0

    :cond_0
    const-class p0, Le/f/a/a/a;

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
