.class public Laa1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laa1$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static l:Laa1;

.field public static m:Z


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Laa1$b;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/concurrent/ScheduledExecutorService;

.field public e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public f:J

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Laa1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ACTION_CONTACTS_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Laa1;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".EXTRA_NEW_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Laa1;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".EXTRA_UPDATED_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Laa1;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".EXTRA_DELETED_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laa1;->k:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Laa1;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laa1;->f:J

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Laa1;->g:J

    sget-object v0, Lta1;->J:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lb81;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laa1;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Laa1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Laa1;->a:Landroid/os/Handler;

    new-instance v0, Laa1$b;

    iget-object v1, p0, Laa1;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Laa1$b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Laa1;->b:Laa1$b;

    iget-object v0, p0, Laa1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Laa1$a;

    invoke-direct {v1, p0}, Laa1$a;-><init>(Laa1;)V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Laa1;->e:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic a(Laa1;)V
    .locals 0

    invoke-virtual {p0}, Laa1;->m()V

    return-void
.end method

.method public static synthetic b(Laa1;)Laa1$b;
    .locals 0

    iget-object p0, p0, Laa1;->b:Laa1$b;

    return-object p0
.end method

.method public static synthetic c()Laa1;
    .locals 1

    invoke-static {}, Laa1;->j()Laa1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Laa1;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Laa1;->e:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static synthetic e(Laa1;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Laa1;->e:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method public static synthetic f()Laa1;
    .locals 1

    sget-object v0, Laa1;->l:Laa1;

    return-object v0
.end method

.method public static synthetic g(Laa1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Laa1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static h(Lq81;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq81;->b0()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lq81;->O()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lq81;->O()V

    :cond_3
    return-void
.end method

.method public static i()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Laa1;->l:Laa1;

    invoke-static {}, Laa1;->j()Laa1;

    return-void
.end method

.method public static j()Laa1;
    .locals 1

    sget-object v0, Laa1;->l:Laa1;

    if-nez v0, :cond_0

    new-instance v0, Laa1;

    invoke-direct {v0}, Laa1;-><init>()V

    sput-object v0, Laa1;->l:Laa1;

    :cond_0
    sget-object v0, Laa1;->l:Laa1;

    return-object v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Laa1;->m:Z

    return v0
.end method

.method public static l()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Laa1;->k:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Laa1;->j()Laa1;

    move-result-object v1

    sget-object v2, Lm91$c;->k:Lm91$c;

    invoke-static {v1, v2, v0}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void
.end method

.method public static n()V
    .locals 0

    invoke-static {}, Laa1;->j()Laa1;

    return-void
.end method

.method public static p()V
    .locals 1

    sget-object v0, Laa1;->l:Laa1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Laa1;->o()V

    const/4 v0, 0x0

    sput-object v0, Laa1;->l:Laa1;

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 26

    move-object/from16 v0, p0

    sget-boolean v1, Laa1;->m:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "CONTACTS_SYNC"

    invoke-static {v1}, Lj91;->C(Ljava/lang/String;)V

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v6, "deleted = 0"

    const-string v8, "starred DESC, last_time_contacted DESC, version DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_15

    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Laa1;->m:Z

    sget-object v5, Lm91$c;->a:Lm91$c;

    invoke-static {v0, v5, v4}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    invoke-static {}, Lb81;->h()V

    invoke-static {}, Lb81;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Laa1;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-static {}, Lb81;->c()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Laa1;->c:Ljava/lang/String;

    new-instance v6, Le4;

    invoke-direct {v6}, Le4;-><init>()V

    new-instance v7, Lq81;

    invoke-direct {v7}, Lq81;-><init>()V

    invoke-virtual {v7, v5}, Lq81;->T(Z)Le4;

    move-result-object v7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7}, Le4;->o()I

    move-result v9

    invoke-static {}, Lp71;->g()Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lr71$a;->k0:Lr71$a;

    invoke-virtual {v10}, Lr71$a;->a()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v10, 0x1

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    :goto_2
    const-string v4, "version"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v3, "contact_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v18, v12

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Le4;->h(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq81$c;

    if-eqz v11, :cond_5

    iget-boolean v12, v11, Lq81$c;->c:Z

    if-eqz v12, :cond_5

    move-object/from16 v19, v1

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v19, v1

    const/4 v12, 0x0

    :goto_3
    const-string v1, "starred"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eq v12, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-eqz v11, :cond_8

    iget-boolean v12, v11, Lq81$c;->d:Z

    if-eqz v12, :cond_8

    move/from16 v20, v9

    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    move/from16 v20, v9

    const/4 v12, 0x0

    :goto_6
    const-string v9, "send_to_voicemail"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_7
    if-eq v12, v9, :cond_a

    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    :goto_8
    if-eqz v11, :cond_b

    iget-object v12, v11, Lq81$c;->e:Ljava/lang/String;

    if-eqz v12, :cond_b

    move/from16 v21, v8

    const-string v8, "display_name"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    move/from16 v22, v13

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    move/from16 v21, v8

    :cond_c
    move/from16 v22, v13

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Le4;->h(J)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    goto :goto_a

    :cond_d
    const/4 v12, 0x0

    :goto_a
    const-string v13, ")"

    move-object/from16 v23, v3

    const-string v3, " ("

    if-nez v12, :cond_19

    if-eqz v11, :cond_e

    move/from16 v24, v12

    iget-object v12, v11, Lq81$c;->b:Ljava/lang/Long;

    invoke-virtual {v12, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v10, :cond_e

    if-nez v1, :cond_e

    if-nez v9, :cond_e

    if-nez v8, :cond_e

    move/from16 v25, v5

    move v12, v10

    move/from16 v9, v21

    goto/16 :goto_e

    :cond_e
    invoke-static {v2}, La81;->c(Landroid/database/Cursor;)La81;

    move-result-object v1

    if-nez v1, :cond_f

    move/from16 v25, v5

    move v12, v10

    move/from16 v9, v21

    goto/16 :goto_11

    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking contact "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, La81;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, v10

    iget-wide v9, v1, La81;->a:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v11, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Our records do not have "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, La81;->b:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, La81;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ") - Adding"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Lq81;

    invoke-direct {v4}, Lq81;-><init>()V

    invoke-virtual {v4, v1}, Lq81;->o0(La81;)Lq81;

    invoke-static {v4}, Laa1;->h(Lq81;)V

    invoke-virtual {v4}, Lq81;->z()Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to add contact "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, La81;->b:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, La81;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    iget-wide v8, v1, La81;->a:J

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v6, v8, v9, v4}, Le4;->l(JLjava/lang/Object;)V

    add-int/lit8 v1, v18, 0x1

    move/from16 v25, v5

    const/4 v5, 0x1

    goto/16 :goto_c

    :cond_11
    new-instance v8, Lq81;

    invoke-direct {v8}, Lq81;-><init>()V

    invoke-virtual {v8, v1, v5}, Lq81;->p0(La81;Z)Lq81;

    invoke-virtual {v8, v5}, Lq81;->e0(Z)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v11, Lq81$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Contact update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Lq81;->e0(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v11, Lq81$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-wide v9, v1, La81;->a:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v9, v8, Lq81;->w:Ljava/lang/String;

    iget-object v10, v8, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lq81;->o0(La81;)Lq81;

    invoke-static {v8}, Laa1;->h(Lq81;)V

    move/from16 v25, v5

    iget-object v5, v8, Lq81;->w:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v8, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v8, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    const/4 v5, 0x0

    iput-boolean v5, v8, Lq81;->l:Z

    :cond_13
    invoke-virtual {v8}, Lq81;->z()Z

    move-result v5

    if-eqz v5, :cond_14

    add-int/lit8 v15, v15, 0x1

    iget-object v5, v11, Lq81$c;->b:Ljava/lang/Long;

    invoke-virtual {v5, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    and-int/2addr v14, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contact updated "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, La81;->b:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, La81;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_b

    :cond_14
    const/4 v5, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to update contact "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, La81;->b:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, La81;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    move/from16 v25, v5

    const/4 v5, 0x1

    :goto_b
    iget-wide v8, v1, La81;->a:J

    invoke-virtual {v7, v8, v9}, Le4;->m(J)V

    iget-wide v8, v1, La81;->a:J

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v6, v8, v9, v4}, Le4;->l(JLjava/lang/Object;)V

    move/from16 v1, v18

    :goto_c
    add-int/lit8 v4, v22, 0x1

    int-to-long v8, v4

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    const-wide/16 v22, 0x0

    cmp-long v16, v8, v22

    if-nez v16, :cond_17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v21

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v16, v4, 0x64

    div-int v5, v16, v9

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%)"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v10, v0, Laa1;->g:J

    move v8, v4

    const-wide/16 v4, 0x1f4

    cmp-long v16, v10, v4

    if-gez v16, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v4, v0, Laa1;->f:J

    sub-long/2addr v10, v4

    const-wide/16 v4, 0x7530

    cmp-long v16, v10, v4

    if-lez v16, :cond_16

    iget-wide v4, v0, Laa1;->g:J

    const-wide/16 v10, 0xa

    add-long/2addr v4, v10

    iput-wide v4, v0, Laa1;->g:J

    const-wide/16 v10, 0x1f4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Laa1;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Laa1;->f:J

    :cond_16
    :try_start_0
    iget-wide v4, v0, Laa1;->g:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_d

    :catchall_0
    nop

    goto :goto_d

    :cond_17
    move v8, v4

    move/from16 v9, v21

    :goto_d
    add-int v4, v1, v15

    rem-int/lit8 v4, v4, 0x64

    if-nez v4, :cond_18

    sget-object v4, Lm91$c;->b:Lm91$c;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    :cond_18
    move/from16 v22, v8

    goto :goto_12

    :cond_19
    move/from16 v25, v5

    move/from16 v24, v12

    move/from16 v9, v21

    move v12, v10

    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped contact "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v23

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ". versions "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_1a

    iget-object v1, v11, Lq81$c;->b:Ljava/lang/Long;

    goto :goto_10

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1b

    const-string v1, " Changed favorite status"

    goto :goto_f

    :cond_1b
    const-string v1, ""

    :goto_f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v11, :cond_1c

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Le4;->m(J)V

    :cond_1c
    if-nez v24, :cond_1d

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v6, v4, v5, v8}, Le4;->l(JLjava/lang/Object;)V

    :cond_1d
    :goto_11
    move/from16 v1, v18

    :goto_12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-static {v7}, Lka1;->c(Le4;)[Ljava/lang/Long;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_1f

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v6, Lq81;

    invoke-direct {v6}, Lq81;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6}, Lq81;->d()Z

    move-result v8

    if-nez v8, :cond_1e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "Unable to delete our contact "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_14

    :cond_1e
    move-object/from16 v16, v2

    :goto_14
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    goto :goto_13

    :cond_1f
    if-nez v12, :cond_20

    if-eqz v14, :cond_20

    if-lez v15, :cond_20

    sget-object v2, Lr71$a;->k0:Lr71$a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_20
    invoke-static {}, Lb81;->i()V

    const/4 v3, 0x0

    sput-boolean v3, Laa1;->m:Z

    sget-object v2, Lm91$c;->c:Lm91$c;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    if-gtz v1, :cond_21

    if-gtz v15, :cond_21

    invoke-virtual {v7}, Le4;->o()I

    move-result v2

    if-lez v2, :cond_22

    :cond_21
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Laa1;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Laa1;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Laa1;->k:Ljava/lang/String;

    invoke-virtual {v7}, Le4;->o()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lm91$c;->k:Lm91$c;

    invoke-static {v0, v3, v2}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    sget-object v2, Lr71$a;->V:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_22

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-static {v2}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Laa1;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnf;->d(Landroid/content/Intent;)Z

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contacts sync finished. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " total phone/us, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updated, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Le4;->o()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deleted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lj91;->E(Ljava/lang/String;)Ljava/lang/Long;

    return-void

    :cond_23
    move v8, v9

    move v10, v12

    move/from16 v9, v20

    move/from16 v13, v22

    move/from16 v5, v25

    const/4 v3, 0x1

    move v12, v1

    move-object/from16 v1, v19

    goto/16 :goto_2

    :cond_24
    :goto_15
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lq81;->l0()V

    sget-object v1, Lm91$c;->c:Lm91$c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Laa1;->b:Laa1$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Laa1;->b:Laa1$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Laa1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method
