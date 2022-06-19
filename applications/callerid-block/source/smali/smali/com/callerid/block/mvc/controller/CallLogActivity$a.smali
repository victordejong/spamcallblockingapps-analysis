.class Lcom/callerid/block/mvc/controller/CallLogActivity$a;
.super Landroid/content/AsyncQueryHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/CallLogActivity;


# direct methods
.method public constructor <init>(Lcom/callerid/block/mvc/controller/CallLogActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/CallLogActivity;->R(Lcom/callerid/block/mvc/controller/CallLogActivity;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MM-dd,yyyy HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v2, Ljava/util/Date;

    const-string v3, "date"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "number"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "duration"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "numbertype"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "numberlabel"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const-string v8, ""

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v8, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_1
    new-instance v9, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v9}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v9, v7}, Lcom/callerid/block/search/CallLogBean;->i0(I)V

    invoke-virtual {v9, v3}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/callerid/block/search/CallLogBean;->n0(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/callerid/block/search/CallLogBean;->G0(I)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/callerid/block/search/CallLogBean;->b0(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/callerid/block/search/CallLogBean;->V(Ljava/util/Date;)V

    invoke-virtual {v9, v6}, Lcom/callerid/block/search/CallLogBean;->c0(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/CallLogActivity;->Q(Lcom/callerid/block/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/CallLogActivity;->Q(Lcom/callerid/block/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/CallLogActivity;->T(Lcom/callerid/block/mvc/controller/CallLogActivity;Ljava/util/List;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/CallLogActivity;->R(Lcom/callerid/block/mvc/controller/CallLogActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/CallLogActivity;->Q(Lcom/callerid/block/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/CallLogActivity;->T(Lcom/callerid/block/mvc/controller/CallLogActivity;Ljava/util/List;)V

    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    return-void
.end method
