.class public final Lorg/mistergroup/shouldianswer/model/ae;
.super Ljava/lang/Object;
.source "PhoneContactsFinder.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/ae;

.field private static b:Z

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ae;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/ae;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ae;->a:Lorg/mistergroup/shouldianswer/model/ae;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ae;->c:Ljava/util/HashMap;

    .line 13
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ae$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/ae$a;-><init>(Landroid/os/Handler;)V

    check-cast v0, Landroid/database/ContentObserver;

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ae;->d:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/model/ae;)Ljava/util/HashMap;
    .locals 0

    .line 9
    sget-object p0, Lorg/mistergroup/shouldianswer/model/ae;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic a(Lorg/mistergroup/shouldianswer/model/ae;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mistergroup/shouldianswer/model/ac;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 42
    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/ae;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p0

    return-object p0
.end method

.method private final b()Z
    .locals 6

    .line 22
    sget-boolean v0, Lorg/mistergroup/shouldianswer/model/ae;->b:Z

    if-nez v0, :cond_1

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "PhoneContactsFinder.registerObserver"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 25
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ae;->d:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    sput-boolean v5, Lorg/mistergroup/shouldianswer/model/ae;->b:Z

    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "PhoneContactsFinder.registerObserver - READ CONTACTS permission NOT granted!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 35
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/model/ae;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lorg/mistergroup/shouldianswer/model/ac;
    .locals 8

    const-string v0, "contactData"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "PhoneContactsFinder.getByUri"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/io/Closeable;

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;

    .line 117
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    new-instance v1, Lorg/mistergroup/shouldianswer/model/ac;

    invoke-direct {v1}, Lorg/mistergroup/shouldianswer/model/ac;-><init>()V

    .line 120
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v4, "cursor"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contact_id"

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/g;->d(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/mistergroup/shouldianswer/model/ac;->a(J)V

    .line 121
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v4, "display_name"

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/String;)V

    .line 122
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v4, "has_phone_number"

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {p1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 125
    :cond_1
    :try_start_1
    sget-object v2, Lkotlin/o;->a:Lkotlin/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {p1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/ac;
    .locals 13

    const-string p2, "number"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    move-object v1, v0

    check-cast v1, Lorg/mistergroup/shouldianswer/model/ac;

    .line 45
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v2, p1}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 47
    :cond_0
    sget-boolean v2, Lorg/mistergroup/shouldianswer/model/ae;->b:Z

    if-nez v2, :cond_1

    .line 48
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ae;->b()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 51
    :cond_1
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ae;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ae;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/ac;

    return-object p2

    .line 75
    :cond_2
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    .line 76
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id"

    const-string v7, "display_name"

    const-string v8, "photo_id"

    const-string v9, "starred"

    const-string v10, "has_phone_number"

    const-string v11, "number"

    const-string v12, "normalized_number"

    .line 84
    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v6

    .line 86
    sget-object v2, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Ljava/io/Closeable;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    .line 87
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    new-instance v5, Lorg/mistergroup/shouldianswer/model/ac;

    invoke-direct {v5}, Lorg/mistergroup/shouldianswer/model/ac;-><init>()V

    .line 89
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v7, "cur"

    invoke-static {v4, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "_id"

    invoke-virtual {v6, v4, v7}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/mistergroup/shouldianswer/model/ac;->a(J)V

    .line 90
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v7, "display_name"

    invoke-virtual {v6, v4, v7}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/String;)V

    .line 91
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v7, "photo_id"

    invoke-virtual {v6, v4, v7}, Lorg/mistergroup/shouldianswer/utils/g;->d(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/mistergroup/shouldianswer/model/ac;->b(J)V

    .line 92
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v7, "starred"

    invoke-virtual {v6, v4, v7}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    move v6, v8

    goto :goto_0

    :cond_3
    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/model/ac;->a(Z)V

    .line 93
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v9, "has_phone_number"

    invoke-virtual {v6, v4, v9}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    move v7, v8

    :cond_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/Boolean;)V

    .line 94
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v6, v4, p2}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 96
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p2, v4, v8}, Lorg/mistergroup/shouldianswer/model/ac;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    move-object v1, v5

    .line 100
    :cond_6
    sget-object p2, Lkotlin/o;->a:Lkotlin/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    .line 103
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v2

    .line 104
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/o;->k()Z

    move-result v3

    .line 105
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact Permissions read="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " write="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v0, v6, v0}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 106
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Permissions.Contacts.Read"

    invoke-virtual {v4, v5, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Permissions.Contacts.Write"

    invoke-virtual {v2, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p2, v0, v6, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 110
    :cond_7
    :goto_1
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ae;->c:Ljava/util/HashMap;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final a()V
    .locals 1

    .line 39
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ae;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
