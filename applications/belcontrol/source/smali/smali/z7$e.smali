.class public Lz7$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Landroid/os/Bundle;

.field public D:I

.field public E:I

.field public F:Landroid/app/Notification;

.field public G:Landroid/widget/RemoteViews;

.field public H:Landroid/widget/RemoteViews;

.field public I:Landroid/widget/RemoteViews;

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Ljava/lang/String;

.field public M:J

.field public N:I

.field public O:Z

.field public P:Lz7$d;

.field public Q:Landroid/app/Notification;

.field public R:Z

.field public S:Ljava/util/ArrayList;
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
            "Lz7$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz7$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/app/PendingIntent;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroid/widget/RemoteViews;

.field public i:Landroid/graphics/Bitmap;

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lz7$g;

.field public q:Ljava/lang/CharSequence;

.field public r:[Ljava/lang/CharSequence;

.field public s:I

.field public t:I

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz7$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz7$e;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz7$e;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz7$e;->m:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz7$e;->y:Z

    iput v1, p0, Lz7$e;->D:I

    iput v1, p0, Lz7$e;->E:I

    iput v1, p0, Lz7$e;->K:I

    iput v1, p0, Lz7$e;->N:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput-object p1, p0, Lz7$e;->a:Landroid/content/Context;

    iput-object p2, p0, Lz7$e;->J:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    iget-object p1, p0, Lz7$e;->Q:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Lz7$e;->l:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz7$e;->S:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lz7$e;->O:Z

    return-void
.end method

.method public static h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public A(Z)Lz7$e;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lz7$e;->u(IZ)V

    return-object p0
.end method

.method public B(Z)Lz7$e;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lz7$e;->u(IZ)V

    return-object p0
.end method

.method public C(I)Lz7$e;
    .locals 0

    iput p1, p0, Lz7$e;->l:I

    return-object p0
.end method

.method public D(IIZ)Lz7$e;
    .locals 0

    iput p1, p0, Lz7$e;->s:I

    iput p2, p0, Lz7$e;->t:I

    iput-boolean p3, p0, Lz7$e;->u:Z

    return-object p0
.end method

.method public E(Z)Lz7$e;
    .locals 0

    iput-boolean p1, p0, Lz7$e;->m:Z

    return-object p0
.end method

.method public F(I)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public G(Landroid/net/Uri;)Lz7$e;
    .locals 2

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public H(Lz7$g;)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->p:Lz7$g;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lz7$e;->p:Lz7$g;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lz7$g;->k(Lz7$e;)V

    :cond_0
    return-object p0
.end method

.method public I(Ljava/lang/CharSequence;)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    invoke-static {p1}, Lz7$e;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public J(Z)Lz7$e;
    .locals 0

    iput-boolean p1, p0, Lz7$e;->n:Z

    return-object p0
.end method

.method public K([J)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public L(I)Lz7$e;
    .locals 0

    iput p1, p0, Lz7$e;->E:I

    return-object p0
.end method

.method public M(J)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lz7$e;
    .locals 2

    iget-object v0, p0, Lz7$e;->b:Ljava/util/ArrayList;

    new-instance v1, Lz7$a;

    invoke-direct {v1, p1, p2, p3}, Lz7$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Lz7$a;)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Landroid/app/Notification;
    .locals 1

    new-instance v0, La8;

    invoke-direct {v0, p0}, La8;-><init>(Lz7$e;)V

    invoke-virtual {v0}, La8;->c()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lz7$e;->D:I

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lz7$e;->C:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lz7$e;->C:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lz7$e;->C:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lz7$e;->l:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-boolean v0, p0, Lz7$e;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final i(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz7$e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll7;->compat_notification_large_icon_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Ll7;->compat_notification_large_icon_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    return-object p1

    :cond_1
    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public j(Z)Lz7$e;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lz7$e;->u(IZ)V

    return-object p0
.end method

.method public k(I)Lz7$e;
    .locals 0

    iput p1, p0, Lz7$e;->K:I

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lz7$e;
    .locals 0

    iput-object p1, p0, Lz7$e;->B:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lz7$e;
    .locals 0

    iput-object p1, p0, Lz7$e;->J:Ljava/lang/String;

    return-object p0
.end method

.method public n(I)Lz7$e;
    .locals 0

    iput p1, p0, Lz7$e;->D:I

    return-object p0
.end method

.method public o(Z)Lz7$e;
    .locals 0

    iput-boolean p1, p0, Lz7$e;->z:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz7$e;->A:Z

    return-object p0
.end method

.method public p(Landroid/app/PendingIntent;)Lz7$e;
    .locals 0

    iput-object p1, p0, Lz7$e;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public q(Ljava/lang/CharSequence;)Lz7$e;
    .locals 0

    invoke-static {p1}, Lz7$e;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lz7$e;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public r(Ljava/lang/CharSequence;)Lz7$e;
    .locals 0

    invoke-static {p1}, Lz7$e;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lz7$e;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public s(I)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public t(Landroid/app/PendingIntent;)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final u(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz7$e;->Q:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lz7$e;->Q:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public v(Landroid/app/PendingIntent;Z)Lz7$e;
    .locals 0

    iput-object p1, p0, Lz7$e;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    invoke-virtual {p0, p1, p2}, Lz7$e;->u(IZ)V

    return-object p0
.end method

.method public w(Landroid/graphics/Bitmap;)Lz7$e;
    .locals 0

    invoke-virtual {p0, p1}, Lz7$e;->i(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lz7$e;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public x(III)Lz7$e;
    .locals 1

    iget-object v0, p0, Lz7$e;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    iput p1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public y(Z)Lz7$e;
    .locals 0

    iput-boolean p1, p0, Lz7$e;->y:Z

    return-object p0
.end method

.method public z(I)Lz7$e;
    .locals 0

    iput p1, p0, Lz7$e;->k:I

    return-object p0
.end method
