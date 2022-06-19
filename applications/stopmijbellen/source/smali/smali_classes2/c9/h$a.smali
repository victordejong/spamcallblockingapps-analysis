.class public Lc9/h$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lc9/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lc9/a;

.field public final b:Lc9/c;


# direct methods
.method public constructor <init>(Lc9/h;Landroid/content/Context;Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    new-instance p1, Lc9/c;

    invoke-direct {p1, p5}, Lc9/c;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    iput-object p1, p0, Lc9/h$a;->b:Lc9/c;

    return-void
.end method


# virtual methods
.method public d()Lc9/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h$a;->a:Lc9/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lc9/a;

    invoke-direct {v1, v0}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    iput-object v1, p0, Lc9/h$a;->a:Lc9/a;

    .line 5
    :cond_0
    iget-object v0, p0, Lc9/h$a;->a:Lc9/a;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h$a;->b:Lc9/c;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {v0, v1}, Lc9/c;->f(Lc9/f;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h$a;->b:Lc9/c;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {v0, v1, p2, p3}, Lc9/c;->g(Lc9/f;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h$a;->b:Lc9/c;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {v0, v1}, Lc9/c;->h(Lc9/f;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h$a;->b:Lc9/c;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {v0, v1, p2, p3}, Lc9/c;->i(Lc9/f;II)V

    return-void
.end method
