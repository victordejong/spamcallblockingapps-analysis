.class public final Lorg/mistergroup/shouldianswer/model/ac;
.super Ljava/lang/Object;
.source "PhoneContact.kt"


# instance fields
.field private a:J

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J

.field private i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->a:J

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    iget-wide v1, p0, Lorg/mistergroup/shouldianswer/model/ac;->a:J

    .line 115
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->b:Ljava/lang/Boolean;

    .line 104
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    .line 105
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 106
    :cond_0
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 108
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->d:Z

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ac;)Z
    .locals 9

    const-string v0, "phoneContact"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->c:Ljava/lang/String;

    iget-object v1, p1, Lorg/mistergroup/shouldianswer/model/ac;->c:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    .line 35
    :cond_0
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->d:Z

    iget-boolean v1, p1, Lorg/mistergroup/shouldianswer/model/ac;->d:Z

    if-eq v0, v1, :cond_1

    return v4

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->b:Ljava/lang/Boolean;

    iget-object v1, p1, Lorg/mistergroup/shouldianswer/model/ac;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v4

    .line 37
    :cond_2
    iget-wide v5, p0, Lorg/mistergroup/shouldianswer/model/ac;->e:J

    iget-wide v7, p1, Lorg/mistergroup/shouldianswer/model/ac;->e:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3

    return v4

    .line 38
    :cond_3
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v5, p1, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v0, v5, :cond_4

    return v4

    .line 39
    :cond_4
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_7

    .line 40
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v1

    if-eqz v6, :cond_5

    return v4

    .line 41
    :cond_5
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/ac;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v1

    if-eqz v6, :cond_6

    return v4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 43
    :cond_7
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v3

    :goto_1
    iget-object v5, p1, Lorg/mistergroup/shouldianswer/model/ac;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_9
    move-object v5, v3

    :goto_2
    invoke-static {v0, v5, v4, v2, v3}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    .line 44
    :cond_a
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->j:Ljava/lang/String;

    iget-object v5, p1, Lorg/mistergroup/shouldianswer/model/ac;->j:Ljava/lang/String;

    invoke-static {v0, v5, v4, v2, v3}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v4

    .line 45
    :cond_b
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->k:Ljava/lang/String;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/model/ac;->k:Ljava/lang/String;

    invoke-static {v0, p1, v4, v2, v3}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v4

    :cond_c
    return v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->e:J

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/ac;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v1, :cond_0

    .line 127
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1, v0}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->j:Ljava/lang/String;

    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->g:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->k:Ljava/lang/String;

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->d:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->e:J

    return-wide v0
.end method

.method public final d(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/ac;->h:J

    return-void
.end method

.method public final e()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->g:J

    return-wide v0
.end method

.method public final f()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->c:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Unknown"

    :goto_1
    return-object v0
.end method

.method public final j()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final k()Lorg/mistergroup/shouldianswer/model/ad$b;
    .locals 24

    const-string v0, "account_type"

    const-string v1, "account_name"

    const-string v2, "title"

    const-string v3, "java.lang.String.format(format, *args)"

    const-string v4, "_id"

    const/4 v5, 0x2

    .line 60
    :try_start_0
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "data1"

    .line 61
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    .line 62
    sget-object v7, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const-string v7, "%s=? AND %s=?"

    new-array v10, v5, [Ljava/lang/Object;

    const-string v11, "contact_id"

    const/4 v13, 0x0

    aput-object v11, v10, v13

    const-string v11, "mimetype"

    const/4 v14, 0x1

    aput-object v11, v10, v14

    array-length v11, v10

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v11, v5, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p0

    .line 63
    :try_start_1
    iget-wide v5, v15, Lorg/mistergroup/shouldianswer/model/ac;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v13

    const-string v5, "vnd.android.cursor.item/group_membership"

    aput-object v5, v11, v14

    .line 64
    sget-object v5, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Ljava/io/Closeable;

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v6, v5

    check-cast v6, Landroid/database/Cursor;

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 66
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_1

    .line 68
    sget-object v17, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 69
    filled-new-array {v4, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v18

    .line 70
    sget-object v6, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v6, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const-string v6, "%s=?"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v4, v10, v13

    array-length v11, v10

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v14, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v13

    const/16 v21, 0x0

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/io/Closeable;

    const/4 v6, 0x0

    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v6, v3

    check-cast v6, Landroid/database/Cursor;

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    new-instance v9, Lorg/mistergroup/shouldianswer/model/ad$b;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf

    const/16 v23, 0x0

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v23}, Lorg/mistergroup/shouldianswer/model/ad$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/e/b/e;)V

    .line 73
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v11, "cursor2"

    invoke-static {v6, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v6, v4}, Lorg/mistergroup/shouldianswer/utils/g;->d(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/mistergroup/shouldianswer/model/ad$b;->a(J)V

    .line 74
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v6, v2}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/mistergroup/shouldianswer/model/ad$b;->a(Ljava/lang/String;)V

    .line 75
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v2, v6, v1}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/mistergroup/shouldianswer/model/ad$b;->b(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v1, v6, v0}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/mistergroup/shouldianswer/model/ad$b;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    invoke-static {v3, v8}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v5, v7}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v9

    .line 79
    :cond_0
    :try_start_6
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 70
    :try_start_7
    invoke-static {v3, v8}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-static {v3, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 64
    :try_start_a
    invoke-static {v5, v7}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-static {v5, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    .line 85
    :goto_2
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-object v3
.end method

.method public final l()Landroid/net/Uri;
    .locals 3

    .line 92
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/model/ac;->a:J

    .line 93
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.withAppendedPath(Con\u2026TENT_URI, tid.toString())"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m()Landroid/net/Uri;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ac;->l()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "display_photo"

    .line 99
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.withAppendedPath(con\u2026acts.Photo.DISPLAY_PHOTO)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
