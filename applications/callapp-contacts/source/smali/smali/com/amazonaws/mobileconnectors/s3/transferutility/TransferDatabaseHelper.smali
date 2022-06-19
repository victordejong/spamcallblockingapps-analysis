.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x6

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "awss3transfertable.db"

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->a:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->b:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->b:I

    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->a:Landroid/content/Context;

    const-string p3, "awss3transfertable.db"

    invoke-virtual {p2, p3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 50
    invoke-static {p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
