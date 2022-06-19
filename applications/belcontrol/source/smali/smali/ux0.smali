.class public Lux0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le61;
.implements Lj71$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:I

.field public c:Lg61$c;

.field public d:I

.field public f:Ljava/lang/String;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/String;

.field public j:Landroid/telecom/CallAudioState;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg61$c;->g:Lg61$c;

    iput-object v0, p0, Lux0;->c:Lg61$c;

    const/4 v0, 0x0

    iput v0, p0, Lux0;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lux0;->f:Ljava/lang/String;

    iput-object p1, p0, Lux0;->a:Landroid/content/Context;

    const/16 p1, 0xa

    iput p1, p0, Lux0;->b:I

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj71;->a(Lj71$a;)V

    return-void
.end method

.method public static k()V
    .locals 1

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0}, Lf61;->t()V

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Notification$Builder;)V
    .locals 5

    iget-object v0, p0, Lux0;->a:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v0, v1}, Lux0;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lux0;->a:Landroid/content/Context;

    const v3, 0x7f0800cc

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f11053a

    const v4, 0x7f060287

    invoke-virtual {p0, v3, v4}, Lux0;->q(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public final b(Landroid/app/Notification$Builder;)V
    .locals 5

    iget-object v0, p0, Lux0;->a:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-static {v0, v1}, Lux0;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lux0;->a:Landroid/content/Context;

    const v3, 0x7f0801da

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f11053b

    const v4, 0x7f060289

    invoke-virtual {p0, v3, v4}, Lux0;->q(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public final c(Landroid/app/Notification$Builder;)V
    .locals 5

    iget-object v0, p0, Lux0;->a:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    invoke-static {v0, v1}, Lux0;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lux0;->a:Landroid/content/Context;

    const v3, 0x7f0800cd

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lux0;->a:Landroid/content/Context;

    const v4, 0x7f11053c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public d(Landroid/telecom/CallAudioState;)V
    .locals 0

    invoke-virtual {p0}, Lux0;->x()V

    return-void
.end method

.method public final e(Landroid/app/Notification$Builder;Landroid/telecom/CallAudioState;)V
    .locals 2

    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lux0;->f(Landroid/app/Notification$Builder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p2

    and-int/lit8 p2, p2, 0x5

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lux0;->g(Landroid/app/Notification$Builder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroid/app/Notification$Builder;)V
    .locals 5

    iget-object v0, p0, Lux0;->a:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_TURN_OFF_SPEAKER"

    invoke-static {v0, v1}, Lux0;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lux0;->a:Landroid/content/Context;

    const v3, 0x7f080451

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lux0;->a:Landroid/content/Context;

    const v4, 0x7f11053d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public final g(Landroid/app/Notification$Builder;)V
    .locals 5

    iget-object v0, p0, Lux0;->a:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_TURN_ON_SPEAKER"

    invoke-static {v0, v1}, Lux0;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lux0;->a:Landroid/content/Context;

    const v3, 0x7f080452

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lux0;->a:Landroid/content/Context;

    const v4, 0x7f11053e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public final h(Lg61;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Lg61;->b:Lg61$c;

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object v0

    invoke-virtual {v0}, Lj71;->c()Landroid/telecom/CallAudioState;

    move-result-object v11

    invoke-virtual/range {p0 .. p1}, Lux0;->u(Lg61;)I

    move-result v12

    iget-object v0, v9, Lg61;->k:Lq81;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v8, Lux0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v9, Lg61;->k:Lq81;

    invoke-virtual {v1}, Lq81;->b0()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Loe1;->s(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v13, v0

    invoke-virtual/range {p0 .. p1}, Lux0;->s(Lg61;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lux0;->t(Lg61;)Ljava/lang/String;

    move-result-object v15

    sget-object v0, Lg61$c;->c:Lg61$c;

    const/16 v7, 0x1f

    const/16 v6, 0xb

    const/16 v5, 0x15

    const/4 v4, 0x1

    if-ne v10, v0, :cond_3

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0}, Lf61;->g()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    goto :goto_2

    :cond_2
    const/16 v0, 0x15

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_3
    const/16 v3, 0xb

    :goto_3
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v16, v3

    move-object v3, v13

    move-object/from16 v17, v13

    const/4 v13, 0x1

    move-object v4, v15

    const/16 v13, 0x15

    move-object v5, v10

    const/16 v13, 0xb

    move/from16 v6, v16

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lux0;->j(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lg61$c;ILandroid/telecom/CallAudioState;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, v8, Lux0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v8, Lux0;->a:Landroid/content/Context;

    const v3, 0x7f060038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p1}, Lux0;->s(Lg61;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v9, v10, v0}, Lux0;->w(Lg61;Lg61$c;Landroid/app/Notification$Builder;)V

    invoke-virtual/range {p0 .. p0}, Lux0;->v()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Lux0;->n()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v2, "phone_ongoing_call"

    const/16 v4, 0x1a

    move/from16 v6, v16

    if-eq v6, v13, :cond_8

    const/16 v5, 0x15

    if-eq v6, v5, :cond_6

    const/16 v0, 0x1f

    if-eq v6, v0, :cond_5

    goto :goto_5

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_9

    goto :goto_4

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    const-string v0, "phone_incoming_call"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lux0;->n()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lux0;->l(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;)V

    const-string v0, "call"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget v0, v8, Lux0;->b:I

    const/16 v2, 0x15

    if-eq v0, v2, :cond_9

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0}, Lf61;->t()V

    goto :goto_5

    :cond_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_9

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    :goto_4
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_9
    :goto_5
    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v0, v8, Lux0;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v9, v10, v11, v1}, Lux0;->m(Lg61;Lg61$c;Landroid/telecom/CallAudioState;Landroid/app/Notification$Builder;)V

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lf61;->s(ILandroid/app/Notification;)V

    iput v6, v8, Lux0;->b:I

    return-void
.end method

.method public final i()V
    .locals 2

    iget v0, p0, Lux0;->b:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0}, Lf61;->t()V

    iput v1, p0, Lux0;->b:I

    :cond_0
    return-void
.end method

.method public final j(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lg61$c;ILandroid/telecom/CallAudioState;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    iget-object v2, p0, Lux0;->h:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p4, :cond_2

    iget-object v2, p0, Lux0;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lux0;->g:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    if-eqz p3, :cond_4

    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_3

    invoke-virtual {v3, p3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :goto_2
    iget v4, p0, Lux0;->d:I

    if-ne v4, p1, :cond_6

    iget-object v4, p0, Lux0;->f:Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lux0;->c:Lg61$c;

    if-ne v4, p5, :cond_6

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    iget-object v2, p0, Lux0;->j:Landroid/telecom/CallAudioState;

    invoke-static {v2, p7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget v2, p0, Lux0;->b:I

    const-string v3, "StatusBarNotifier.checkForChangeAndSaveData"

    if-eq v2, p6, :cond_8

    const/16 p6, 0xa

    if-ne v2, p6, :cond_9

    const-string p6, "showing notification for first time."

    invoke-static {v3, p6}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v1, v0

    :cond_9
    :goto_3
    iput p1, p0, Lux0;->d:I

    iput-object p2, p0, Lux0;->f:Ljava/lang/String;

    iput-object p5, p0, Lux0;->c:Lg61$c;

    iput-object p3, p0, Lux0;->g:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lux0;->h:Ljava/lang/String;

    iput-object p7, p0, Lux0;->j:Landroid/telecom/CallAudioState;

    if-eqz v1, :cond_a

    const-string p1, "data changed.  Showing notification"

    invoke-static {v3, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    return v1
.end method

.method public final l(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method public final m(Lg61;Lg61$c;Landroid/telecom/CallAudioState;Landroid/app/Notification$Builder;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lux0;->w(Lg61;Lg61$c;Landroid/app/Notification$Builder;)V

    sget-object p1, Lg61$c;->d:Lg61$c;

    if-eq p2, p1, :cond_1

    sget-object p1, Lg61$c;->h:Lg61$c;

    if-eq p2, p1, :cond_1

    sget-object p1, Lg61$c;->b:Lg61$c;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lg61$c;->c:Lg61$c;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0, p4}, Lux0;->b(Landroid/app/Notification$Builder;)V

    invoke-virtual {p0, p4}, Lux0;->a(Landroid/app/Notification$Builder;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p4}, Lux0;->c(Landroid/app/Notification$Builder;)V

    invoke-virtual {p0, p4, p3}, Lux0;->e(Landroid/app/Notification$Builder;Landroid/telecom/CallAudioState;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final n()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lux0;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->D(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lux0;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public o(Lg61;)V
    .locals 0

    invoke-virtual {p0}, Lux0;->x()V

    return-void
.end method

.method public final q(II)Landroid/text/Spannable;
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lux0;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lux0;->a:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p2

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method public final r()Lg61;
    .locals 4

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    iget-object v1, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lf61;->g()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg61;

    iget-object v2, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget-object v2, v1, Lg61;->b:Lg61$c;

    sget-object v3, Lg61$c;->h:Lg61$c;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lf61;->i(Lg61;)Lg61;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final s(Lg61;)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p1, Lg61;->b:Lg61$c;

    sget-object v1, Lg61$c;->c:Lg61$c;

    const-string v2, ""

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lg61;->f:Ln91$b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->p:Ln91$a;

    if-ne v1, v3, :cond_0

    iget-object v0, v0, Ln91$b;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {}, Lr71;->n()Landroid/util/SparseArray;

    move-result-object v0

    iget-object p1, p1, Lg61;->f:Ln91$b;

    iget-object p1, p1, Ln91$b;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li71;

    if-eqz p1, :cond_0

    iget-object p1, p1, Li71;->a:Ljava/lang/String;

    move-object v2, p1

    :cond_0
    const p1, 0x7f110545

    goto :goto_0

    :cond_1
    sget-object p1, Lg61$c;->h:Lg61$c;

    if-ne v0, p1, :cond_2

    const p1, 0x7f110546

    goto :goto_0

    :cond_2
    sget-object p1, Lg61$c;->b:Lg61$c;

    if-ne v0, p1, :cond_3

    const p1, 0x7f110544

    goto :goto_0

    :cond_3
    const p1, 0x7f110547

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lux0;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public t(Lg61;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lg61;->k:Lq81;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq81;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lg61;->j:Lx81;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lx81;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lg61;->g:Li91;

    invoke-virtual {p1}, Li91;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public u(Lg61;)I
    .locals 1

    iget-object p1, p1, Lg61;->b:Lg61$c;

    sget-object v0, Lg61$c;->h:Lg61$c;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0800cb

    return p1

    :cond_0
    const p1, 0x7f08041e

    return p1
.end method

.method public final v()Landroid/app/Notification$Builder;
    .locals 2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lux0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public final w(Lg61;Lg61$c;Landroid/app/Notification$Builder;)V
    .locals 1

    sget-object v0, Lg61$c;->d:Lg61$c;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    iget-wide p1, p1, Lg61;->m:J

    invoke-virtual {p3, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    invoke-virtual {p0}, Lux0;->r()Lg61;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lux0;->h(Lg61;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lux0;->i()V

    :goto_0
    return-void
.end method
