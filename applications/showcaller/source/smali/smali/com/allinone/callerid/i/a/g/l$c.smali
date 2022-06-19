.class Lcom/allinone/callerid/i/a/g/l$c;
.super Landroid/os/AsyncTask;
.source "GetSearchCalllogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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
.field private a:Lcom/allinone/callerid/i/a/g/n;

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
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/allinone/callerid/i/a/g/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Lcom/allinone/callerid/i/a/g/n;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/i/a/g/l$c;->a:Lcom/allinone/callerid/i/a/g/n;

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/i/a/g/l$c;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/i/a/g/l$c;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string p1, ""

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->b:Landroid/content/Context;

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "date"

    .line 6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/allinone/callerid/i/a/g/l$c;->f:J

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_1
    iget-wide v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_11

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide/32 v4, 0xf731400

    const/16 v6, 0x14

    const/4 v7, 0x1

    if-ge v2, v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->Z()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->V()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->A()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v4

    if-lez v10, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/allinone/callerid/i/a/g/l$c;->f:J

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/32 v8, 0x5265c00

    div-long/2addr v4, v8

    const-wide/16 v8, 0x7

    cmp-long v10, v4, v8

    if-gez v10, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v6, :cond_2

    .line 18
    invoke-virtual {v3, v7}, Lcom/allinone/callerid/search/CallLogBean;->m0(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "searchList"

    if-eqz v2, :cond_4

    .line 20
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u901a\u8bdd\u8bb0\u5f55\u6570\u91cf:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "7\u5929\u5185\u53ef\u67e5\u8be2\u6570\u91cf:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_b

    .line 23
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "7\u5929\u5185\u53ef\u67e5\u8be2\u91cf\u5c0f\u4e8e20:"

    .line 24
    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_8

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v2, :cond_6

    .line 27
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->Z()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->V()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->A()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v6, v8, v4

    if-lez v6, :cond_6

    .line 28
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 29
    iget-object v6, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v2, v7}, Lcom/allinone/callerid/search/CallLogBean;->m0(Z)V

    goto :goto_1

    .line 31
    :cond_7
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_d

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u6570\u5c0f\u4e8e20:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v2, :cond_9

    .line 34
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->Z()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->V()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->A()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v4

    if-lez v10, :cond_9

    .line 35
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 36
    iget-object v8, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v6, :cond_a

    .line 37
    iget-object v8, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v2, v7}, Lcom/allinone/callerid/search/CallLogBean;->m0(Z)V

    goto :goto_2

    .line 39
    :cond_a
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_d

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u6570\u5927\u4e8e20:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const/16 v4, 0x64

    if-ge v2, v4, :cond_c

    .line 41
    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_d

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7\u5929\u5185\u53ef\u67e5\u8be2\u91cf\u5927\u4e8e20\u5c0f\u4e8e100:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :cond_c
    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_d

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7\u5929\u5185\u53ef\u67e5\u8be2\u91cf\u5927\u4e8e100:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 48
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 49
    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    :goto_5
    if-le v0, v1, :cond_f

    .line 50
    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 51
    iget-object v2, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 52
    :cond_10
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_11

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53bb\u91cd\u540e\u7684\u53ef\u67e5\u8be2\u91cf\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_6
    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/g/l$c;->a:Lcom/allinone/callerid/i/a/g/n;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/l$c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/g/l$c;->e:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/allinone/callerid/i/a/g/n;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/g/l$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/g/l$c;->b(Ljava/lang/String;)V

    return-void
.end method
