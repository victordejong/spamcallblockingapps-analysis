.class Lcom/allinone/callerid/i/a/w/d$a;
.super Landroid/os/AsyncTask;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/w/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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

    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/d$a;->a:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/w/d$a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/w/d$a;->c:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/i/a/w/d$a;->d:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/allinone/callerid/i/a/w/d$a;->e:Ljava/util/HashMap;

    .line 7
    iput-object p5, p0, Lcom/allinone/callerid/i/a/w/d$a;->f:Lcom/allinone/callerid/i/a/w/c;

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
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$a;->b:Landroid/content/Context;

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

    if-eqz p1, :cond_9

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/d$a;->a:Ljava/util/ArrayList;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/d$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/d$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/d$a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 13
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 14
    new-instance v2, Ljava/util/Date;

    const-string v3, "date"

    .line 15
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 16
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "number"

    .line 17
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 18
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 19
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 20
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "name"

    .line 21
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 22
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 23
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x15

    const-string v8, ""

    if-lt v6, v7, :cond_0

    :try_start_1
    const-string v6, "formatted_number"

    .line 24
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v8

    :goto_1
    const-string v7, "_id"

    .line 25
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 26
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v9, "numbertype"

    .line 27
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 28
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 30
    iget-object v11, p0, Lcom/allinone/callerid/i/a/w/d$a;->d:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    .line 31
    iget-object v2, p0, Lcom/allinone/callerid/i/a/w/d$a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/allinone/callerid/i/a/w/d$a;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 34
    :cond_1
    iget-object v11, p0, Lcom/allinone/callerid/i/a/w/d$a;->d:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v11, p0, Lcom/allinone/callerid/i/a/w/d$a;->e:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "numberlabel"

    .line 36
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v9, :cond_2

    if-nez v11, :cond_2

    move-object v9, v8

    goto :goto_2

    .line 37
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v12

    .line 38
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v9, v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :goto_2
    if-eqz v5, :cond_3

    .line 39
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 40
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 41
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 42
    :cond_4
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 43
    :cond_5
    new-instance v11, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v11}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 44
    invoke-virtual {v11, v7}, Lcom/allinone/callerid/search/CallLogBean;->y0(I)V

    .line 45
    invoke-virtual {v11, v10}, Lcom/allinone/callerid/search/CallLogBean;->b1(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v11, v3}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v11, v6}, Lcom/allinone/callerid/search/CallLogBean;->j0(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v11, v8}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v11, v9}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v11, v4}, Lcom/allinone/callerid/search/CallLogBean;->d1(I)V

    .line 51
    invoke-static {v2}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/allinone/callerid/search/CallLogBean;->s0(Ljava/lang/String;)V

    .line 52
    invoke-static {v2}, Lcom/allinone/callerid/util/i;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/allinone/callerid/search/CallLogBean;->i1(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 54
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->P0(Z)V

    .line 55
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "Mobile"

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Fixed line"

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 61
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 62
    :cond_7
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->w0(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->g1(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->D0(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->N0(J)V

    .line 75
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getFaild_error_log()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/search/CallLogBean;->v0(I)V

    .line 76
    iget-object v2, p0, Lcom/allinone/callerid/i/a/w/d$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_a

    .line 77
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_a
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$a;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 79
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 80
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$a;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/d$a;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$a;->f:Lcom/allinone/callerid/i/a/w/c;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/d$a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/d$a;->e:Ljava/util/HashMap;

    invoke-interface {p1, v0, v1}, Lcom/allinone/callerid/i/a/w/c;->a(Ljava/util/List;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/d$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/d$a;->b(Ljava/lang/String;)V

    return-void
.end method
