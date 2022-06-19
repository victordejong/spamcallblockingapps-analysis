.class public abstract Lcom/google/android/gms/internal/ads/cmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cjd;


# static fields
.field protected static volatile b:Lcom/google/android/gms/internal/ads/din;


# instance fields
.field private a:D

.field protected c:Landroid/view/MotionEvent;

.field protected d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J

.field protected j:J

.field protected k:J

.field protected l:D

.field protected m:F

.field protected n:F

.field protected o:F

.field protected p:F

.field protected q:Z

.field protected r:Landroid/util/DisplayMetrics;

.field private s:D

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/cmg;->b:Lcom/google/android/gms/internal/ads/din;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->d:Ljava/util/LinkedList;

    .line 3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->e:J

    .line 4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->f:J

    .line 5
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->g:J

    .line 6
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->h:J

    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->i:J

    .line 8
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->j:J

    .line 9
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->k:J

    .line 10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cmg;->t:Z

    .line 11
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cmg;->q:Z

    .line 12
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bg:Lcom/google/android/gms/internal/ads/ect;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/bml;->a()V

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->r:Landroid/util/DisplayMetrics;

    .line 20
    :goto_1
    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cmg;->b:Lcom/google/android/gms/internal/ads/din;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/diq;->a(Lcom/google/android/gms/internal/ads/din;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .locals 13

    .prologue
    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 108
    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->aV:Lcom/google/android/gms/internal/ads/ect;

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    if-eqz v12, :cond_0

    .line 114
    sget-object v2, Lcom/google/android/gms/internal/ads/cmg;->b:Lcom/google/android/gms/internal/ads/din;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/ads/cmg;->b:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/din;->h()Lcom/google/android/gms/internal/ads/chc;

    move-result-object v2

    move-object v3, v2

    .line 115
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->bg:Lcom/google/android/gms/internal/ads/ect;

    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "be"

    :goto_1
    move-object v8, v2

    .line 118
    :cond_0
    :try_start_0
    sget v2, Lcom/google/android/gms/internal/ads/blk;->f:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 119
    const/16 v5, 0x3ea

    .line 120
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cmg;->c(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/atw$a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/cmg;->t:Z

    move v4, v5

    .line 127
    :goto_2
    if-eqz v12, :cond_1

    if-eqz v3, :cond_1

    .line 128
    const/4 v5, -0x1

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    .line 130
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/chc;->a(IIJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    move-object v4, v2

    .line 144
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 145
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v2, Lcom/google/android/gms/internal/ads/atw$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dcw;->q()I

    move-result v2

    if-nez v2, :cond_c

    .line 146
    :cond_2
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 175
    :cond_3
    :goto_4
    return-object v2

    .line 114
    :cond_4
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_0

    .line 117
    :cond_5
    const-string/jumbo v2, "te"

    goto :goto_1

    .line 122
    :cond_6
    :try_start_3
    sget v2, Lcom/google/android/gms/internal/ads/blk;->e:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 123
    const/16 v5, 0x3f0

    .line 124
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cmg;->b(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/atw$a$a;

    move-result-object v2

    move v4, v5

    goto :goto_2

    .line 125
    :cond_7
    const/16 v5, 0x3e8

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/ads/cmg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/amp$a;)Lcom/google/android/gms/internal/ads/atw$a$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    move v4, v5

    goto :goto_2

    .line 132
    :catch_0
    move-exception v9

    move-object v2, v4

    .line 133
    :goto_5
    if-eqz v12, :cond_9

    if-eqz v3, :cond_9

    .line 134
    const/4 v4, -0x1

    .line 135
    sget v5, Lcom/google/android/gms/internal/ads/blk;->f:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_a

    .line 136
    const/16 v4, 0x3eb

    .line 141
    :cond_8
    :goto_6
    const/4 v5, -0x1

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    .line 143
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/chc;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    move-object v4, v2

    goto :goto_3

    .line 137
    :cond_a
    sget v5, Lcom/google/android/gms/internal/ads/blk;->e:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_b

    .line 138
    const/16 v4, 0x3f1

    goto :goto_6

    .line 139
    :cond_b
    sget v5, Lcom/google/android/gms/internal/ads/blk;->d:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_8

    .line 140
    const/16 v4, 0x3e9

    goto :goto_6

    .line 147
    :cond_c
    :try_start_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v2, Lcom/google/android/gms/internal/ads/atw$a;

    .line 148
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/bml;->a(Lcom/google/android/gms/internal/ads/atw$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    if-eqz v12, :cond_3

    if-eqz v3, :cond_3

    .line 151
    const/4 v4, -0x1

    .line 152
    sget v5, Lcom/google/android/gms/internal/ads/blk;->f:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_f

    .line 153
    const/16 v4, 0x3ee

    .line 158
    :cond_d
    :goto_7
    const/4 v5, -0x1

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    .line 160
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/chc;->a(IIJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 162
    :catch_1
    move-exception v9

    .line 163
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    if-eqz v12, :cond_3

    if-eqz v3, :cond_3

    .line 165
    const/4 v4, -0x1

    .line 166
    sget v5, Lcom/google/android/gms/internal/ads/blk;->f:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_11

    .line 167
    const/16 v4, 0x3ef

    .line 172
    :cond_e
    :goto_8
    const/4 v5, -0x1

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    .line 174
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/chc;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 154
    :cond_f
    :try_start_5
    sget v5, Lcom/google/android/gms/internal/ads/blk;->e:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_10

    .line 155
    const/16 v4, 0x3f2

    goto :goto_7

    .line 156
    :cond_10
    sget v5, Lcom/google/android/gms/internal/ads/blk;->d:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move/from16 v0, p3

    if-ne v0, v5, :cond_d

    .line 157
    const/16 v4, 0x3ec

    goto :goto_7

    .line 168
    :cond_11
    sget v5, Lcom/google/android/gms/internal/ads/blk;->e:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_12

    .line 169
    const/16 v4, 0x3f3

    goto :goto_8

    .line 170
    :cond_12
    sget v5, Lcom/google/android/gms/internal/ads/blk;->d:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_e

    .line 171
    const/16 v4, 0x3ed

    goto :goto_8

    .line 132
    :catch_2
    move-exception v9

    goto/16 :goto_5
.end method

.method private final a()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmg;->i:J

    .line 91
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmg;->e:J

    .line 92
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmg;->f:J

    .line 93
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmg;->g:J

    .line 94
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmg;->h:J

    .line 95
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmg;->j:J

    .line 96
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmg;->k:J

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 99
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 104
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    .line 105
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a([Ljava/lang/StackTraceElement;)J
.end method

.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/amp$a;)Lcom/google/android/gms/internal/ads/atw$a$a;
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dis;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bi:Lcom/google/android/gms/internal/ads/ect;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The caller must not be called from the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    sget v3, Lcom/google/android/gms/internal/ads/blk;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cmg;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 26
    sget v3, Lcom/google/android/gms/internal/ads/blk;->e:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cmg;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/cmg;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 28
    sget v3, Lcom/google/android/gms/internal/ads/blk;->f:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cmg;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(III)V
    .locals 16

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->aT:Lcom/google/android/gms/internal/ads/ect;

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/cmg;->a()V

    .line 85
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cmg;->r:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_2

    .line 86
    const-wide/16 v2, 0x0

    move/from16 v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cmg;->r:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/cmg;->r:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    .line 88
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/cmg;->q:Z

    .line 89
    return-void

    .line 84
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cmg;->t:Z

    if-eqz v2, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmg;->a()V

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cmg;->t:Z

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 35
    packed-switch v2, :pswitch_data_0

    .line 47
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 77
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cmg;->q:Z

    .line 78
    return-void

    .line 36
    :pswitch_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->l:D

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->a:D

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->s:D

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-double v2, v2

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-double v4, v4

    .line 42
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/cmg;->a:D

    sub-double v6, v2, v6

    .line 43
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/cmg;->s:D

    sub-double v8, v4, v8

    .line 44
    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/cmg;->l:D

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v6, v10

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/cmg;->l:D

    .line 45
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->a:D

    .line 46
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/cmg;->s:D

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->d:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cmg;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 52
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->g:J

    add-long/2addr v2, v12

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->g:J

    .line 53
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cmg;->a([Ljava/lang/StackTraceElement;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->i:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    goto :goto_1

    .line 57
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cmg;->m:F

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cmg;->n:F

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cmg;->o:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cmg;->p:F

    .line 61
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->e:J

    add-long/2addr v2, v12

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->e:J

    goto/16 :goto_1

    .line 63
    :pswitch_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->h:J

    add-long/2addr v2, v12

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->h:J

    goto/16 :goto_1

    .line 65
    :pswitch_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->f:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->f:J

    .line 66
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cmg;->b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/dit;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_5

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dit;->d:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dit;->g:Ljava/lang/Long;

    if-eqz v2, :cond_5

    move v2, v1

    .line 69
    :goto_2
    if-eqz v2, :cond_3

    .line 70
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/cmg;->j:J

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dit;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dit;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/cmg;->j:J

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cmg;->r:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dit;->e:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dit;->h:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    .line 73
    :cond_4
    if-eqz v0, :cond_1

    .line 74
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/cmg;->k:J

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/dit;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/dit;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cmg;->k:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_5
    move v2, v0

    .line 68
    goto :goto_2

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 47
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method protected abstract b(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/atw$a$a;
.end method

.method protected abstract b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/dit;
.end method

.method protected abstract c(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/atw$a$a;
.end method
