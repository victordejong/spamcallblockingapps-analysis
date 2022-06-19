.class public Landroidx/core/app/h$d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field B:Landroid/os/Bundle;

.field C:I

.field D:I

.field E:Landroid/app/Notification;

.field F:Landroid/widget/RemoteViews;

.field G:Landroid/widget/RemoteViews;

.field H:Landroid/widget/RemoteViews;

.field I:Ljava/lang/String;

.field J:I

.field K:Ljava/lang/String;

.field L:J

.field M:I

.field N:Landroid/app/Notification;

.field public O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field f:Landroid/app/PendingIntent;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/widget/RemoteViews;

.field i:Landroid/graphics/Bitmap;

.field j:Ljava/lang/CharSequence;

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Landroidx/core/app/h$f;

.field p:Ljava/lang/CharSequence;

.field q:[Ljava/lang/CharSequence;

.field r:I

.field s:I

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/lang/String;

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, p1, v0}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$d;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 691
    iput-boolean v0, p0, Landroidx/core/app/h$d;->m:Z

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Landroidx/core/app/h$d;->x:Z

    .line 707
    iput v0, p0, Landroidx/core/app/h$d;->C:I

    .line 708
    iput v0, p0, Landroidx/core/app/h$d;->D:I

    .line 714
    iput v0, p0, Landroidx/core/app/h$d;->J:I

    .line 717
    iput v0, p0, Landroidx/core/app/h$d;->M:I

    .line 718
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    .line 740
    iput-object p1, p0, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    .line 741
    iput-object p2, p0, Landroidx/core/app/h$d;->I:Ljava/lang/String;

    .line 744
    iget-object p1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    .line 745
    iget-object p1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 746
    iput v0, p0, Landroidx/core/app/h$d;->l:I

    .line 747
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/h$d;->O:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1191
    iget-object p2, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 1193
    :cond_0
    iget-object p2, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 996
    sget v1, Landroidx/core/a$b;->compat_notification_large_icon_max_width:I

    .line 997
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 998
    sget v2, Landroidx/core/a$b;->compat_notification_large_icon_max_height:I

    .line 999
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1000
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    return-object p1

    :cond_1
    int-to-double v1, v1

    .line 1005
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 1004
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1009
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1010
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1007
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1595
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1596
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .line 1337
    iget-object v0, p0, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    .line 1340
    :cond_0
    iget-object v0, p0, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(I)Landroidx/core/app/h$d;
    .locals 1

    .line 801
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public a(III)Landroidx/core/app/h$d;
    .locals 1

    .line 1079
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1080
    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1081
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1082
    iget p1, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->ledOffMS:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1083
    :goto_0
    iget-object p2, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget p3, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, -0x2

    or-int/2addr p1, p3

    iput p1, p2, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/h$d;
    .locals 2

    .line 1360
    iget-object v0, p0, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/h$a;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(J)Landroidx/core/app/h$d;
    .locals 1

    .line 764
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;
    .locals 0

    .line 916
    iput-object p1, p0, Landroidx/core/app/h$d;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;Z)Landroidx/core/app/h$d;
    .locals 0

    .line 951
    iput-object p1, p0, Landroidx/core/app/h$d;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    .line 952
    invoke-direct {p0, p1, p2}, Landroidx/core/app/h$d;->a(IZ)V

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Landroidx/core/app/h$d;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroidx/core/app/h$d;
    .locals 2

    .line 1023
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 1024
    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1025
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1026
    iget-object p1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1027
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1028
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/widget/RemoteViews;)Landroidx/core/app/h$d;
    .locals 0

    .line 1487
    iput-object p1, p0, Landroidx/core/app/h$d;->G:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public a(Landroidx/core/app/h$a;)Landroidx/core/app/h$d;
    .locals 1

    .line 1379
    iget-object v0, p0, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroidx/core/app/h$e;)Landroidx/core/app/h$d;
    .locals 0

    .line 1573
    invoke-interface {p1, p0}, Landroidx/core/app/h$e;->a(Landroidx/core/app/h$d;)Landroidx/core/app/h$d;

    return-object p0
