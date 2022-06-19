.class final Landroidx/appcompat/app/AppCompatDelegateImpl$g;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;

.field private final c:Landroidx/appcompat/app/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/l;)V
    .locals 0

    .line 3242
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 3243
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c:Landroidx/appcompat/app/l;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 24

    move-object/from16 v0, p0

    .line 3249
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c:Landroidx/appcompat/app/l;

    .line 4080
    iget-object v2, v1, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/app/l$a;

    .line 4144
    iget-object v3, v1, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/app/l$a;

    iget-wide v3, v3, Landroidx/appcompat/app/l$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v3, v5

    if-lez v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4084
    iget-boolean v7, v2, Landroidx/appcompat/app/l$a;->a:Z

    goto/16 :goto_6

    .line 5110
    :cond_1
    iget-object v3, v1, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/content/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "network"

    .line 5113
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/l;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 5116
    :goto_1
    iget-object v5, v1, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v5, v6}, Landroidx/core/content/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const-string v4, "gps"

    .line 5119
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/l;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 5124
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v11, v5, v9

    if-lez v11, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    :goto_2
    move-object v3, v4

    :cond_5
    if-eqz v3, :cond_c

    .line 5148
    iget-object v1, v1, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/app/l$a;

    .line 5149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6031
    sget-object v6, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/k;

    if-nez v6, :cond_6

    .line 6032
    new-instance v6, Landroidx/appcompat/app/k;

    invoke-direct {v6}, Landroidx/appcompat/app/k;-><init>()V

    sput-object v6, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/k;

    .line 6034
    :cond_6
    sget-object v6, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/k;

    const-wide/32 v16, 0x5265c00

    sub-long v10, v4, v16

    .line 5154
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v9, v6

    .line 5153
    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/k;->a(JDD)V

    .line 5155
    iget-wide v14, v6, Landroidx/appcompat/app/k;->b:J

    .line 5158
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide v10, v4

    move-wide/from16 v20, v14

    move-wide/from16 v14, v18

    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/k;->a(JDD)V

    .line 5159
    iget v9, v6, Landroidx/appcompat/app/k;->d:I

    if-ne v9, v8, :cond_7

    const/4 v7, 0x1

    .line 5160
    :cond_7
    iget-wide v14, v6, Landroidx/appcompat/app/k;->c:J

    .line 5161
    iget-wide v12, v6, Landroidx/appcompat/app/k;->b:J

    add-long v10, v4, v16

    .line 5165
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v9, v6

    move-wide/from16 v22, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v2

    move-wide v2, v14

    move-wide/from16 v14, v18

    .line 5164
    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/k;->a(JDD)V

    .line 5166
    iget-wide v9, v6, Landroidx/appcompat/app/k;->c:J

    const-wide/16 v11, -0x1

    cmp-long v6, v2, v11

    move-wide/from16 v13, v22

    if-eqz v6, :cond_b

    cmp-long v6, v13, v11

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    const-wide/16 v11, 0x0

    cmp-long v6, v4, v13

    if-lez v6, :cond_9

    add-long/2addr v11, v9

    goto :goto_3

    :cond_9
    cmp-long v6, v4, v2

    if-lez v6, :cond_a

    add-long/2addr v11, v13

    goto :goto_3

    :cond_a
    add-long/2addr v11, v2

    :goto_3
    const-wide/32 v4, 0xea60

    add-long/2addr v11, v4

    goto :goto_5

    :cond_b
    :goto_4
    const-wide/32 v11, 0x2932e00

    add-long/2addr v11, v4

    .line 5186
    :goto_5
    iput-boolean v7, v1, Landroidx/appcompat/app/l$a;->a:Z

    move-wide/from16 v4, v20

    .line 5187
    iput-wide v4, v1, Landroidx/appcompat/app/l$a;->b:J

    .line 5188
    iput-wide v2, v1, Landroidx/appcompat/app/l$a;->c:J

    .line 5189
    iput-wide v13, v1, Landroidx/appcompat/app/l$a;->d:J

    .line 5190
    iput-wide v9, v1, Landroidx/appcompat/app/l$a;->e:J

    .line 5191
    iput-wide v11, v1, Landroidx/appcompat/app/l$a;->f:J

    move-object/from16 v1, v16

    .line 4091
    iget-boolean v7, v1, Landroidx/appcompat/app/l$a;->a:Z

    goto :goto_6

    .line 4100
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 4101
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_d

    const/16 v2, 0x16

    if-lt v1, v2, :cond_e

    :cond_d
    const/4 v7, 0x1

    :cond_e
    :goto_6
    if-eqz v7, :cond_f

    const/4 v1, 0x2

    return v1

    :cond_f
    return v8
.end method

.method public final b()V
    .locals 2

    .line 3254
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x1

    .line 6359
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    return-void
.end method

.method final c()Landroid/content/IntentFilter;
    .locals 2

    .line 3259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 3260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 3261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 3262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
