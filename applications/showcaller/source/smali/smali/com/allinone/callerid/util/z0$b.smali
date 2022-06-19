.class Lcom/allinone/callerid/util/z0$b;
.super Landroid/os/AsyncTask;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/z0;->d(Landroid/content/Context;IILjava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/allinone/callerid/search/EZSearchResult;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Z

.field final synthetic i:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/z0$b;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/allinone/callerid/util/z0$b;->d:Ljava/lang/String;

    iput p3, p0, Lcom/allinone/callerid/util/z0$b;->e:I

    iput p4, p0, Lcom/allinone/callerid/util/z0$b;->f:I

    iput p5, p0, Lcom/allinone/callerid/util/z0$b;->g:I

    iput-boolean p6, p0, Lcom/allinone/callerid/util/z0$b;->h:Z

    iput p7, p0, Lcom/allinone/callerid/util/z0$b;->i:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v6, "date"

    const-string v7, "number"

    const-string v8, "type"

    .line 3
    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/String;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->d:Ljava/lang/String;

    aput-object v0, v4, v10

    const-string v3, "number=?"

    const-string v5, "date DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 6
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8
    invoke-interface {v11, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 9
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "3"

    const-string v1, "1"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 12
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "type=? and new=?"

    const-string v5, "date DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 15
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 18
    new-instance v1, Ljava/util/Date;

    .line 19
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 20
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 21
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 22
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-direct {v3}, Lcom/allinone/callerid/search/EZSearchResult;-><init>()V

    .line 24
    invoke-virtual {v3, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setIncomingtime(J)V

    .line 26
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v11, :cond_2

    .line 28
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 30
    new-instance p1, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-direct {p1}, Lcom/allinone/callerid/search/EZSearchResult;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, 0x0

    .line 34
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_10

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/EZSearchResult;

    iput-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    .line 36
    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/allinone/callerid/util/z0$b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/allinone/callerid/util/z0$b;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 40
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 41
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4, v9}, Lcom/allinone/callerid/search/EZSearchResult;->setContact(Z)V

    .line 42
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    .line 43
    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v4, v5}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 45
    iget-object v5, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setRaw_contact_id(I)V

    goto :goto_2

    .line 46
    :cond_4
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 47
    :goto_2
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    iget v5, p0, Lcom/allinone/callerid/util/z0$b;->e:I

    invoke-virtual {v4, v5}, Lcom/allinone/callerid/search/EZSearchResult;->setCount(I)V

    .line 48
    iget v4, p0, Lcom/allinone/callerid/util/z0$b;->f:I

    if-nez v4, :cond_5

    .line 49
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/allinone/callerid/search/EZSearchResult;->setDate(J)V

    goto :goto_3

    .line 50
    :cond_5
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/allinone/callerid/search/EZSearchResult;->setDate(J)V

    :goto_3
    if-eqz v1, :cond_f

    .line 51
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 52
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/allinone/callerid/search/EZSearchResult;->setSubtype_pdt(Ljava/lang/String;)V

    .line 53
    :cond_6
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label_id(Ljava/lang/String;)V

    if-nez v2, :cond_7

    .line 55
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 56
    iget-object v2, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 57
    :cond_7
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 59
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    .line 60
    :cond_8
    invoke-static {v0}, Lcom/allinone/callerid/util/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 62
    iget-object v2, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    goto :goto_4

    .line 63
    :cond_9
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 65
    iget-object v2, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    .line 66
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setSubtype(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_cc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setSubtype_cc(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setKeyword(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBlock_count()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setBlock_count(I)V

    .line 70
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getDeclined_count()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setDeclined_count(I)V

    .line 71
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    iget-object v2, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setReport_count(I)V

    goto :goto_5

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v10}, Lcom/allinone/callerid/search/EZSearchResult;->setReport_count(I)V

    const/4 v0, 0x0

    .line 76
    :goto_5
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    if-lez v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v9}, Lcom/allinone/callerid/search/EZSearchResult;->setIsSpam(Z)V

    goto :goto_6

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v10}, Lcom/allinone/callerid/search/EZSearchResult;->setIsSpam(Z)V

    .line 79
    :goto_6
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Fixed line"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 81
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    .line 82
    :cond_e
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setAddress(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setWebsite(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getTag_main()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setTag_main(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getTag_sub()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setTag_sub(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSoft_comments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setSoft_comments(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setComment_tags(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setCountry(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getIs_activity()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setIs_activity(I)V

    .line 95
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getActivity_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setActivity_count(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOnedayincomingah()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setOnedayincomingah(I)V

    .line 97
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->b:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getWeekoutingnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setWeekoutingnum(I)V

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$b;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$b;->c:Landroid/content/Context;

    iget v2, p0, Lcom/allinone/callerid/util/z0$b;->f:I

    iget v3, p0, Lcom/allinone/callerid/util/z0$b;->g:I

    iget-boolean v4, p0, Lcom/allinone/callerid/util/z0$b;->h:Z

    iget v5, p0, Lcom/allinone/callerid/util/z0$b;->i:I

    invoke-static/range {v0 .. v5}, Lcom/allinone/callerid/util/z0;->a(Landroid/content/Context;Ljava/util/ArrayList;IIZI)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/z0$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/z0$b;->b(Ljava/lang/Void;)V

    return-void
.end method
