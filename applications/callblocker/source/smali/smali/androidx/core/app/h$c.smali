.class public Landroidx/core/app/h$c;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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

.field o:Landroidx/core/app/h$d;

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

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->b:Ljava/util/ArrayList;

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->c:Ljava/util/ArrayList;

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/h$c;->m:Z

    .line 702
    iput-boolean v4, p0, Landroidx/core/app/h$c;->x:Z

    .line 707
    iput v4, p0, Landroidx/core/app/h$c;->C:I

    .line 708
    iput v4, p0, Landroidx/core/app/h$c;->D:I

    .line 714
    iput v4, p0, Landroidx/core/app/h$c;->J:I

    .line 717
    iput v4, p0, Landroidx/core/app/h$c;->M:I

    .line 718
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    .line 740
    iput-object p1, p0, Landroidx/core/app/h$c;->a:Landroid/content/Context;

    .line 741
    iput-object p2, p0, Landroidx/core/app/h$c;->I:Ljava/lang/String;

    .line 744
    iget-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 745
    iget-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 746
    iput v4, p0, Landroidx/core/app/h$c;->l:I

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->O:Ljava/util/ArrayList;

    .line 748
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1190
    if-eqz p2, :cond_0

    .line 1191
    iget-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1195
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 991
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-object p1

    .line 995
    :cond_1
    iget-object v0, p0, Landroidx/core/app/h$c;->a:Landroid/content/Context;

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

    if-gt v2, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 1004
    :cond_2
    int-to-double v2, v1

    .line 1005
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-double v0, v0

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 1004
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

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

    int-to-double v4, v3

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1007
    invoke-static {p1, v2, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1594
    if-nez p0, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return-object p0

    .line 1595
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1596
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Landroidx/core/app/h$c;->B:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$c;->B:Landroid/os/Bundle;

    .line 1340
    :cond_0
    iget-object v0, p0, Landroidx/core/app/h$c;->B:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(I)Landroidx/core/app/h$c;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 802
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/h$c;
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Landroidx/core/app/h$c;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/h$a;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    return-object p0
.end method

.method public a(J)Landroidx/core/app/h$c;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 765
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Landroidx/core/app/h$c;->f:Landroid/app/PendingIntent;

    .line 917
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$c;
    .locals 1

    .prologue
    .line 982
    invoke-direct {p0, p1}, Landroidx/core/app/h$c;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/h$c;->i:Landroid/graphics/Bitmap;

    .line 983
    return-object p0
.end method

.method public a(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Landroidx/core/app/h$c;->o:Landroidx/core/app/h$d;

    if-eq v0, p1, :cond_0

    .line 1422
    iput-object p1, p0, Landroidx/core/app/h$c;->o:Landroidx/core/app/h$d;

    .line 1423
    iget-object v0, p0, Landroidx/core/app/h$c;->o:Landroidx/core/app/h$d;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Landroidx/core/app/h$c;->o:Landroidx/core/app/h$d;

    invoke-virtual {v0, p0}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$c;)V

    .line 1427
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;
    .locals 1

    .prologue
    .line 825
    invoke-static {p1}, Landroidx/core/app/h$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/h$c;->d:Ljava/lang/CharSequence;

    .line 826
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/h$c;
    .locals 0

    .prologue
    .line 1510
    iput-object p1, p0, Landroidx/core/app/h$c;->I:Ljava/lang/String;

    .line 1511
    return-object p0
.end method

.method public a(Z)Landroidx/core/app/h$c;
    .locals 1

    .prologue
    .line 1144
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroidx/core/app/h$c;->a(IZ)V

    .line 1145
    return-object p0
.end method

.method public b()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 1590
    new-instance v0, Landroidx/core/app/i;

    invoke-direct {v0, p0}, Landroidx/core/app/i;-><init>(Landroidx/core/app/h$c;)V

    invoke-virtual {v0}, Landroidx/core/app/i;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroidx/core/app/h$c;
    .locals 0

    .prologue
    .line 1215
    iput p1, p0, Landroidx/core/app/h$c;->l:I

    .line 1216
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;
    .locals 1

    .prologue
    .line 833
    invoke-static {p1}, Landroidx/core/app/h$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/h$c;->e:Ljava/lang/CharSequence;

    .line 834
    return-object p0
.end method

.method public b(Z)Landroidx/core/app/h$c;
    .locals 0

    .prologue
    .line 1155
    iput-boolean p1, p0, Landroidx/core/app/h$c;->x:Z

    .line 1156
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Landroidx/core/app/h$c;->N:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/h$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 963
    return-object p0
.end method
