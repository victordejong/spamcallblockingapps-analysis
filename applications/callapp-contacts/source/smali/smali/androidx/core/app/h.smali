.class final Landroidx/core/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/f;


# instance fields
.field final a:Landroid/app/Notification$Builder;

.field final b:Landroidx/core/app/g$e;

.field c:Landroid/widget/RemoteViews;

.field d:Landroid/widget/RemoteViews;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final f:Landroid/os/Bundle;

.field g:I

.field h:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/g$e;)V
    .locals 11

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h;->e:Ljava/util/List;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    .line 65
    iput-object p1, p0, Landroidx/core/app/h;->b:Landroidx/core/app/g$e;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/g$e;->a:Landroid/content/Context;

    iget-object v3, p1, Landroidx/core/app/g$e;->I:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/g$e;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    .line 71
    :goto_0
    iget-object v0, p1, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    .line 72
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 74
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroidx/core/app/g$e;->h:Landroid/widget/RemoteViews;

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 76
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 77
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 78
    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 79
    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/16 v7, 0x10

    and-int/2addr v3, v7

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 80
    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->d:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->e:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->j:Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 85
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 86
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->g:Landroid/app/PendingIntent;

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 87
    :goto_4
    invoke-virtual {v2, v3, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->i:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/g$e;->k:I

    .line 90
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/g$e;->r:I

    iget v8, p1, Landroidx/core/app/g$e;->s:I

    iget-boolean v9, p1, Landroidx/core/app/g$e;->t:Z

    .line 91
    invoke-virtual {v2, v3, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_5

    .line 93
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v8, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v9, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 95
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v2, v7, :cond_c

    .line 96
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v7, p1, Landroidx/core/app/g$e;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v7, p1, Landroidx/core/app/g$e;->n:Z

    .line 97
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v7, p1, Landroidx/core/app/g$e;->l:I

    .line 98
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 99
    iget-object v2, p1, Landroidx/core/app/g$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/app/g$a;

    .line 100
    invoke-direct {p0, v7}, Landroidx/core/app/h;->a(Landroidx/core/app/g$a;)V

    goto :goto_5

    .line 103
    :cond_6
    iget-object v2, p1, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    .line 104
    iget-object v2, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    iget-object v7, p1, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 106
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v8, :cond_b

    .line 107
    iget-boolean v2, p1, Landroidx/core/app/g$e;->x:Z

    if-eqz v2, :cond_8

    .line 108
    iget-object v2, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    const-string v7, "android.support.localOnly"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    :cond_8
    iget-object v2, p1, Landroidx/core/app/g$e;->u:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 111
    iget-object v2, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    iget-object v7, p1, Landroidx/core/app/g$e;->u:Ljava/lang/String;

    const-string v9, "android.support.groupKey"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v2, p1, Landroidx/core/app/g$e;->v:Z

    if-eqz v2, :cond_9

    .line 113
    iget-object v2, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    const-string v7, "android.support.isGroupSummary"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 115
    :cond_9
    iget-object v2, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    const-string v7, "android.support.useSideChannel"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    :cond_a
    :goto_6
    iget-object v2, p1, Landroidx/core/app/g$e;->w:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 120
    iget-object v2, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    iget-object v7, p1, Landroidx/core/app/g$e;->w:Ljava/lang/String;

    const-string v9, "android.support.sortKey"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_b
    iget-object v2, p1, Landroidx/core/app/g$e;->F:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    .line 125
    iget-object v2, p1, Landroidx/core/app/g$e;->G:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    .line 127
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v2, v7, :cond_d

    .line 128
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-boolean v7, p1, Landroidx/core/app/g$e;->m:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 130
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_d

    .line 131
    iget-object v2, p1, Landroidx/core/app/g$e;->R:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p1, Landroidx/core/app/g$e;->R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 132
    iget-object v2, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    iget-object v7, p1, Landroidx/core/app/g$e;->R:Ljava/util/ArrayList;

    iget-object v9, p1, Landroidx/core/app/g$e;->R:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const-string v9, "android.people"

    .line 132
    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_e

    .line 138
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-boolean v7, p1, Landroidx/core/app/g$e;->x:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Landroidx/core/app/g$e;->u:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v7, p1, Landroidx/core/app/g$e;->v:Z

    .line 140
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Landroidx/core/app/g$e;->w:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 143
    iget v2, p1, Landroidx/core/app/g$e;->M:I

    iput v2, p0, Landroidx/core/app/h;->g:I

    .line 145
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_12

    .line 146
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/g$e;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/g$e;->C:I

    .line 147
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/g$e;->D:I

    .line 148
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->E:Landroid/app/Notification;

    .line 149
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v7, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 150
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 152
    iget-object v2, p1, Landroidx/core/app/g$e;->R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    iget-object v7, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 155
    :cond_f
    iget-object v2, p1, Landroidx/core/app/g$e;->H:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroidx/core/app/h;->h:Landroid/widget/RemoteViews;

    .line 157
    iget-object v2, p1, Landroidx/core/app/g$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 161
    invoke-virtual {p1}, Landroidx/core/app/g$e;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_10

    .line 163
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 165
    :cond_10
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    .line 166
    :goto_8
    iget-object v9, p1, Landroidx/core/app/g$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 168
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Landroidx/core/app/g$e;->c:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/core/app/g$a;

    .line 169
    invoke-static {v10}, Landroidx/core/app/i;->a(Landroidx/core/app/g$a;)Landroid/os/Bundle;

    move-result-object v10

    .line 167
    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_11
    const-string v8, "invisible_actions"

    .line 172
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p1}, Landroidx/core/app/g$e;->a()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 176
    iget-object v7, p0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_15

    .line 181
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/g$e;->q:[Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 183
    iget-object v2, p1, Landroidx/core/app/g$e;->F:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_13

    .line 184
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/g$e;->F:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 186
    :cond_13
    iget-object v2, p1, Landroidx/core/app/g$e;->G:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_14

    .line 187
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/g$e;->G:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 189
    :cond_14
    iget-object v2, p1, Landroidx/core/app/g$e;->H:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_15

    .line 190
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/g$e;->H:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 193
    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    if-lt v2, v1, :cond_17

    .line 194
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget v7, p1, Landroidx/core/app/g$e;->J:I

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v7, p1, Landroidx/core/app/g$e;->K:Ljava/lang/String;

    .line 195
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-wide v7, p1, Landroidx/core/app/g$e;->L:J

    .line 196
    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v7, p1, Landroidx/core/app/g$e;->M:I

    .line 197
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 198
    iget-boolean v2, p1, Landroidx/core/app/g$e;->z:Z

    if-eqz v2, :cond_16

    .line 199
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-boolean v7, p1, Landroidx/core/app/g$e;->y:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 202
    :cond_16
    iget-object v2, p1, Landroidx/core/app/g$e;->I:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 203
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 209
    :cond_17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v2, v7, :cond_1d

    .line 210
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-boolean v7, p1, Landroidx/core/app/g$e;->N:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 213
    iget-object v2, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v7, p1, Landroidx/core/app/g$e;->O:Landroidx/core/app/g$d;

    if-nez v7, :cond_18

    move-object v5, v3

    goto :goto_a

    .line 6516
    :cond_18
    new-instance v8, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v8}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    .line 7489
    iget v9, v7, Landroidx/core/app/g$d;->f:I

    and-int/2addr v9, v6

    if-eqz v9, :cond_19

    const/4 v9, 0x1

    goto :goto_9

    :cond_19
    const/4 v9, 0x0

    .line 6518
    :goto_9
    invoke-virtual {v8, v9}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v8

    .line 8452
    iget-object v9, v7, Landroidx/core/app/g$d;->b:Landroid/app/PendingIntent;

    .line 6519
    invoke-virtual {v8, v9}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v8

    .line 8460
    iget-object v9, v7, Landroidx/core/app/g$d;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 8505
    invoke-virtual {v9}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/graphics/drawable/Icon;

    move-result-object v9

    .line 6520
    invoke-virtual {v8, v9}, Landroid/app/Notification$BubbleMetadata$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v8

    .line 9444
    iget-object v9, v7, Landroidx/core/app/g$d;->a:Landroid/app/PendingIntent;

    .line 6521
    invoke-virtual {v8, v9}, Landroid/app/Notification$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v8

    .line 9498
    iget v9, v7, Landroidx/core/app/g$d;->f:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_1a

    const/4 v5, 0x1

    .line 6522
    :cond_1a
    invoke-virtual {v8, v5}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v5

    .line 10470
    iget v8, v7, Landroidx/core/app/g$d;->d:I

    if-eqz v8, :cond_1b

    .line 11470
    iget v8, v7, Landroidx/core/app/g$d;->d:I

    .line 6526
    invoke-virtual {v5, v8}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 11480
    :cond_1b
    iget v8, v7, Landroidx/core/app/g$d;->e:I

    if-eqz v8, :cond_1c

    .line 12480
    iget v7, v7, Landroidx/core/app/g$d;->e:I

    .line 6530
    invoke-virtual {v5, v7}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 6534
    :cond_1c
    invoke-virtual {v5}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object v5

    .line 213
    :goto_a
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 217
    :cond_1d
    iget-boolean p1, p1, Landroidx/core/app/g$e;->Q:Z

    if-eqz p1, :cond_20

    .line 218
    iget-object p1, p0, Landroidx/core/app/h;->b:Landroidx/core/app/g$e;

    iget-boolean p1, p1, Landroidx/core/app/g$e;->v:Z

    if-eqz p1, :cond_1e

    .line 219
    iput v4, p0, Landroidx/core/app/h;->g:I

    goto :goto_b

    .line 221
    :cond_1e
    iput v6, p0, Landroidx/core/app/h;->g:I

    .line 224
    :goto_b
    iget-object p1, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 225
    iget-object p1, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 226
    iget p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x2

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 227
    iget p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x3

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 228
    iget-object p1, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 230
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_20

    .line 231
    iget-object p1, p0, Landroidx/core/app/h;->b:Landroidx/core/app/g$e;

    iget-object p1, p1, Landroidx/core/app/g$e;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 232
    iget-object p1, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    const-string v0, "silent"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 234
    :cond_1f
    iget-object p1, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget v0, p0, Landroidx/core/app/h;->g:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    :cond_20
    return-void
.end method

.method static a(Landroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 463
    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 464
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 465
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private a(Landroidx/core/app/g$a;)V
    .locals 5

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    .line 286
    invoke-virtual {p1}, Landroidx/core/app/g$a;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 287
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 288
    new-instance v1, Landroid/app/Notification$Action$Builder;

    if-eqz v0, :cond_0

    .line 12505
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13368
    :goto_0
    iget-object v2, p1, Landroidx/core/app/g$a;->i:Ljava/lang/CharSequence;

    .line 13372
    iget-object v4, p1, Landroidx/core/app/g$a;->j:Landroid/app/PendingIntent;

    .line 291
    invoke-direct {v1, v0, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 293
    :cond_1
    new-instance v1, Landroid/app/Notification$Action$Builder;

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 14368
    :goto_1
    iget-object v2, p1, Landroidx/core/app/g$a;->i:Ljava/lang/CharSequence;

    .line 14372
    iget-object v4, p1, Landroidx/core/app/g$a;->j:Landroid/app/PendingIntent;

    .line 296
    invoke-direct {v1, v0, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 14396
    :goto_2
    iget-object v0, p1, Landroidx/core/app/g$a;->b:[Landroidx/core/app/l;

    if-eqz v0, :cond_3

    .line 15396
    iget-object v0, p1, Landroidx/core/app/g$a;->b:[Landroidx/core/app/l;

    .line 299
    invoke-static {v0}, Landroidx/core/app/l;->a([Landroidx/core/app/l;)[Landroid/app/RemoteInput;

    move-result-object v0

    array-length v2, v0

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 301
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 16379
    :cond_3
    iget-object v0, p1, Landroidx/core/app/g$a;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 306
    new-instance v0, Landroid/os/Bundle;

    .line 17379
    iget-object v2, p1, Landroidx/core/app/g$a;->a:Landroid/os/Bundle;

    .line 306
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_4

    .line 308
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17387
    :goto_4
    iget-boolean v2, p1, Landroidx/core/app/g$a;->d:Z

    const-string v3, "android.support.allowGeneratedReplies"

    .line 310
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_5

    .line 18387
    iget-boolean v2, p1, Landroidx/core/app/g$a;->d:Z

    .line 313
    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 18407
    :cond_5
    iget v2, p1, Landroidx/core/app/g$a;->f:I

    const-string v3, "android.support.action.semanticAction"

    .line 316
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_6

    .line 19407
    iget v2, p1, Landroidx/core/app/g$a;->f:I

    .line 319
    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 322
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_7

    .line 19416
    iget-boolean v2, p1, Landroidx/core/app/g$a;->g:Z

    .line 323
    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 19438
    :cond_7
    iget-boolean p1, p1, Landroidx/core/app/g$a;->e:Z

    const-string v2, "android.support.action.showsUserInterface"

    .line 326
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 329
    iget-object p1, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void

    .line 330
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 331
    iget-object v0, p0, Landroidx/core/app/h;->e:Ljava/util/List;

    iget-object v1, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    .line 332
    invoke-static {v1, p1}, Landroidx/core/app/i;->a(Landroid/app/Notification$Builder;Landroidx/core/app/g$a;)Landroid/os/Bundle;

    move-result-object p1

    .line 331
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification$Builder;
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method
