.class public final synthetic Lm6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm6/d;->a:I

    iput-object p1, p0, Lm6/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm6/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lm6/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lm6/d;->b:Ljava/lang/Object;

    check-cast v0, Lm6/e;

    iget-object v1, p0, Lm6/d;->c:Ljava/lang/Object;

    check-cast v1, Lm6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v2, v1, Lm6/b;->a:Lo6/i$b;

    iget-object v1, v1, Lm6/b;->b:Lo6/d;

    invoke-virtual {v0, v2, v1}, Lm6/e;->e(Lo6/i$b;Lo6/d;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lm6/d;->b:Ljava/lang/Object;

    check-cast v0, Ln8/a;

    sget v1, Ln8/a;->b:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, v0, Ln8/a;->a:Ln8/b;

    .line 4
    iget-object v1, v1, Ln8/b;->a:Landroid/content/Context;

    const-string v2, "contactssyncschedulestarted"

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v2, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/e;

    const-string v4, "GPref.setContactsSyncScheduleStarted"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    const-string v11, "contact_last_updated_timestamp DESC"

    .line 7
    iget-object v1, v0, Ln8/a;->a:Ln8/b;

    .line 8
    iget-object v1, v1, Ln8/b;->a:Landroid/content/Context;

    .line 9
    invoke-static {v1}, Lf8/h;->j(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v9, "data1 NOT NULL AND contact_last_updated_timestamp > ? "

    .line 10
    iget-object v2, v0, Ln8/a;->a:Ln8/b;

    .line 11
    iget-object v2, v2, Ln8/b;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    aput-object v1, v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_id"

    .line 15
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    const-string v3, "contact_last_updated_timestamp"

    .line 16
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    iget-object v4, v0, Ln8/a;->a:Ln8/b;

    .line 18
    iget-object v4, v4, Ln8/b;->a:Landroid/content/Context;

    .line 19
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "ccolastcontactchange"

    invoke-static {v4, v7}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-lez v10, :cond_0

    .line 21
    invoke-static {v4, v7}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    .line 22
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v7, v5, v6}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 23
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24
    new-instance v1, Lh8/q;

    invoke-direct {v1}, Lh8/q;-><init>()V

    iget-object v0, v0, Ln8/a;->a:Ln8/b;

    .line 25
    iget-object v0, v0, Ln8/b;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {v1, v0, v2}, Lh8/q;->B(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
