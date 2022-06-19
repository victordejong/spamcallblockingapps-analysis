.class public final Lxl;
.super Lem;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxl$a;
    }
.end annotation


# instance fields
.field public n:Lpt;

.field public o:Lxl$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem;-><init>()V

    return-void
.end method

.method public static synthetic l(Lxl;)Lpt;
    .locals 0

    iget-object p0, p0, Lxl;->n:Lpt;

    return-object p0
.end method

.method public static n([B)Z
    .locals 2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static o(Lyt;)Z
    .locals 4

    invoke-virtual {p0}, Lyt;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lyt;->w()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lyt;->y()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public e(Lyt;)J
    .locals 2

    iget-object v0, p1, Lyt;->a:[B

    invoke-static {v0}, Lxl;->n([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lxl;->m(Lyt;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public h(Lyt;JLem$b;)Z
    .locals 11

    iget-object v0, p1, Lyt;->a:[B

    iget-object v1, p0, Lxl;->n:Lpt;

    if-nez v1, :cond_0

    new-instance p2, Lpt;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lpt;-><init>([BI)V

    iput-object p2, p0, Lxl;->n:Lpt;

    const/16 p2, 0x9

    invoke-virtual {p1}, Lyt;->d()I

    move-result p1

    invoke-static {v0, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p2, 0x4

    const/16 p3, -0x80

    aput-byte p3, p1, p2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object p1, p0, Lxl;->n:Lpt;

    invoke-virtual {p1}, Lpt;->a()I

    move-result v4

    iget-object p1, p0, Lxl;->n:Lpt;

    iget v5, p1, Lpt;->b:I

    iget v6, p1, Lpt;->a:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "audio/flac"

    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    iput-object p1, p4, Lem$b;->a:Landroidx/media2/exoplayer/external/Format;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    new-instance p2, Lxl$a;

    invoke-direct {p2, p0}, Lxl$a;-><init>(Lxl;)V

    iput-object p2, p0, Lxl;->o:Lxl$a;

    invoke-virtual {p2, p1}, Lxl$a;->b(Lyt;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lxl;->n([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lxl;->o:Lxl$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lxl$a;->c(J)V

    iget-object p1, p0, Lxl;->o:Lxl$a;

    iput-object p1, p4, Lem$b;->b:Lcm;

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public j(Z)V
    .locals 0

    invoke-super {p0, p1}, Lem;->j(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lxl;->n:Lpt;

    iput-object p1, p0, Lxl;->o:Lxl$a;

    :cond_0
    return-void
.end method

.method public final m(Lyt;)I
    .locals 3

    iget-object v0, p1, Lyt;->a:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    packed-switch v0, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/16 p1, 0x100

    add-int/lit8 v0, v0, -0x8

    :goto_0
    shl-int/2addr p1, v0

    return p1

    :pswitch_1
    invoke-virtual {p1, v2}, Lyt;->K(I)V

    invoke-virtual {p1}, Lyt;->D()J

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lyt;->C()I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lyt;->J(I)V

    add-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_2
    const/16 p1, 0x240

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xc0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
