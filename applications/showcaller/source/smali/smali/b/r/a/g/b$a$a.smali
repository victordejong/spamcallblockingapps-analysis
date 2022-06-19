.class Lb/r/a/g/b$a$a;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lb/r/a/g/a;Lb/r/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/r/a/c$a;

.field final synthetic b:[Lb/r/a/g/a;


# direct methods
.method constructor <init>(Lb/r/a/c$a;[Lb/r/a/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/r/a/g/b$a$a;->a:Lb/r/a/c$a;

    iput-object p2, p0, Lb/r/a/g/b$a$a;->b:[Lb/r/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/r/a/g/b$a$a;->a:Lb/r/a/c$a;

    iget-object v1, p0, Lb/r/a/g/b$a$a;->b:[Lb/r/a/g/a;

    invoke-static {v1, p1}, Lb/r/a/g/b$a;->e([Lb/r/a/g/a;Landroid/database/sqlite/SQLiteDatabase;)Lb/r/a/g/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/r/a/c$a;->c(Lb/r/a/b;)V

    return-void
.end method
