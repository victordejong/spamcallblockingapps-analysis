.class final Lorg/mistergroup/shouldianswer/services/incall/c$d$2;
.super Lkotlin/c/b/a/k;
.source "MyInCallPresenter.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/incall/c$d;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "MyInCallPresenter.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$updateNotification$1$3"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/services/incall/c$d;

.field final synthetic c:Lkotlin/e/b/m$c;

.field final synthetic d:Lkotlin/e/b/m$c;

.field final synthetic e:Lkotlin/e/b/m$c;

.field final synthetic f:Landroid/graphics/Bitmap;

.field final synthetic g:Landroid/app/PendingIntent;

.field final synthetic h:Landroid/app/PendingIntent;

.field final synthetic i:Landroid/app/PendingIntent;

.field final synthetic j:Landroidx/core/app/h$g;

.field final synthetic k:Landroid/app/PendingIntent;

.field final synthetic l:Ljava/lang/Integer;

.field final synthetic m:Landroidx/core/app/h$a;

.field final synthetic n:Landroidx/core/app/h$a;

.field final synthetic o:Landroidx/core/app/h$a;

.field private p:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/services/incall/c$d;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/app/h$g;Landroid/app/PendingIntent;Ljava/lang/Integer;Landroidx/core/app/h$a;Landroidx/core/app/h$a;Landroidx/core/app/h$a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->b:Lorg/mistergroup/shouldianswer/services/incall/c$d;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->c:Lkotlin/e/b/m$c;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->d:Lkotlin/e/b/m$c;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->e:Lkotlin/e/b/m$c;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->f:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->g:Landroid/app/PendingIntent;

    iput-object p7, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->h:Landroid/app/PendingIntent;

    iput-object p8, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->i:Landroid/app/PendingIntent;

    iput-object p9, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->j:Landroidx/core/app/h$g;

    iput-object p10, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->k:Landroid/app/PendingIntent;

    iput-object p11, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->l:Ljava/lang/Integer;

    iput-object p12, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->m:Landroidx/core/app/h$a;

    iput-object p13, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->n:Landroidx/core/app/h$a;

    iput-object p14, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->o:Landroidx/core/app/h$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p15}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "completion"

    move-object/from16 v15, p2

    invoke-static {v15, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;

    iget-object v3, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->b:Lorg/mistergroup/shouldianswer/services/incall/c$d;

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->c:Lkotlin/e/b/m$c;

    iget-object v5, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->d:Lkotlin/e/b/m$c;

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->e:Lkotlin/e/b/m$c;

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->f:Landroid/graphics/Bitmap;

    iget-object v8, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->g:Landroid/app/PendingIntent;

    iget-object v9, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->h:Landroid/app/PendingIntent;

    iget-object v10, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->i:Landroid/app/PendingIntent;

    iget-object v11, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->j:Landroidx/core/app/h$g;

    iget-object v12, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->k:Landroid/app/PendingIntent;

    iget-object v13, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->l:Ljava/lang/Integer;

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->m:Landroidx/core/app/h$a;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->n:Landroidx/core/app/h$a;

    iget-object v15, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->o:Landroidx/core/app/h$a;

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p2

    invoke-direct/range {v2 .. v17}, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;-><init>(Lorg/mistergroup/shouldianswer/services/incall/c$d;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/app/h$g;Landroid/app/PendingIntent;Ljava/lang/Integer;Landroidx/core/app/h$a;Landroidx/core/app/h$a;Landroidx/core/app/h$a;Lkotlin/c/c;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlinx/coroutines/ad;

    iput-object v2, v1, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->p:Lkotlinx/coroutines/ad;

    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 177
    iget v1, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->a:I

    if-nez v1, :cond_c

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->p:Lkotlinx/coroutines/ad;

    .line 178
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->b:Lorg/mistergroup/shouldianswer/services/incall/c$d;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/MyApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d003e

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f0a028a

    .line 179
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->c:Lkotlin/e/b/m$c;

    iget-object v3, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a0283

    .line 180
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->d:Lkotlin/e/b/m$c;

    iget-object v3, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a0288

    .line 181
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->e:Lkotlin/e/b/m$c;

    iget-object v3, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a016b

    .line 182
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 183
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->g:Landroid/app/PendingIntent;

    const v8, 0x7f0a0054

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 184
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->h:Landroid/app/PendingIntent;

    const v9, 0x7f0a00af

    invoke-virtual {v1, v9, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 185
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->i:Landroid/app/PendingIntent;

    const v10, 0x7f0a008c

    invoke-virtual {v1, v10, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v2, 0x7f0a023f

    const/16 v11, 0x8

    .line 186
    invoke-virtual {v1, v2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a0240

    .line 187
    invoke-virtual {v1, v3, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 188
    sget-object v4, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/services/incall/c;->i(Lorg/mistergroup/shouldianswer/services/incall/c;)Z

    move-result v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/services/incall/c;->a()Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-nez v4, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v13

    .line 189
    :goto_0
    new-instance v5, Landroidx/core/app/h$d;

    .line 190
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->b:Lorg/mistergroup/shouldianswer/services/incall/c$d;

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v6, Landroid/content/Context;

    .line 191
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/m;->e()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/m;->d()Ljava/lang/String;

    move-result-object v7

    .line 189
    :goto_1
    invoke-direct {v5, v6, v7}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x7f080106

    .line 193
    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object v5

    .line 194
    invoke-virtual {v5, v1}, Landroidx/core/app/h$d;->a(Landroid/widget/RemoteViews;)Landroidx/core/app/h$d;

    move-result-object v5

    .line 195
    invoke-virtual {v5, v1}, Landroidx/core/app/h$d;->b(Landroid/widget/RemoteViews;)Landroidx/core/app/h$d;

    move-result-object v5

    .line 196
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;

    move-result-object v5

    .line 197
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->c:Lkotlin/e/b/m$c;

    iget-object v6, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v5

    .line 198
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->e:Lkotlin/e/b/m$c;

    iget-object v6, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v5

    .line 199
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->d:Lkotlin/e/b/m$c;

    iget-object v6, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->c(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v5

    const-string v6, "call"

    .line 203
    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->a(Ljava/lang/String;)Landroidx/core/app/h$d;

    move-result-object v5

    .line 204
    invoke-virtual {v5, v13}, Landroidx/core/app/h$d;->b(Z)Landroidx/core/app/h$d;

    move-result-object v5

    .line 205
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->j:Landroidx/core/app/h$g;

    check-cast v6, Landroidx/core/app/h$e;

    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$e;)Landroidx/core/app/h$d;

    move-result-object v5

    .line 206
    invoke-virtual {v5, v4}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object v5

    .line 207
    invoke-virtual {v5, v12}, Landroidx/core/app/h$d;->a(Z)Landroidx/core/app/h$d;

    move-result-object v5

    .line 208
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->k:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    move-result-object v14

    if-eqz v4, :cond_2

    .line 210
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->k:Landroid/app/PendingIntent;

    invoke-virtual {v14, v4, v12}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;Z)Landroidx/core/app/h$d;

    :cond_2
    new-array v4, v13, [J

    .line 213
    invoke-virtual {v14, v4}, Landroidx/core/app/h$d;->a([J)Landroidx/core/app/h$d;

    .line 215
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->l:Ljava/lang/Integer;

    const/4 v15, 0x4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v15, :cond_5

    .line 216
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->b:Lorg/mistergroup/shouldianswer/services/incall/c$d;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/services/incall/c$d;->u:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    const-string v5, "callInfo.call!!.details"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v4

    .line 217
    invoke-virtual {v14, v4, v5}, Landroidx/core/app/h$d;->a(J)Landroidx/core/app/h$d;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroidx/core/app/h$d;->b(Z)Landroidx/core/app/h$d;

    .line 218
    invoke-virtual {v1, v3, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 219
    invoke-virtual {v1, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a023f

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v6, v6, v16

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v1

    .line 220
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 228
    :cond_5
    :goto_2
    invoke-virtual {v1, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 229
    invoke-virtual {v1, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 230
    invoke-virtual {v1, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 231
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->b:Lorg/mistergroup/shouldianswer/services/incall/c$d;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->u:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/services/incall/a;->g()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_6

    goto :goto_3

    .line 232
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 233
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->m:Landroidx/core/app/h$a;

    invoke-virtual {v14, v2}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$a;)Landroidx/core/app/h$d;

    .line 234
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->n:Landroidx/core/app/h$a;

    invoke-virtual {v14, v2}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$a;)Landroidx/core/app/h$d;

    .line 235
    invoke-virtual {v1, v8, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 236
    invoke-virtual {v1, v9, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 237
    invoke-virtual {v1, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6

    :cond_7
    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    .line 239
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v15, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_b

    .line 240
    :goto_5
    invoke-virtual {v1, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 241
    invoke-virtual {v1, v9, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 242
    invoke-virtual {v1, v10, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 243
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;->o:Landroidx/core/app/h$a;

    invoke-virtual {v14, v1}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$a;)Landroidx/core/app/h$d;

    .line 246
    :cond_b
    :goto_6
    invoke-virtual {v14}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object v1

    .line 247
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 248
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x0

    const-string v5, "MyInCallPresenter.updateNotification notificationManager.notify"

    invoke-static {v2, v5, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 249
    sget-object v2, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/services/incall/c;->m(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/app/NotificationManager;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/services/incall/c;->n(Lorg/mistergroup/shouldianswer/services/incall/c;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 250
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1, v13}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;Z)V

    .line 251
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;

    return-object v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
