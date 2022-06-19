.class Landroidx/core/app/i;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroidx/core/app/g;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroidx/core/app/h$c;

.field private c:Landroid/widget/RemoteViews;

.field private d:Landroid/widget/RemoteViews;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Bundle;

.field private g:I

.field private h:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/h$c;)V
    .locals 10

    .prologue
    const/16 v9, 0x1a

    const/16 v8, 0x14

    const/16 v7, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    .line 63
    iput-object p1, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$c;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_1

    .line 65
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/h$c;->a:Landroid/content/Context;

    iget-object v4, p1, Landroidx/core/app/h$c;->I:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    .line 69
    :goto_0
    iget-object v3, p1, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    .line 70
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->icon:I

    iget v5, v3, Landroid/app/Notification;->iconLevel:I

    .line 71
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroidx/core/app/h$c;->h:Landroid/widget/RemoteViews;

    .line 73
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->vibrate:[J

    .line 74
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->ledARGB:I

    iget v5, v3, Landroid/app/Notification;->ledOnMS:I

    iget v6, v3, Landroid/app/Notification;->ledOffMS:I

    .line 75
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    .line 76
    :goto_1
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    .line 77
    :goto_2
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    .line 78
    :goto_3
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->defaults:I

    .line 79
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/core/app/h$c;->d:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/core/app/h$c;->e:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/core/app/h$c;->j:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/core/app/h$c;->f:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Landroidx/core/app/h$c;->g:Landroid/app/PendingIntent;

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    .line 85
    :goto_4
    invoke-virtual {v4, v5, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/core/app/h$c;->i:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroidx/core/app/h$c;->k:I

    .line 88
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroidx/core/app/h$c;->r:I

    iget v5, p1, Landroidx/core/app/h$c;->s:I

    iget-boolean v6, p1, Landroidx/core/app/h$c;->t:Z

    .line 89
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_0

    .line 91
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v5, v3, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 93
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_b

    .line 94
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroidx/core/app/h$c;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v4, p1, Landroidx/core/app/h$c;->n:Z

    .line 95
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroidx/core/app/h$c;->l:I

    .line 96
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 98
    iget-object v0, p1, Landroidx/core/app/h$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/h$a;

    .line 99
    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroidx/core/app/h$a;)V

    goto :goto_5

    .line 67
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/h$c;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 75
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 76
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 77
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 84
    goto :goto_4

    .line 102
    :cond_6
    iget-object v0, p1, Landroidx/core/app/h$c;->B:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    iget-object v4, p1, Landroidx/core/app/h$c;->B:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 105
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_a

    .line 106
    iget-boolean v0, p1, Landroidx/core/app/h$c;->x:Z

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "android.support.localOnly"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    :cond_8
    iget-object v0, p1, Landroidx/core/app/h$c;->u:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "android.support.groupKey"

    iget-object v5, p1, Landroidx/core/app/h$c;->u:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p1, Landroidx/core/app/h$c;->v:Z

    if-eqz v0, :cond_e

    .line 112
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "android.support.isGroupSummary"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    :cond_9
    :goto_6
    iget-object v0, p1, Landroidx/core/app/h$c;->w:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 119
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "android.support.sortKey"

    iget-object v4, p1, Landroidx/core/app/h$c;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_a
    iget-object v0, p1, Landroidx/core/app/h$c;->F:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    .line 124
    iget-object v0, p1, Landroidx/core/app/h$c;->G:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    .line 126
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    .line 127
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$c;->m:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_c

    .line 130
    iget-object v0, p1, Landroidx/core/app/h$c;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroidx/core/app/h$c;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 131
    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "android.people"

    iget-object v0, p1, Landroidx/core/app/h$c;->O:Ljava/util/ArrayList;

    iget-object v5, p1, Landroidx/core/app/h$c;->O:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_d

    .line 137
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$c;->x:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/app/h$c;->u:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroidx/core/app/h$c;->v:Z

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/app/h$c;->w:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 142
    iget v0, p1, Landroidx/core/app/h$c;->M:I

    iput v0, p0, Landroidx/core/app/i;->g:I

    .line 144
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_11

    .line 145
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$c;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/core/app/h$c;->C:I

    .line 146
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/core/app/h$c;->D:I

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/app/h$c;->E:Landroid/app/Notification;

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 149
    invoke-virtual {v0, v1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 151
    iget-object v0, p1, Landroidx/core/app/h$c;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    iget-object v3, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 114
    :cond_e
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "android.support.useSideChannel"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 154
    :cond_f
    iget-object v0, p1, Landroidx/core/app/h$c;->H:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/i;->h:Landroid/widget/RemoteViews;

    .line 156
    iget-object v0, p1, Landroidx/core/app/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 160
    invoke-virtual {p1}, Landroidx/core/app/h$c;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.car.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 161
    if-nez v0, :cond_17

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 164
    :goto_8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move v3, v2

    .line 165
    :goto_9
    iget-object v0, p1, Landroidx/core/app/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_10

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Landroidx/core/app/h$c;->c:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/h$a;

    .line 168
    invoke-static {v0}, Landroidx/core/app/j;->a(Landroidx/core/app/h$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    .line 171
    :cond_10
    const-string/jumbo v0, "invisible_actions"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p1}, Landroidx/core/app/h$c;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "android.car.EXTENSIONS"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v3, "android.car.EXTENSIONS"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    .line 180
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$c;->B:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/app/h$c;->q:[Ljava/lang/CharSequence;

    .line 181
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 182
    iget-object v0, p1, Landroidx/core/app/h$c;->F:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_12

    .line 183
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$c;->F:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 185
    :cond_12
    iget-object v0, p1, Landroidx/core/app/h$c;->G:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    .line 186
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$c;->G:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 188
    :cond_13
    iget-object v0, p1, Landroidx/core/app/h$c;->H:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_14

    .line 189
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/h$c;->H:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 192
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_16

    .line 193
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/h$c;->J:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/app/h$c;->K:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v4, p1, Landroidx/core/app/h$c;->L:J

    .line 195
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/core/app/h$c;->M:I

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 197
    iget-boolean v0, p1, Landroidx/core/app/h$c;->z:Z

    if-eqz v0, :cond_15

    .line 198
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$c;->y:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 201
    :cond_15
    iget-object v0, p1, Landroidx/core/app/h$c;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 202
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2, v2, v2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 208
    :cond_16
    return-void

    :cond_17
    move-object v1, v0

    goto/16 :goto_8
.end method

.method private a(Landroid/app/Notification;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 419
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 420
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 421
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 422
    return-void
.end method

.method private a(Landroidx/core/app/h$a;)V
    .locals 5

    .prologue
    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5

    .line 256
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 257
    invoke-virtual {p1}, Landroidx/core/app/h$a;->a()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/app/h$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/core/app/h$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 258
    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/k;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroidx/core/app/k;->a([Landroidx/core/app/k;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 261
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 270
    :goto_1
    const-string/jumbo v2, "android.support.allowGeneratedReplies"

    .line 271
    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()Z

    move-result v3

    .line 270
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 273
    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 276
    :cond_1
    const-string/jumbo v2, "android.support.action.semanticAction"

    .line 277
    invoke-virtual {p1}, Landroidx/core/app/h$a;->g()I

    move-result v3

    .line 276
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    .line 279
    invoke-virtual {p1}, Landroidx/core/app/h$a;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 282
    :cond_2
    const-string/jumbo v2, "android.support.action.showsUserInterface"

    .line 283
    invoke-virtual {p1}, Landroidx/core/app/h$a;->i()Z

    move-result v3

    .line 282
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 285
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 290
    :cond_3
    :goto_2
    return-void

    .line 268
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    .line 286
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 287
    iget-object v0, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    iget-object v1, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    .line 288
    invoke-static {v1, p1}, Landroidx/core/app/j;->a(Landroid/app/Notification$Builder;Landroidx/core/app/h$a;)Landroid/os/Bundle;

    move-result-object v1

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public b()Landroid/app/Notification;
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 216
    iget-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$c;

    iget-object v1, v0, Landroidx/core/app/h$c;->o:Landroidx/core/app/h$d;

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1, p0}, Landroidx/core/app/h$d;->a(Landroidx/core/app/g;)V

    .line 221
    :cond_0
    if-eqz v1, :cond_5

    .line 222
    invoke-virtual {v1, p0}, Landroidx/core/app/h$d;->b(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 224
    :goto_0
    invoke-virtual {p0}, Landroidx/core/app/i;->c()Landroid/app/Notification;

    move-result-object v2

    .line 225
    if-eqz v0, :cond_6

    .line 226
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 230
    :cond_1
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v1, p0}, Landroidx/core/app/h$d;->c(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_2

    .line 233
    iput-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 236
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    if-eqz v1, :cond_3

    .line 237
    iget-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$c;

    iget-object v0, v0, Landroidx/core/app/h$c;->o:Landroidx/core/app/h$d;

    .line 238
    invoke-virtual {v0, p0}, Landroidx/core/app/h$d;->d(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    iput-object v0, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 244
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    if-eqz v1, :cond_4

    .line 245
    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {v1, v0}, Landroidx/core/app/h$d;->a(Landroid/os/Bundle;)V

    .line 251
    :cond_4
    return-object v2

    .line 222
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_6
    iget-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$c;

    iget-object v0, v0, Landroidx/core/app/h$c;->F:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$c;

    iget-object v0, v0, Landroidx/core/app/h$c;->F:Landroid/widget/RemoteViews;

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method

.method protected c()Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 296
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 298
    iget v1, p0, Landroidx/core/app/i;->g:I

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v3, :cond_2

    .line 303
    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    .line 306
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v2, :cond_0

    .line 309
    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    goto :goto_0

    .line 314
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    .line 315
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 316
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 317
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_4

    .line 318
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 320
    :cond_4
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    .line 321
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 323
    :cond_5
    iget-object v1, p0, Landroidx/core/app/i;->h:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    .line 324
    iget-object v1, p0, Landroidx/core/app/i;->h:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 327
    :cond_6
    iget v1, p0, Landroidx/core/app/i;->g:I

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v3, :cond_7

    .line 332
    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    .line 335
    :cond_7
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v2, :cond_0

    .line 338
    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    goto/16 :goto_0

    .line 342
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_c

    .line 343
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 344
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 345
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_9

    .line 346
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 348
    :cond_9
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    .line 349
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 352
    :cond_a
    iget v1, p0, Landroidx/core/app/i;->g:I

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v3, :cond_b

    .line 357
    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    .line 360
    :cond_b
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v2, :cond_0

    .line 363
    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    goto/16 :goto_0

    .line 368
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 369
    iget-object v0, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    .line 370
    invoke-static {v0}, Landroidx/core/app/j;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_d

    .line 373
    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.actionExtras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 376
    :cond_d
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 377
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 378
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_e

    .line 379
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 381
    :cond_e
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 385
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    .line 386
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 389
    invoke-static {v1}, Landroidx/core/app/h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 390
    new-instance v3, Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 391
    iget-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 393
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :cond_11
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 397
    iget-object v0, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    .line 398
    invoke-static {v0}, Landroidx/core/app/j;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_12

    .line 401
    invoke-static {v1}, Landroidx/core/app/h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.support.actionExtras"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 404
    :cond_12
    iget-object v0, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    .line 405
    iget-object v0, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 407
    :cond_13
    iget-object v0, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_14

    .line 408
    iget-object v0, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_14
    move-object v0, v1

    .line 410
    goto/16 :goto_0

    .line 413
    :cond_15
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_0
.end method
