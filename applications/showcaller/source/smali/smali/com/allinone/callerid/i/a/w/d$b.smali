.class Lcom/allinone/callerid/i/a/w/d$b;
.super Landroid/os/AsyncTask;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/w/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/allinone/callerid/i/a/w/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/w/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/allinone/callerid/i/a/w/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/d$b;->a:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/i/a/w/d$b;->d:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/allinone/callerid/i/a/w/d$b;->e:Ljava/util/HashMap;

    .line 7
    iput-object p5, p0, Lcom/allinone/callerid/i/a/w/d$b;->f:Lcom/allinone/callerid/i/a/w/c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_b

    const-string v0, "date"

    const-string v1, "number"

    const-string v2, "type"

    const-string v3, "name"

    const-string v4, "_id"

    const-string v5, "numbertype"

    const-string v6, "numberlabel"

    const-string v7, "formatted_number"

    .line 2
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v10

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "date DESC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/i/a/w/d$b;->a:Ljava/util/ArrayList;

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/d$b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/d$b;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 13
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 14
    new-instance v3, Ljava/util/Date;

    const-string v4, "date"

    .line 15
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 16
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string v4, "number"

    .line 17
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 18
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    .line 19
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 20
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "name"

    .line 21
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 22
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 23
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x15

    const-string v9, ""

    if-lt v7, v8, :cond_0

    :try_start_1
    const-string v7, "formatted_number"

    .line 24
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v9

    :goto_1
    const-string v8, "_id"

    .line 25
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 26
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v10, "numbertype"

    .line 27
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 28
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 30
    iget-object v12, p0, Lcom/allinone/callerid/i/a/w/d$b;->d:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    .line 31
    iget-object v3, p0, Lcom/allinone/callerid/i/a/w/d$b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/allinone/callerid/i/a/w/d$b;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 34
    :cond_1
    iget-object v12, p0, Lcom/allinone/callerid/i/a/w/d$b;->d:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v12, p0, Lcom/allinone/callerid/i/a/w/d$b;->e:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "numberlabel"

    .line 36
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v10, :cond_2

    if-nez v12, :cond_2

    move-object v10, v9

    goto :goto_2

    .line 37
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v13

    .line 38
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v10, v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_2
    if-eqz v6, :cond_3

    .line 39
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 40
    :cond_3
    new-instance v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v6}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 41
    invoke-virtual {v6, v8}, Lcom/allinone/callerid/search/CallLogBean;->y0(I)V

    .line 42
    invoke-virtual {v6, v11}, Lcom/allinone/callerid/search/CallLogBean;->b1(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v6, v4}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6, v7}, Lcom/allinone/callerid/search/CallLogBean;->j0(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, v9}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6, v10}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v6, v5}, Lcom/allinone/callerid/search/CallLogBean;->d1(I)V

    .line 48
    invoke-static {v3}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/allinone/callerid/search/CallLogBean;->s0(Ljava/lang/String;)V

    .line 49
    invoke-static {v3}, Lcom/allinone/callerid/util/i;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/allinone/callerid/search/CallLogBean;->i1(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6, v3}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 51
    iget-object v3, p0, Lcom/allinone/callerid/i/a/w/d$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 52
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 54
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 55
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/d$b;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_b

    .line 57
    :goto_4
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_b

    .line 58
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 59
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 60
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->P0(Z)V

    .line 61
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "Mobile"

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Fixed line"

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 67
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 68
    :cond_9
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->w0(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->g1(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->D0(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->N0(J)V

    .line 81
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFaild_error_log()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/CallLogBean;->v0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$b;->f:Lcom/allinone/callerid/i/a/w/c;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/d$b;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/d$b;->e:Ljava/util/HashMap;

    invoke-interface {p1, v0, v1}, Lcom/allinone/callerid/i/a/w/c;->a(Ljava/util/List;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/d$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/d$b;->b(Ljava/lang/String;)V

    return-void
.end method