.end method

.method public a(Landroidx/core/app/h$f;)Landroidx/core/app/h$d;
    .locals 1

    .line 1421
    iget-object v0, p0, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$f;

    if-eq v0, p1, :cond_0

    .line 1422
    iput-object p1, p0, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$f;

    .line 1423
    iget-object p1, p0, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$f;

    if-eqz p1, :cond_0

    .line 1424
    invoke-virtual {p1, p0}, Landroidx/core/app/h$f;->a(Landroidx/core/app/h$d;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .locals 0

    .line 825
    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/h$d;
    .locals 0

    .line 1167
    iput-object p1, p0, Landroidx/core/app/h$d;->A:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/h$d;
    .locals 0

    .line 773
    iput-boolean p1, p0, Landroidx/core/app/h$d;->m:Z

    return-object p0
.end method

.method public a([J)Landroidx/core/app/h$d;
    .locals 1

    .line 1069
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public b()Landroid/app/Notification;
    .locals 1

    .line 1590
    new-instance v0, Landroidx/core/app/i;

    invoke-direct {v0, p0}, Landroidx/core/app/i;-><init>(Landroidx/core/app/h$d;)V

    invoke-virtual {v0}, Landroidx/core/app/i;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroidx/core/app/h$d;
    .locals 0

    .line 876
    iput p1, p0, Landroidx/core/app/h$d;->k:I

    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;
    .locals 1

    .line 928
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Landroid/widget/RemoteViews;)Landroidx/core/app/h$d;
    .locals 0

    .line 1500
    iput-object p1, p0, Landroidx/core/app/h$d;->H:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .locals 0

    .line 833
    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroidx/core/app/h$d;
    .locals 0

    .line 1258
    iput-object p1, p0, Landroidx/core/app/h$d;->u:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/h$d;
    .locals 0

    .line 789
    iput-boolean p1, p0, Landroidx/core/app/h$d;->n:Z

    return-object p0
.end method

.method public c(I)Landroidx/core/app/h$d;
    .locals 1

    .line 1182
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 1184
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .locals 0

    .line 847
    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->p:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Landroidx/core/app/h$d;
    .locals 0

    .line 1510
    iput-object p1, p0, Landroidx/core/app/h$d;->I:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Landroidx/core/app/h$d;
    .locals 0

    .line 1123
    iput-boolean p1, p0, Landroidx/core/app/h$d;->y:Z

    const/4 p1, 0x1

    .line 1124
    iput-boolean p1, p0, Landroidx/core/app/h$d;->z:Z

    return-object p0
.end method

.method public d(I)Landroidx/core/app/h$d;
    .locals 0

    .line 1215
    iput p1, p0, Landroidx/core/app/h$d;->l:I

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .locals 1

    .line 962
    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Z)Landroidx/core/app/h$d;
    .locals 1

    const/16 v0, 0x10

    .line 1144
    invoke-direct {p0, v0, p1}, Landroidx/core/app/h$d;->a(IZ)V

    return-object p0
.end method

.method public e(I)Landroidx/core/app/h$d;
    .locals 0

    .line 1438
    iput p1, p0, Landroidx/core/app/h$d;->C:I

    return-object p0
.end method

.method public e(Z)Landroidx/core/app/h$d;
    .locals 0

    .line 1155
    iput-boolean p1, p0, Landroidx/core/app/h$d;->x:Z

    return-object p0
.end method

.method public f(I)Landroidx/core/app/h$d;
    .locals 0

    .line 1450
    iput p1, p0, Landroidx/core/app/h$d;->D:I

    return-object p0
.end method

.method public f(Z)Landroidx/core/app/h$d;
    .locals 0

    .line 1270
    iput-boolean p1, p0, Landroidx/core/app/h$d;->v:Z

    return-object p0
.end method
