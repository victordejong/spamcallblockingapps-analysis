.class public Lt10$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt10$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ls10;Lo10$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo10$a;

.field public final synthetic b:[Ls10;


# direct methods
.method public constructor <init>(Lo10$a;[Ls10;)V
    .locals 0

    iput-object p1, p0, Lt10$a$a;->a:Lo10$a;

    iput-object p2, p0, Lt10$a$a;->b:[Ls10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lt10$a$a;->a:Lo10$a;

    iget-object v1, p0, Lt10$a$a;->b:[Ls10;

    invoke-static {v1, p1}, Lt10$a;->e([Ls10;Landroid/database/sqlite/SQLiteDatabase;)Ls10;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo10$a;->c(Ln10;)V

    return-void
.end method
