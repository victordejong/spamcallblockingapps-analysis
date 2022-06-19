.class Ld/r/a/g/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/r/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ld/r/a/g/a;Ld/r/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/r/a/c$a;

.field final synthetic b:[Ld/r/a/g/a;


# direct methods
.method constructor <init>(Ld/r/a/c$a;[Ld/r/a/g/a;)V
    .locals 0

    iput-object p1, p0, Ld/r/a/g/b$a$a;->a:Ld/r/a/c$a;

    iput-object p2, p0, Ld/r/a/g/b$a$a;->b:[Ld/r/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Ld/r/a/g/b$a$a;->a:Ld/r/a/c$a;

    iget-object v1, p0, Ld/r/a/g/b$a$a;->b:[Ld/r/a/g/a;

    invoke-static {v1, p1}, Ld/r/a/g/b$a;->p([Ld/r/a/g/a;Landroid/database/sqlite/SQLiteDatabase;)Ld/r/a/g/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/r/a/c$a;->c(Ld/r/a/b;)V

    return-void
.end method
