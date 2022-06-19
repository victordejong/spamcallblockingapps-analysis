.class public final Lorg/mistergroup/shouldianswer/model/ad;
.super Ljava/util/Observable;
.source "PhoneContacts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/ad$a;,
        Lorg/mistergroup/shouldianswer/model/ad$b;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/ad;

.field private static final b:Landroid/content/ContentResolver;

.field private static c:Ljava/lang/Boolean;

.field private static d:Z

.field private static e:Z

.field private static f:I

.field private static final g:Landroid/database/ContentObserver;

.field private static h:Z

.field private static final i:Lorg/mistergroup/shouldianswer/utils/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mistergroup/shouldianswer/utils/h<",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            ">;"
        }
    .end annotation
.end field

.field private static j:J

.field private static k:Z

.field private static final l:Lorg/mistergroup/shouldianswer/utils/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mistergroup/shouldianswer/utils/h<",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            ">;"
        }
    .end annotation
.end field

.field private static m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ad;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/ad;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    .line 22
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->b:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lorg/mistergroup/shouldianswer/model/ad;->d:Z

    .line 27
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ad$a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/ad$a;-><init>()V

    check-cast v0, Landroid/database/ContentObserver;

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->g:Landroid/database/ContentObserver;

    .line 29
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/h;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/h;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->i:Lorg/mistergroup/shouldianswer/utils/h;

    .line 33
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/h;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/h;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/model/ad;)I
    .locals 0

    .line 21
    sget p0, Lorg/mistergroup/shouldianswer/model/ad;->f:I

    return p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/model/ad;Z)V
    .locals 0

    .line 21
    sput-boolean p1, Lorg/mistergroup/shouldianswer/model/ad;->d:Z

    return-void
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/model/ad;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/model/ad;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 8

    .line 272
    sget v0, Lorg/mistergroup/shouldianswer/model/ad;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/mistergroup/shouldianswer/model/ad;->f:I

    .line 273
    sget v0, Lorg/mistergroup/shouldianswer/model/ad;->f:I

    .line 274
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/ad$c;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v0, v4}, Lorg/mistergroup/shouldianswer/model/ad$c;-><init>(ZILkotlin/c/c;)V

    move-object v5, v1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/model/ad;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/model/ad;->a(Z)V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/model/ad;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ad;->g()Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/model/ad;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ad;->setChanged()V

    return-void
.end method

