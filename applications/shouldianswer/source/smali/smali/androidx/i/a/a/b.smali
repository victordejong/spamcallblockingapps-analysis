.class Landroidx/i/a/a/b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroidx/i/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/i/a/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/i/a/a/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$a;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/i/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$a;)Landroidx/i/a/a/b$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/i/a/a/b;->a:Landroidx/i/a/a/b$a;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$a;)Landroidx/i/a/a/b$a;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/i/a/a/a;

    .line 37
    new-instance v1, Landroidx/i/a/a/b$a;

    invoke-direct {v1, p1, p2, v0, p3}, Landroidx/i/a/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroidx/i/a/a/a;Landroidx/i/a/c$a;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/i/a/a/b;->a:Landroidx/i/a/a/b$a;

    invoke-virtual {v0}, Landroidx/i/a/a/b$a;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/i/a/a/b;->a:Landroidx/i/a/a/b$a;

    invoke-virtual {v0, p1}, Landroidx/i/a/a/b$a;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Landroidx/i/a/b;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/i/a/a/b;->a:Landroidx/i/a/a/b$a;

    invoke-virtual {v0}, Landroidx/i/a/a/b$a;->a()Landroidx/i/a/b;

    move-result-object v0

    return-object v0
.end method
