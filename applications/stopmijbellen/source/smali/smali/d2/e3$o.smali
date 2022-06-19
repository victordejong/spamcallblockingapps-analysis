.class public Ld2/e3$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/e3;


# direct methods
.method public constructor <init>(Ld2/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e3$o;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ld2/e3$o;->a:Ld2/e3;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Ld2/f4;

    invoke-direct {v3}, Ld2/f4;-><init>()V

    .line 3
    iget-object v4, v1, Ld2/t0;->b:Ld2/f4;

    const-string v5, "ad_session_id"

    .line 4
    invoke-virtual {v4, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "params"

    .line 5
    invoke-virtual {v4, v6}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    const-string v6, "recurrence"

    .line 6
    invoke-virtual {v4, v6}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v6

    .line 7
    new-instance v7, Ld2/d4;

    invoke-direct {v7}, Ld2/d4;-><init>()V

    .line 8
    new-instance v8, Ld2/d4;

    invoke-direct {v8}, Ld2/d4;-><init>()V

    .line 9
    new-instance v9, Ld2/d4;

    invoke-direct {v9}, Ld2/d4;-><init>()V

    const-string v10, "description"

    .line 10
    invoke-virtual {v4, v10}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "location"

    .line 11
    invoke-virtual {v4, v12}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    const-string v12, "start"

    .line 12
    invoke-virtual {v4, v12}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "end"

    .line 13
    invoke-virtual {v4, v13}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "summary"

    .line 14
    invoke-virtual {v4, v14}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v6}, Ld2/f4;->e()I

    move-result v14

    const-string v15, ""

    if-lez v14, :cond_0

    const-string v7, "expires"

    .line 16
    invoke-virtual {v6, v7}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "frequency"

    .line 17
    invoke-virtual {v6, v8}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "daysInWeek"

    .line 19
    invoke-static {v6, v9}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v9

    const-string v14, "daysInMonth"

    .line 20
    invoke-static {v6, v14}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v14

    const-string v0, "daysInYear"

    .line 21
    invoke-static {v6, v0}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v14, v8

    move-object v0, v9

    move-object v8, v15

    move-object v9, v7

    move-object v7, v8

    .line 22
    :goto_0
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v4, v11

    .line 23
    :cond_1
    invoke-static {v12}, Ld2/i3;->D(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 24
    invoke-static {v13}, Ld2/i3;->D(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 25
    invoke-static {v7}, Ld2/i3;->D(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    const-string v15, "success"

    move-object/from16 v16, v2

    if-eqz v12, :cond_d

    if-nez v13, :cond_2

    goto/16 :goto_4

    :cond_2
    move-object/from16 v17, v3

    .line 26
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-wide/from16 v18, v2

    .line 27
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v20, 0x0

    if-eqz v7, :cond_3

    .line 28
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v22, v22, v12

    const-wide/16 v12, 0x3e8

    div-long v22, v22, v12

    goto :goto_1

    :cond_3
    move-wide/from16 v22, v20

    :goto_1
    const-string v3, "DAILY"

    .line 29
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v12, 0x1

    if-eqz v3, :cond_4

    const-wide/32 v20, 0x15180

    .line 30
    div-long v22, v22, v20

    goto :goto_2

    :cond_4
    const-string v3, "WEEKLY"

    .line 31
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/32 v20, 0x93a80

    .line 32
    div-long v22, v22, v20

    goto :goto_2

    :cond_5
    const-string v3, "MONTHLY"

    .line 33
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/32 v20, 0x2820a8

    .line 34
    div-long v22, v22, v20

    goto :goto_2

    :cond_6
    const-string v3, "YEARLY"

    .line 35
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/32 v20, 0x1e187e0

    .line 36
    div-long v22, v22, v20

    :goto_2
    add-long v20, v22, v12

    :cond_7
    move-wide/from16 v12, v20

    .line 37
    invoke-virtual {v6}, Ld2/f4;->e()I

    move-result v3

    const-string v6, "endTime"

    const-string v7, "beginTime"

    move-object/from16 v20, v5

    const-string v5, "title"

    move-object/from16 v21, v15

    const-string v15, "vnd.android.cursor.item/event"

    move-wide/from16 v22, v1

    const-string v1, "android.intent.action.EDIT"

    if-lez v3, :cond_b

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    :try_start_0
    invoke-virtual {v9}, Ld2/d4;->c()I

    move-result v3

    if-eqz v3, :cond_8

    .line 40
    invoke-static {v9}, Ld2/i3;->f(Ld2/d4;)Ljava/lang/String;

    move-result-object v3

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";BYDAY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    :cond_8
    invoke-virtual {v14}, Ld2/d4;->c()I

    move-result v3

    if-eqz v3, :cond_9

    .line 43
    invoke-static {v14}, Ld2/i3;->p(Ld2/d4;)Ljava/lang/String;

    move-result-object v3

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";BYMONTHDAY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    :cond_9
    invoke-virtual {v0}, Ld2/d4;->c()I

    move-result v3

    if-eqz v3, :cond_a

    .line 46
    invoke-static {v0}, Ld2/i3;->p(Ld2/d4;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";BYYEARDAY="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-wide/from16 v8, v18

    .line 50
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    move-wide/from16 v12, v22

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rrule"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    :cond_b
    move-wide/from16 v8, v18

    move-wide/from16 v12, v22

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 55
    :goto_3
    invoke-static {v0}, Ld2/i3;->g(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    .line 56
    invoke-static {v1, v2, v0}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    move-object/from16 v0, p1

    .line 57
    invoke-virtual {v0, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    .line 58
    invoke-virtual {v0, v1}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Ld2/e3;->c(Ljava/lang/String;)Z

    goto :goto_5

    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    const-string v3, "Unable to create Calendar Event."

    const/4 v4, 0x0

    .line 61
    invoke-static {v3, v4}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 62
    invoke-static {v1, v2, v4}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 63
    invoke-virtual {v0, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    goto :goto_5

    :cond_d
    :goto_4
    move-object v0, v1

    move-object v1, v3

    move-object v2, v15

    const/4 v4, 0x0

    const-string v3, "Unable to create Calendar Event"

    .line 64
    invoke-static {v3, v4}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 65
    invoke-static {v1, v2, v4}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 66
    invoke-virtual {v0, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    :goto_5
    return-void
.end method
