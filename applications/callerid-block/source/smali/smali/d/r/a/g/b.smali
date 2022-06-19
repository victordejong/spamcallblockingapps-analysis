.class Ld/r/a/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/r/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/r/a/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Ld/r/a/g/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld/r/a/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Ld/r/a/g/b;->c(Landroid/content/Context;Ljava/lang/String;Ld/r/a/c$a;)Ld/r/a/g/b$a;

    move-result-object p1

    iput-object p1, p0, Ld/r/a/g/b;->a:Ld/r/a/g/b$a;

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ld/r/a/c$a;)Ld/r/a/g/b$a;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ld/r/a/g/a;

    new-instance v1, Ld/r/a/g/b$a;

    invoke-direct {v1, p1, p2, v0, p3}, Ld/r/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ld/r/a/g/a;Ld/r/a/c$a;)V

    return-object v1
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Ld/r/a/g/b;->a:Ld/r/a/g/b$a;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Ld/r/a/b;
    .locals 1

    iget-object v0, p0, Ld/r/a/g/b;->a:Ld/r/a/g/b$a;

    invoke-virtual {v0}, Ld/r/a/g/b$a;->x()Ld/r/a/b;

    move-result-object v0

    return-object v0
.end method
