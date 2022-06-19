.class public final Lcom/e/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/e/a/a/a$c;,
        Lcom/e/a/a/a$b;,
        Lcom/e/a/a/a$a;,
        Lcom/e/a/a/a$d;,
        Lcom/e/a/a/a$e;,
        Lcom/e/a/a/a$f;
    }
.end annotation


# static fields
.field private static final a:Lcom/e/a/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 43
    new-instance v0, Lcom/e/a/a/a$f;

    invoke-direct {v0, v1}, Lcom/e/a/a/a$f;-><init>(Lcom/e/a/a/a$1;)V

    sput-object v0, Lcom/e/a/a/a;->a:Lcom/e/a/a/a$b;

    return-void

    :cond_0
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 45
    new-instance v0, Lcom/e/a/a/a$e;

    invoke-direct {v0, v1}, Lcom/e/a/a/a$e;-><init>(Lcom/e/a/a/a$1;)V

    sput-object v0, Lcom/e/a/a/a;->a:Lcom/e/a/a/a$b;

    return-void

    :cond_1
    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    .line 47
    new-instance v0, Lcom/e/a/a/a$d;

    invoke-direct {v0, v1}, Lcom/e/a/a/a$d;-><init>(Lcom/e/a/a/a$1;)V

    sput-object v0, Lcom/e/a/a/a;->a:Lcom/e/a/a/a$b;

    return-void

    .line 49
    :cond_2
    new-instance v0, Lcom/e/a/a/a$a;

    invoke-direct {v0, v1}, Lcom/e/a/a/a$a;-><init>(Lcom/e/a/a/a$1;)V

    sput-object v0, Lcom/e/a/a/a;->a:Lcom/e/a/a/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;Lcom/e/a/a/a$c;)V
    .locals 1

    .line 60
    :try_start_0
    sget-object v0, Lcom/e/a/a/a;->a:Lcom/e/a/a/a$b;

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/e/a/a/a$b;->a(Landroid/content/Context;Lcom/e/a/a/a$c;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
