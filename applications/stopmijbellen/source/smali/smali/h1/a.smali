.class public Lh1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/a;


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lh1/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Lg1/d;)Landroid/database/Cursor;
    .locals 4

    .line 1
    iget-object v0, p0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lh1/a$a;

    invoke-direct {v1, p0, p1}, Lh1/a$a;-><init>(Lh1/a;Lg1/d;)V

    .line 2
    invoke-interface {p1}, Lg1/d;->k()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lh1/a;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/l;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lh1/a;->k(Lg1/d;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
