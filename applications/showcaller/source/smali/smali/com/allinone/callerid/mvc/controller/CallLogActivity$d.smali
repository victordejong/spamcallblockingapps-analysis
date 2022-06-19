.class Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/CallLogActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->d:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    .line 4
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->Z(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v3, 0x0

    const-string v4, "number=?"

    const-string v6, "date DESC"

    .line 5
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->d:Ljava/util/ArrayList;

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 10
    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 11
    new-instance v1, Ljava/util/Date;

    const-string v2, "date"

    .line 12
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "number"

    .line 14
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 16
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 17
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "name"

    .line 18
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 19
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    .line 20
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 21
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id"

    .line 22
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 23
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v8, "numbertype"

    .line 24
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "numberlabel"

    .line 25
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const-string v8, ""

    goto :goto_1

    .line 26
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v10

    .line 27
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v8, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 28
    :goto_1
    new-instance v9, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v9}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 29
    invoke-virtual {v9, v6}, Lcom/allinone/callerid/search/CallLogBean;->y0(I)V

    .line 30
    invoke-virtual {v9, v2}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v9, v4}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v9, v8}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v9, v3}, Lcom/allinone/callerid/search/CallLogBean;->d1(I)V

    const/4 v2, 0x2

    const/4 v3, 0x3

    .line 34
    invoke-static {v2, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/allinone/callerid/search/CallLogBean;->s0(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v9, v1}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 36
    invoke-virtual {v9, v5}, Lcom/allinone/callerid/search/CallLogBean;->t0(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$a;-><init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$b;-><init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    if-eqz v0, :cond_3

    .line 40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method
