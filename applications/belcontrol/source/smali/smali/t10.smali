.class public Lt10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo10;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt10$a;
    }
.end annotation


# instance fields
.field public final a:Lt10$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo10$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lt10;->c(Landroid/content/Context;Ljava/lang/String;Lo10$a;)Lt10$a;

    move-result-object p1

    iput-object p1, p0, Lt10;->a:Lt10$a;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lt10;->a:Lt10$a;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Ln10;
    .locals 1

    iget-object v0, p0, Lt10;->a:Lt10$a;

    invoke-virtual {v0}, Lt10$a;->g()Ln10;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Lo10$a;)Lt10$a;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ls10;

    new-instance v1, Lt10$a;

    invoke-direct {v1, p1, p2, v0, p3}, Lt10$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ls10;Lo10$a;)V

    return-object v1
.end method
