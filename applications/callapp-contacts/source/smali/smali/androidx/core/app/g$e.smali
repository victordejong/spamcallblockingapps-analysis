.class public final Landroidx/core/app/g$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Landroid/os/Bundle;

.field public C:I

.field public D:I

.field E:Landroid/app/Notification;

.field public F:Landroid/widget/RemoteViews;

.field public G:Landroid/widget/RemoteViews;

.field H:Landroid/widget/RemoteViews;

.field public I:Ljava/lang/String;

.field J:I

.field K:Ljava/lang/String;

.field L:J

.field M:I

.field N:Z

.field O:Landroidx/core/app/g$d;

.field public P:Landroid/app/Notification;

.field public Q:Z

.field public R:Ljava/util/ArrayList;
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
            "Landroidx/core/app/g$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/g$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field public f:Landroid/app/PendingIntent;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/widget/RemoteViews;

.field i:Landroid/graphics/Bitmap;

.field j:Ljava/lang/CharSequence;

.field public k:I

.field public l:I

.field public m:Z

.field n:Z

.field o:Landroidx/core/app/g$i;

.field p:Ljava/lang/CharSequence;

.field q:[Ljava/lang/CharSequence;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Ljava/lang/String;

.field v:Z

.field w:Ljava/lang/String;

.field public x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 791
    invoke-direct {p0, p1, v0}, Landroidx/core/app/g$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$e;->b:Ljava/util/ArrayList;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$e;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Landroidx/core/app/g$e;->m:Z

    const/4 v1, 0x0

    .line 732
    iput-boolean v1, p0, Landroidx/core/app/g$e;->x:Z

    .line 737
    iput v1, p0, Landroidx/core/app/g$e;->C:I

    .line 738
    iput v1, p0, Landroidx/core/app/g$e;->D:I

    .line 744
    iput v1, p0, Landroidx/core/app/g$e;->J:I

    .line 747
    iput v1, p0, Landroidx/core/app/g$e;->M:I

    .line 750
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    .line 774
    iput-object p1, p0, Landroidx/core/app/g$e;->a:Landroid/content/Context;

    .line 775
    iput-object p2, p0, Landroidx/core/app/g$e;->I:Ljava/lang/String;

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 779
    iget-object p1, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 780
    iput v1, p0, Landroidx/core/app/g$e;->l:I

    .line 781
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/g$e;->R:Ljava/util/ArrayList;

    .line 782
    iput-boolean v0, p0, Landroidx/core/app/g$e;->N:Z

    return-void
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1682
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1683
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .line 1398
    iget-object v0, p0, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    .line 1401
    :cond_0
    iget-object v0, p0, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    return-object v0
.end method

.method public final a(I)Landroidx/core/app/g$e;
    .locals 1

    .line 851
    iget-object v0, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/g$e;
    .locals 2

    .line 1421
    iget-object v0, p0, Landroidx/core/app/g$e;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/g$a;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/g$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(J)Landroidx/core/app/g$e;
    .locals 1

    .line 799
    iget-object v0, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Landroidx/core/app/g$e;
    .locals 1

    .line 987
    iget-object v0, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;
    .locals 9

    if-eqz p1, :cond_2

    .line 2051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2055
    :cond_0
    iget-object v0, p0, Landroidx/core/app/g$e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2056
    sget v1, Landroidx/core/a$b;->compat_notification_large_icon_max_width:I

    .line 2057
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2058
    sget v2, Landroidx/core/a$b;->compat_notification_large_icon_max_height:I

    .line 2059
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2060
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v1, v1

    .line 2065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 2066
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 2064
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 2069
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2070
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2067
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1042
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/core/app/g$e;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Landroidx/core/app/g$e;
    .locals 2

    .line 1083
    iget-object v0, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1084
    iget-object p1, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    const/4 v0, -0x1

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1085
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1086
    iget-object p1, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1087
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1088
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public final a(Landroidx/core/app/g$a;)Landroidx/core/app/g$e;
    .locals 1

    .line 1440
    iget-object v0, p0, Landroidx/core/app/g$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Landroidx/core/app/g$f;)Landroidx/core/app/g$e;
    .locals 0

    .line 1650
    invoke-interface {p1, p0}, Landroidx/core/app/g$f;->a(Landroidx/core/app/g$e;)Landroidx/core/app/g$e;

    return-object p0
.end method

.method public final a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;
    .locals 1

    .line 1482
    iget-object v0, p0, Landroidx/core/app/g$e;->o:Landroidx/core/app/g$i;

    if-eq v0, p1, :cond_0

    .line 1483
    iput-object p1, p0, Landroidx/core/app/g$e;->o:Landroidx/core/app/g$i;

    if-eqz p1, :cond_0

    .line 1485
    invoke-virtual {p1, p0}, Landroidx/core/app/g$i;->a(Landroidx/core/app/g$e;)V

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;
    .locals 0

    .line 884
    invoke-static {p1}, Landroidx/core/app/g$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$e;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(Z)Landroidx/core/app/g$e;
    .locals 1

    const/16 v0, 0x10

    .line 1204
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/g$e;->a(IZ)V

    return-object p0
.end method

