.class public abstract Lcom/yanzhenjie/nohttp/db/BasicSQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BasicSQLHelper.java"


# static fields
.field public static final ALL:Ljava/lang/String; = "*"

.field public static final ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method
