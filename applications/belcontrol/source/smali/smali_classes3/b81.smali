.class public Lb81;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static e:I = -0x1

.field public static f:I = 0x1f4

.field public static g:Lb81;


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseIntArray;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb81;->a:Landroid/util/SparseArray;

    iput-object v0, p0, Lb81;->b:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lb81;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lb81;->d:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lb81;->a:Landroid/util/SparseArray;

    iget-object v1, p0, Lb81;->b:Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lb81;->b:Landroid/util/SparseIntArray;

    :cond_0
    iget-object v1, p0, Lb81;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, p0, Lb81;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lb81;->a:Landroid/util/SparseArray;

    sget v2, Lb81;->e:I

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v3

    sget v4, Li61;->all_contacts_wo_groups:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lta1;->J:Lta1;

    invoke-virtual {v1}, Lta1;->d()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lb81;->c:Ljava/lang/String;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v8, "title"

    const-string v9, "account_name"

    filled-new-array {v1, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "account_type NOT NULL AND account_name NOT NULL  AND deleted=0 "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Groups:\n"

    :cond_2
    add-int/lit8 v0, v0, 0x1

    sget v4, Lb81;->f:I

    if-lt v0, v4, :cond_3

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Max group count was reached"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string v5, "Unknown"

    :cond_5
    iget-object v6, p0, Lb81;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, " ("

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Group "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") duplicated. Skipping"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v6, "Favorite_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "Favorites"

    :cond_7
    const-string v6, "Group:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lb81;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_9
    :goto_1
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-static {}, Lb81;->i()V

    return-void
.end method

.method public static a()[Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lb81;->d()Lb81;

    move-result-object v0

    iget-object v0, v0, Lb81;->a:Landroid/util/SparseArray;

    invoke-static {v0}, Lka1;->b(Landroid/util/SparseArray;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    invoke-static {}, Lb81;->d()Lb81;

    move-result-object v0

    iget-object v0, v0, Lb81;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lb81;->d()Lb81;

    move-result-object v0

    iget-object v0, v0, Lb81;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lb81;
    .locals 1

    sget-object v0, Lb81;->g:Lb81;

    if-nez v0, :cond_0

    new-instance v0, Lb81;

    invoke-direct {v0}, Lb81;-><init>()V

    sput-object v0, Lb81;->g:Lb81;

    :cond_0
    sget-object v0, Lb81;->g:Lb81;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lb81;->d()Lb81;

    move-result-object v0

    iget-object v0, v0, Lb81;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Lb81;->d()Lb81;

    move-result-object v0

    iget v0, v0, Lb81;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lb81;->d()Lb81;

    move-result-object v0

    iget-object v0, v0, Lb81;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static h()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lb81;->g:Lb81;

    return-void
.end method

.method public static i()V
    .locals 8

    sget-object v0, Lb81;->g:Lb81;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lb81;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    sget-object v0, Lb81;->g:Lb81;

    const/4 v1, 0x0

    iput v1, v0, Lb81;->d:I

    new-instance v0, Lq81;

    invoke-direct {v0}, Lq81;-><init>()V

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v2

    const-string v4, ""

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lb81;->e:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lq81;->Y()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Lq81;->X(I)I

    move-result v6

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lb81;->g:Lb81;

    iget-object v7, v7, Lb81;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v5, Lb81;->g:Lb81;

    iget v7, v5, Lb81;->d:I

    add-int/2addr v7, v6

    iput v7, v5, Lb81;->d:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lb81;->g:Lb81;

    invoke-static {v4}, Lka1;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb81;->c:Ljava/lang/String;

    return-void
.end method