.method public final a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1251
    iget-object p2, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void

    .line 1253
    :cond_0
    iget-object p2, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public final b()Landroid/app/Notification;
    .locals 10

    .line 1677
    new-instance v0, Landroidx/core/app/h;

    invoke-direct {v0, p0}, Landroidx/core/app/h;-><init>(Landroidx/core/app/g$e;)V

    .line 2245
    iget-object v1, v0, Landroidx/core/app/h;->b:Landroidx/core/app/g$e;

    iget-object v1, v1, Landroidx/core/app/g$e;->o:Landroidx/core/app/g$i;

    if-eqz v1, :cond_0

    .line 2247
    invoke-virtual {v1, v0}, Landroidx/core/app/g$i;->a(Landroidx/core/app/f;)V

    .line 2338
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/16 v4, 0x10

    if-lt v2, v3, :cond_1

    .line 2339
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_1

    .line 2340
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v2, v3, :cond_3

    .line 2341
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 2343
    iget v3, v0, Landroidx/core/app/h;->g:I

    if-eqz v3, :cond_15

    .line 2345
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_2

    iget v3, v0, Landroidx/core/app/h;->g:I

    if-ne v3, v6, :cond_2

    .line 2348
    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)V

    .line 2351
    :cond_2
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_15

    iget v3, v0, Landroidx/core/app/h;->g:I

    if-ne v3, v5, :cond_15

    .line 2354
    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)V

    goto/16 :goto_1

    .line 2359
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_8

    .line 2360
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, v0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 2361
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 2362
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_4

    .line 2363
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2365
    :cond_4
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_5

    .line 2366
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2368
    :cond_5
    iget-object v3, v0, Landroidx/core/app/h;->h:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_6

    .line 2369
    iget-object v3, v0, Landroidx/core/app/h;->h:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2372
    :cond_6
    iget v3, v0, Landroidx/core/app/h;->g:I

    if-eqz v3, :cond_15

    .line 2374
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_7

    iget v3, v0, Landroidx/core/app/h;->g:I

    if-ne v3, v6, :cond_7

    .line 2377
    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)V

    .line 2380
    :cond_7
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_15

    iget v3, v0, Landroidx/core/app/h;->g:I

    if-ne v3, v5, :cond_15

    .line 2383
    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)V

    goto/16 :goto_1

    .line 2387
    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_c

    .line 2388
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, v0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 2389
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 2390
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_9

    .line 2391
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2393
    :cond_9
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_a

    .line 2394
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2397
    :cond_a
    iget v3, v0, Landroidx/core/app/h;->g:I

    if-eqz v3, :cond_15

    .line 2399
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_b

    iget v3, v0, Landroidx/core/app/h;->g:I

    if-ne v3, v6, :cond_b

    .line 2402
    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)V

    .line 2405
    :cond_b
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_15

    iget v3, v0, Landroidx/core/app/h;->g:I

    if-ne v3, v5, :cond_15

    .line 2408
    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)V

    goto/16 :goto_1

    .line 2413
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const-string v5, "android.support.actionExtras"

    if-lt v2, v3, :cond_f

    .line 2414
    iget-object v2, v0, Landroidx/core/app/h;->e:Ljava/util/List;

    .line 2415
    invoke-static {v2}, Landroidx/core/app/i;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2418
    iget-object v3, v0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2421
    :cond_d
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    iget-object v3, v0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 2422
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 2423
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_e

    .line 2424
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2426
    :cond_e
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_15

    .line 2427
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 2430
    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_14

    .line 2431
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 2434
    invoke-static {v2}, Landroidx/core/app/g;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    .line 2435
    new-instance v6, Landroid/os/Bundle;

    iget-object v7, v0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2436
    iget-object v7, v0, Landroidx/core/app/h;->f:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2437
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2438
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 2441
    :cond_11
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2442
    iget-object v3, v0, Landroidx/core/app/h;->e:Ljava/util/List;

    .line 2443
    invoke-static {v3}, Landroidx/core/app/i;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2446
    invoke-static {v2}, Landroidx/core/app/g;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2449
    :cond_12
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_13

    .line 2450
    iget-object v3, v0, Landroidx/core/app/h;->c:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2452
    :cond_13
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_15

    .line 2453
    iget-object v3, v0, Landroidx/core/app/h;->d:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 2457
    :cond_14
    iget-object v2, v0, Landroidx/core/app/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 2256
    :cond_15
    :goto_1
    iget-object v3, v0, Landroidx/core/app/h;->b:Landroidx/core/app/g$e;

    iget-object v3, v3, Landroidx/core/app/g$e;->F:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_16

    .line 2257
    iget-object v0, v0, Landroidx/core/app/h;->b:Landroidx/core/app/g$e;

    iget-object v0, v0, Landroidx/core/app/g$e;->F:Landroid/widget/RemoteViews;

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2259
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_17

    if-eqz v1, :cond_17

    .line 2274
    invoke-static {v2}, Landroidx/core/app/g;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2276
    invoke-virtual {v1, v0}, Landroidx/core/app/g$i;->a(Landroid/os/Bundle;)V

    :cond_17
    return-object v2
.end method

.method public final b(I)Landroidx/core/app/g$e;
    .locals 1

    .line 1242
    iget-object v0, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 1244
    iget-object p1, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;
    .locals 0

    .line 892
    invoke-static {p1}, Landroidx/core/app/g$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$e;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;
    .locals 1

    .line 1022
    iget-object v0, p0, Landroidx/core/app/g$e;->P:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/g$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
