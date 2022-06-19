.class public Lt71;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field public static final d:Ljava/lang/Integer;

.field public static f:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field public a:Z

.field public b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lt71;->d:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lt71;->f:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v0, p0

    const-class v1, Lj81;

    const-class v2, Lv81;

    const-class v3, Lw81;

    const-class v4, Lu81;

    const-class v5, Ls81;

    const-class v6, Ll81;

    const-class v7, Lq81;

    const-class v8, Lx81;

    sget-object v9, Lt71;->d:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "cca"

    const/4 v11, 0x0

    move-object/from16 v12, p1

    invoke-direct {v0, v12, v10, v11, v9}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v9, 0x0

    iput-boolean v9, v0, Lt71;->a:Z

    const/16 v10, 0x12

    new-array v10, v10, [Ljava/lang/Class;

    aput-object v8, v10, v9

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v12, 0x2

    aput-object v6, v10, v12

    const/4 v13, 0x3

    aput-object v5, v10, v13

    const-class v14, Lt81;

    const/4 v15, 0x4

    aput-object v14, v10, v15

    const-class v14, Lo81;

    const/16 v16, 0x5

    aput-object v14, v10, v16

    const-class v14, Lp81;

    const/16 v17, 0x6

    aput-object v14, v10, v17

    const-class v14, Lz81;

    const/16 v18, 0x7

    aput-object v14, v10, v18

    const-class v14, La91;

    const/16 v19, 0x8

    aput-object v14, v10, v19

    const/16 v14, 0x9

    aput-object v4, v10, v14

    const/16 v20, 0xa

    aput-object v3, v10, v20

    const/16 v21, 0xb

    aput-object v2, v10, v21

    const/16 v22, 0xc

    aput-object v1, v10, v22

    const-class v23, Lr81;

    const/16 v24, 0xd

    aput-object v23, v10, v24

    const/16 v23, 0xe

    const-class v25, Lm81;

    aput-object v25, v10, v23

    const/16 v23, 0xf

    const-class v25, Ln81;

    aput-object v25, v10, v23

    const/16 v23, 0x10

    const-class v25, Lk81;

    aput-object v25, v10, v23

    const/16 v23, 0x11

    const-class v25, Ly81;

    aput-object v25, v10, v23

    iput-object v10, v0, Lt71;->b:[Ljava/lang/Class;

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Class;

    aput-object v8, v10, v9

    aput-object v7, v10, v11

    aput-object v6, v10, v12

    aput-object v5, v10, v13

    const-class v5, Lt81;

    aput-object v5, v10, v15

    aput-object v4, v10, v16

    aput-object v3, v10, v17

    aput-object v2, v10, v18

    aput-object v1, v10, v19

    const-class v1, Lr81;

    aput-object v1, v10, v14

    const-class v1, Lm81;

    aput-object v1, v10, v20

    const-class v1, Ln81;

    aput-object v1, v10, v21

    const-class v1, Lk81;

    aput-object v1, v10, v22

    const-class v1, Ly81;

    aput-object v1, v10, v24

    iput-object v10, v0, Lt71;->c:[Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lt71;->l()V

    invoke-virtual/range {p0 .. p0}, Lt71;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA table_info("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-lez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    invoke-virtual {p0}, Lt71;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to get writable DB."

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lt71;->c:[Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lt71;->b:[Ljava/lang/Class;

    :goto_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv71;

    invoke-virtual {v4}, Lv71;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lv71;->p()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to clear table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final e(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lv71;->o()[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lg91;

    const-string p2, "Unable to get writable DB."

    invoke-direct {p1, p2}, Lg91;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lv71;->p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lg91;

    const-string p2, "Unable to get writable DB."

    invoke-direct {p1, p2}, Lg91;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lt71;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lt71;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cca"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 9

    iget-boolean v0, p0, Lt71;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lt71;->b:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing table: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    const-string v6, "init"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Lt71;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v6, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to init table: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lt71;->a:Z

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    invoke-virtual {p0}, Lt71;->l()V

    iget-object v0, p0, Lt71;->b:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv71;

    invoke-virtual {p0, p1, v4}, Lt71;->e(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create table: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    sput-object p1, Lt71;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lt71;->l()V

    sget-object v0, Lr71$a;->L0:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading DB from V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p3, :cond_4

    if-gt v0, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    :try_start_0
    new-instance v2, Ly81;

    invoke-direct {v2}, Ly81;-><init>()V

    invoke-virtual {v2}, Ly81;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p0, p1, v2}, Lt71;->e(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V

    goto/16 :goto_3

    :pswitch_2
    new-instance v2, Lk81;

    invoke-direct {v2}, Lk81;-><init>()V

    invoke-virtual {v2}, Lk81;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :pswitch_3
    new-instance v2, Ln81;

    invoke-direct {v2}, Ln81;-><init>()V

    invoke-virtual {v2}, Ln81;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lt71;->g(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V

    :cond_1
    invoke-virtual {v2}, Ln81;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :pswitch_4
    new-instance v2, Lm81;

    invoke-direct {v2}, Lm81;-><init>()V

    new-instance v3, Ln81;

    invoke-direct {v3}, Ln81;-><init>()V

    invoke-virtual {v2}, Lm81;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v2}, Lt71;->e(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V

    :cond_2
    invoke-virtual {v3}, Ln81;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, v3}, Lt71;->e(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V

    goto/16 :goto_3

    :pswitch_5
    new-instance v2, Lr81;

    invoke-direct {v2}, Lr81;-><init>()V

    invoke-virtual {v2}, Lr81;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lfa1;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v2

    sget-object v3, Lq71$a;->d:Lq71$a;

    if-ne v2, v3, :cond_3

    sget-object v2, Lr71$a;->v:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lr71$a;->X:Lr71$a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v2, v3}, Lr71$a;->k(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    :pswitch_7
    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    invoke-virtual {v2, p1}, Ll81;->I0(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v2, Lr81;

    invoke-direct {v2}, Lr81;-><init>()V

    goto/16 :goto_1

    :pswitch_8
    sget-object v2, Lr71$a;->W:Lr71$a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_9
    new-instance v2, Lj81;

    invoke-direct {v2}, Lj81;-><init>()V

    invoke-virtual {v2}, Lj81;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lt71;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :pswitch_a
    new-instance v2, Lj81;

    invoke-direct {v2}, Lj81;-><init>()V

    goto/16 :goto_1

    :pswitch_b
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->v0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_c
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_d
    new-instance v2, Lv81;

    invoke-direct {v2}, Lv81;-><init>()V

    goto/16 :goto_1

    :pswitch_e
    const/16 v2, 0xe

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v2, v3}, Lt71;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto/16 :goto_3

    :pswitch_f
    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    invoke-virtual {v2, p1}, Ll81;->F0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_10
    new-instance v2, Lo81;

    invoke-direct {v2}, Lo81;-><init>()V

    invoke-virtual {v2, p1}, Lo81;->O(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v2, Lr71$a;->X0:Lr71$a;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr71$a;->n(Ljava/lang/Long;)V

    goto/16 :goto_3

    :pswitch_11
    new-instance v2, Lw81;

    invoke-direct {v2}, Lw81;-><init>()V

    invoke-virtual {v2, p1}, Lw81;->H(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_12
    new-instance v2, Lw81;

    invoke-direct {v2}, Lw81;-><init>()V

    goto/16 :goto_1

    :pswitch_13
    new-instance v2, Lu81;

    invoke-direct {v2}, Lu81;-><init>()V

    goto/16 :goto_1

    :pswitch_14
    new-instance v2, La91;

    invoke-direct {v2}, La91;-><init>()V

    invoke-virtual {v2, p1}, La91;->G(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_15
    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2, p1}, Lx81;->U(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_16
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->t0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_17
    invoke-static {}, Le81;->j()V

    goto/16 :goto_3

    :pswitch_18
    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2, p1}, Lx81;->W(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->A0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_19
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->z0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :pswitch_1a
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->y0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :pswitch_1b
    new-instance v2, Lo81;

    invoke-direct {v2}, Lo81;-><init>()V

    invoke-virtual {v2, p1}, Lo81;->P(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    invoke-virtual {v2, p1}, Ll81;->J0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :pswitch_1c
    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2, p1}, Lx81;->V(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :pswitch_1d
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->x0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :pswitch_1e
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->w0(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    invoke-virtual {v2, p1}, Ll81;->H0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :pswitch_1f
    new-instance v2, Lz81;

    invoke-direct {v2}, Lz81;-><init>()V

    invoke-virtual {p0, p1, v2}, Lt71;->e(Landroid/database/sqlite/SQLiteDatabase;Lv71;)V

    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    invoke-virtual {v2, p1}, Ll81;->G0(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v0, Lr71$a;->L0:Lr71$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to upgrade from V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_4
    const/4 p1, 0x0

    sput-object p1, Lt71;->f:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