.method private final f()Z
    .locals 7

    .line 49
    sget-boolean v0, Lorg/mistergroup/shouldianswer/model/ad;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 50
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "PhoneContacts.registerObserver"

    invoke-static {v0, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 52
    :try_start_0
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    sget-object v4, Lorg/mistergroup/shouldianswer/model/ad;->b:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/mistergroup/shouldianswer/model/ad;->g:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    sput-boolean v1, Lorg/mistergroup/shouldianswer/model/ad;->h:Z

    .line 55
    sput-boolean v0, Lorg/mistergroup/shouldianswer/model/ad;->k:Z

    return v1

    .line 58
    :cond_1
    sput-boolean v1, Lorg/mistergroup/shouldianswer/model/ad;->k:Z

    .line 59
    sget-boolean v4, Lorg/mistergroup/shouldianswer/model/ad;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "PhoneContacts.registerObserver - READ CONTACTS permission NOT granted!"

    if-nez v4, :cond_2

    .line 60
    :try_start_1
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v6, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    sput-boolean v1, Lorg/mistergroup/shouldianswer/model/ad;->e:Z

    goto :goto_0

    .line 63
    :cond_2
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, v5, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return v0
.end method

.method private final g()Z
    .locals 44

    const-string v1, "data2"

    const-string v2, "data3"

    .line 89
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "PhoneContacts.readContacts"

    invoke-static {v0, v5, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 92
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/h;->b()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    .line 94
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v15

    .line 95
    sget-object v17, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v18, "_id"

    const-string v19, "contact_id"

    const-string v20, "data1"

    const-string v21, "in_visible_group"

    const-string v22, "starred"

    const-string v23, "is_primary"

    const-string v24, "photo_id"

    const-string v25, "display_name"

    const-string v26, "contact_last_updated_timestamp"

    const-string v27, "last_time_contacted"

    .line 106
    filled-new-array/range {v18 .. v27}, [Ljava/lang/String;

    move-result-object v18

    if-eqz v9, :cond_1

    move-object/from16 v19, v4

    goto :goto_1

    :cond_1
    const-string v0, "contact_last_updated_timestamp > ?"

    move-object/from16 v19, v0

    :goto_1
    if-eqz v9, :cond_2

    move-object/from16 v20, v4

    goto :goto_2

    :cond_2
    new-array v0, v8, [Ljava/lang/String;

    .line 109
    sget-wide v10, Lorg/mistergroup/shouldianswer/model/ad;->j:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v20, v0

    :goto_2
    const-string v22, "contact_last_updated_timestamp DESC"

    if-eqz v9, :cond_3

    move-object/from16 v21, v4

    goto :goto_3

    :cond_3
    move-object/from16 v21, v22

    .line 112
    :goto_3
    :try_start_1
    new-instance v14, Lorg/mistergroup/shouldianswer/utils/h;

    invoke-direct {v14}, Lorg/mistergroup/shouldianswer/utils/h;-><init>()V

    .line 114
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v10, "PhoneContacts.readContacts contentResolver.query"

    invoke-static {v0, v10, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    sget-object v16, Lorg/mistergroup/shouldianswer/model/ad;->b:Landroid/content/ContentResolver;

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v13, "contact_last_updated_timestamp"

    const-string v12, "data1"

    const-string v11, " items"

    const-string v10, "cursor"

    const-string v7, "contact_id"

    if-eqz v0, :cond_d

    :try_start_2
    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;

    move-object v3, v4

    check-cast v3, Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v4, v8

    check-cast v4, Landroid/database/Cursor;

    .line 117
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    move-object/from16 v21, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    const-string v2, "PhoneContacts.readContacts contentResolver.query returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v10

    const/4 v2, 0x2

    const/4 v10, 0x0

    invoke-static {v0, v1, v10, v2, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 118
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v0, :cond_c

    .line 121
    :try_start_4
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v0, v4, v7}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 122
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v0, v4, v12}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 123
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v10, "in_visible_group"

    invoke-virtual {v0, v4, v10}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 124
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 v24, v11

    const-string v11, "photo_id"

    invoke-virtual {v0, v4, v11}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 125
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 v25, v12

    const-string v12, "display_name"

    invoke-virtual {v0, v4, v12}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 126
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-wide/from16 v26, v5

    const-string v5, "is_primary"

    invoke-virtual {v0, v4, v5}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 127
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v6, "starred"

    invoke-virtual {v0, v4, v6}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 128
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 v28, v7

    invoke-virtual {v0, v4, v13}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 129
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 v29, v13

    const-string v13, "last_time_contacted"

    invoke-virtual {v0, v4, v13}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 131
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->F()Z

    move-result v30

    .line 133
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v32, v8

    move/from16 v31, v9

    :try_start_5
    invoke-virtual {v0, v4, v1}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v8

    .line 135
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v0, v4, v10}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v0

    if-nez v0, :cond_4

    if-nez v30, :cond_4

    move/from16 v9, v31

    move-object/from16 v8, v32

    goto :goto_4

    :cond_4
    const/16 v18, 0x1

    .line 140
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->c:Ljava/lang/Boolean;

    .line 141
    invoke-virtual {v14, v8, v9}, Lorg/mistergroup/shouldianswer/utils/h;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ac;

    if-nez v0, :cond_7

    .line 143
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ac;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/ac;-><init>()V

    .line 145
    invoke-virtual {v0, v8, v9}, Lorg/mistergroup/shouldianswer/model/ac;->a(J)V

    move/from16 v33, v1

    .line 146
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move/from16 v34, v2

    invoke-virtual {v1, v4, v11}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/model/ac;->b(J)V

    .line 147
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v1, v4, v12}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "Undefined"

    .line 149
    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/String;)V

    .line 150
    :cond_5
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v1, v4, v6}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ac;->a(Z)V

    .line 151
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v1, v4, v7}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/model/ac;->c(J)V

    .line 152
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v1, v4, v13}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/model/ac;->d(J)V

    .line 153
    invoke-virtual {v14, v8, v9, v0}, Lorg/mistergroup/shouldianswer/utils/h;->b(JLjava/lang/Object;)V

    goto :goto_6

    :cond_7
    move/from16 v33, v1

    move/from16 v34, v2

    :goto_6
    move-object v1, v0

    .line 155
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v0, v4, v5}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    .line 156
    :goto_7
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move/from16 v8, v34

    invoke-virtual {v0, v4, v8}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 158
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v34, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/16 v35, 0x0

    const/16 v36, 0x8

    const/16 v37, 0x0

    move/from16 v38, v10

    move-object/from16 v39, v16

    move-object v10, v0

    move-object/from16 v40, v24

    move/from16 v24, v11

    move-object v11, v9

    move-object/from16 v41, v25

    move/from16 v25, v12

    move-object v12, v15

    move-object/from16 v42, v29

    move/from16 v29, v13

    move-object/from16 v13, v34

    move-object/from16 v34, v14

    move/from16 v14, v35

    move-object/from16 v43, v15

    move/from16 v15, v36

    move-object/from16 v16, v37

    invoke-direct/range {v10 .. v16}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 159
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    :try_start_6
    invoke-static {v0}, Lkotlin/i/g;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 163
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ad;->i:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v1}, Lorg/mistergroup/shouldianswer/utils/h;->b(JLjava/lang/Object;)V

    goto :goto_8

    .line 165
    :cond_9
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PhoneContacts.updateContacts cant convert "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to number"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v0, v12, v11, v12}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 168
    :try_start_7
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v0, v12, v11, v12}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_8
    move-object/from16 v10, v43

    .line 170
    invoke-virtual {v1, v9, v10, v2}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :cond_a
    move/from16 v38, v10

    move-object/from16 v34, v14

    move-object v10, v15

    move-object/from16 v39, v16

    move-object/from16 v40, v24

    move-object/from16 v41, v25

    move-object/from16 v42, v29

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v29, v13

    :goto_9
    move v2, v8

    move-object v15, v10

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v29

    move/from16 v9, v31

    move-object/from16 v8, v32

    move/from16 v1, v33

    move-object/from16 v14, v34

    move/from16 v10, v38

    move-object/from16 v16, v39

    move-object/from16 v24, v40

    move-object/from16 v25, v41

    move-object/from16 v29, v42

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v32

    goto :goto_c

    :cond_b
    move-object/from16 v32, v8

    move/from16 v31, v9

    move-object/from16 v34, v14

    move-object/from16 v39, v16

    move-object/from16 v40, v24

    move-object/from16 v41, v25

    move-object/from16 v42, v29

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v8

    goto :goto_c

    :cond_c
    move-wide/from16 v26, v5

    move-object/from16 v28, v7

    move-object/from16 v32, v8

    move/from16 v31, v9

    move-object/from16 v40, v11

    move-object/from16 v41, v12

    move-object/from16 v42, v13

    move-object/from16 v34, v14

    move-object/from16 v39, v16

    .line 174
    :goto_a
    :try_start_8
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v1, v32

    .line 116
    :try_start_9
    invoke-static {v1, v3}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v1, v32

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v8

    :goto_b
    move-object v2, v0

    :goto_c
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-static {v1, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_d
    move-object/from16 v21, v1

    move-object/from16 v23, v2

    move-wide/from16 v26, v5

    move-object/from16 v28, v7

    move/from16 v31, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v41, v12

    move-object/from16 v42, v13

    move-object/from16 v34, v14

    :goto_d
    if-nez v31, :cond_12

    .line 178
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "PhoneContacts.updateContacts searching for deleted contacts"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 179
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/h;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/h;-><init>()V

    .line 180
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    check-cast v1, Ljava/lang/Iterable;

    .line 336
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/ac;

    .line 180
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lorg/mistergroup/shouldianswer/utils/h;->b(JLjava/lang/Object;)V

    goto :goto_e

    .line 181
    :cond_e
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ad;->b:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array/range {v28 .. v28}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_10

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 182
    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 183
    :goto_f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 184
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 v5, v39

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v7

    .line 185
    invoke-virtual {v0, v7, v8}, Lorg/mistergroup/shouldianswer/utils/h;->b(J)V

    move-object/from16 v39, v5

    goto :goto_f

    :cond_f
    move-object/from16 v5, v39

    .line 187
    sget-object v2, Lkotlin/o;->a:Lkotlin/o;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 182
    :try_start_d
    invoke-static {v1, v4}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_f
    invoke-static {v1, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_10
    move-object/from16 v5, v39

    .line 188
    :goto_10
    check-cast v0, Ljava/lang/Iterable;

    .line 338
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/ac;

    .line 189
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneContacts.updateContacts deleting contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " from items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 190
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/h;->b(J)V

    .line 191
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->j()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v1}, Lkotlin/i/g;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_11

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 192
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneContacts.updateContacts deleting from numbersIndex number="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v6, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 193
    sget-object v3, Lorg/mistergroup/shouldianswer/model/ad;->i:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v3, v1, v2}, Lorg/mistergroup/shouldianswer/utils/h;->b(J)V

    .line 194
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;

    :cond_11
    const/4 v7, 0x1

    goto :goto_11

    :cond_12
    move-object/from16 v5, v39

    const/4 v7, 0x0

    .line 199
    :cond_13
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneContacts.updateContacts readed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    move-wide/from16 v3, v26

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/u;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms newItems="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Lorg/mistergroup/shouldianswer/utils/h;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v1, v6, v2, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 201
    invoke-virtual/range {v34 .. v34}, Lorg/mistergroup/shouldianswer/utils/h;->b()I

    move-result v0

    if-lez v0, :cond_20

    .line 202
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    move-object/from16 v14, v28

    move-object/from16 v8, v41

    move-object/from16 v6, v42

    .line 208
    filled-new-array {v14, v8, v1, v2, v6}, [Ljava/lang/String;

    move-result-object v10

    if-eqz v31, :cond_14

    const/4 v13, 0x0

    goto :goto_12

    :cond_14
    move-object/from16 v13, v22

    .line 211
    :goto_12
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "PhoneContacts.readContacts contentResolver.query structuredNames"

    const/4 v8, 0x2

    const/4 v11, 0x0

    invoke-static {v0, v6, v11, v8, v11}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz v31, :cond_15

    const-string v0, "mimetype = ?"

    goto :goto_13

    :cond_15
    const-string v0, "mimetype = ? and contact_last_updated_timestamp > ?"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :goto_13
    move-object v11, v0

    const-string v0, "vnd.android.cursor.item/name"

    if-eqz v31, :cond_16

    .line 216
    :try_start_10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/16 v18, 0x1

    goto :goto_14

    :cond_16
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v8, v6

    .line 217
    sget-wide v15, Lorg/mistergroup/shouldianswer/model/ad;->j:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v18, 0x1

    aput-object v0, v8, v18

    move-object v12, v8

    .line 220
    :goto_14
    sget-object v8, Lorg/mistergroup/shouldianswer/model/ad;->b:Landroid/content/ContentResolver;

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_19

    move-object v6, v0

    check-cast v6, Ljava/io/Closeable;

    const/4 v8, 0x0

    move-object v0, v8

    check-cast v0, Ljava/lang/Throwable;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :try_start_11
    move-object v8, v6

    check-cast v8, Landroid/database/Cursor;

    .line 221
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PhoneContacts.readContacts contentResolver.query structuredNames returned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v40

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v9, v5, v11, v10, v11}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 223
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v5, v8, v14}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 225
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v9, v8, v1}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 226
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v9, v8, v2}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const/4 v9, 0x0

    .line 228
    :goto_15
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 229
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v10, v8, v5}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v10

    move-object/from16 v12, v34

    .line 230
    invoke-virtual {v12, v10, v11}, Lorg/mistergroup/shouldianswer/utils/h;->a(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mistergroup/shouldianswer/model/ac;

    if-eqz v10, :cond_17

    .line 233
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v11, v8, v1}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/ac;->b(Ljava/lang/String;)V

    .line 234
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v11, v8, v2}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/ac;->c(Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .line 235
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v9, v10

    :cond_17
    move-object/from16 v34, v12

    goto :goto_15

    :cond_18
    move-object/from16 v12, v34

    .line 238
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 220
    :try_start_12
    invoke-static {v6, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_14
    invoke-static {v6, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_19
    move-object/from16 v12, v34

    const/4 v9, 0x0

    .line 240
    :goto_16
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneContacts.updateContacts readed structuredNames in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/u;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms readed items "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v2, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 242
    move-object v14, v12

    check-cast v14, Ljava/lang/Iterable;

    .line 340
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v8, v7

    :cond_1a
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/ac;

    if-eqz v31, :cond_1b

    const/4 v2, 0x0

    goto :goto_18

    .line 243
    :cond_1b
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/mistergroup/shouldianswer/utils/h;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/ac;

    :goto_18
    if-eqz v2, :cond_1c

    .line 244
    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/model/ac;->a(Lorg/mistergroup/shouldianswer/model/ac;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_1c
    if-nez v31, :cond_1d

    .line 246
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneContacts.updateContacts updating contact #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v2, v5, v7, v6, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 247
    :cond_1d
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v1}, Lorg/mistergroup/shouldianswer/utils/h;->b(JLjava/lang/Object;)V

    .line 248
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->e()J

    move-result-wide v5

    sget-wide v9, Lorg/mistergroup/shouldianswer/model/ad;->j:J

    cmp-long v2, v5, v9

    if-lez v2, :cond_1a

    if-nez v31, :cond_1e

    .line 250
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "PhoneContacts.updateContacts updating change detected!"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v2, v5, v7, v6, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 251
    :cond_1e
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->e()J

    move-result-wide v1

    sput-wide v1, Lorg/mistergroup/shouldianswer/model/ad;->j:J

    move/from16 v8, v18

    goto :goto_17

    :cond_1f
    move v7, v8

    goto :goto_19

    :cond_20
    const/16 v18, 0x1

    .line 257
    :goto_19
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/h;->b()I

    move-result v0

    if-lez v0, :cond_21

    goto :goto_1a

    :cond_21
    const/16 v18, 0x0

    :goto_1a
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->c:Ljava/lang/Boolean;

    .line 258
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneContacts.updateContacts updated in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/u;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms items="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/h;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 259
    sput-boolean v1, Lorg/mistergroup/shouldianswer/model/ad;->d:Z

    if-eqz v7, :cond_22

    .line 261
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lorg/mistergroup/shouldianswer/model/ad;->m:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    :cond_22
    return v7

    :catch_1
    move-exception v0

    .line 265
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 267
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ad;->c:Ljava/lang/Boolean;

    return v1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 31
    sget-boolean v0, Lorg/mistergroup/shouldianswer/model/ad;->k:Z

    return v0
.end method

.method public addObserver(Ljava/util/Observer;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 81
    sget-boolean p1, Lorg/mistergroup/shouldianswer/model/ad;->h:Z

    if-nez p1, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ad;->f()Z

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ad;->countObservers()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-boolean p1, Lorg/mistergroup/shouldianswer/model/ad;->d:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, p1, v0, v1}, Lorg/mistergroup/shouldianswer/model/ad;->a(Lorg/mistergroup/shouldianswer/model/ad;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b()Lorg/mistergroup/shouldianswer/utils/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mistergroup/shouldianswer/utils/h<",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ad;->l:Lorg/mistergroup/shouldianswer/utils/h;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 34
    sget-wide v0, Lorg/mistergroup/shouldianswer/model/ad;->m:J

    return-wide v0
.end method

.method public final d()V
    .locals 3

    .line 73
    sget-boolean v0, Lorg/mistergroup/shouldianswer/model/ad;->k:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ad;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-static {p0, v0, v1, v2}, Lorg/mistergroup/shouldianswer/model/ad;->a(Lorg/mistergroup/shouldianswer/model/ad;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/ad$b;",
            ">;"
        }
    .end annotation

    const-string v0, "account_type"

    const-string v1, "account_name"

    const-string v2, "title"

    const-string v3, "_id"

    .line 302
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 304
    :try_start_0
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 305
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    .line 306
    sget-object v5, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 309
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v6, v5, v3}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 311
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v6, v5, v2}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 312
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v6, v5, v1}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 313
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v6, v5, v0}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 315
    :cond_0
    new-instance v14, Lorg/mistergroup/shouldianswer/model/ad$b;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lorg/mistergroup/shouldianswer/model/ad$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/e/b/e;)V

    .line 316
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Lorg/mistergroup/shouldianswer/model/ad$b;->a(J)V

    .line 317
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lorg/mistergroup/shouldianswer/model/ad$b;->a(Ljava/lang/String;)V

    .line 318
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lorg/mistergroup/shouldianswer/model/ad$b;->b(Ljava/lang/String;)V

    .line 319
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lorg/mistergroup/shouldianswer/model/ad$b;->c(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_0

    .line 324
    :cond_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 328
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 331
    :cond_2
    :goto_0
    check-cast v4, Ljava/util/List;

    return-object v4
.end method
