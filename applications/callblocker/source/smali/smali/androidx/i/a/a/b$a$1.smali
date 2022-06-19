.class Landroidx/i/a/a/b$a$1;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/i/a/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroidx/i/a/a/a;Landroidx/i/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/i/a/c$a;

.field final synthetic b:[Landroidx/i/a/a/a;


# direct methods
.method constructor <init>(Landroidx/i/a/c$a;[Landroidx/i/a/a/a;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroidx/i/a/a/b$a$1;->a:Landroidx/i/a/c$a;

    iput-object p2, p0, Landroidx/i/a/a/b$a$1;->b:[Landroidx/i/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Landroidx/i/a/a/b$a$1;->a:Landroidx/i/a/c$a;

    iget-object v1, p0, Landroidx/i/a/a/b$a$1;->b:[Landroidx/i/a/a/a;

    invoke-static {v1, p1}, Landroidx/i/a/a/b$a;->a([Landroidx/i/a/a/a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/i/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/i/a/c$a;->d(Landroidx/i/a/b;)V

    .line 137
    return-void
.end method
