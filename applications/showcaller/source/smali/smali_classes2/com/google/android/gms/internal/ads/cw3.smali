.class public final Lcom/google/android/gms/internal/ads/cw3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sx3;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/u4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cw3;->a:Ljava/util/List;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/rx3;)Lcom/google/android/gms/internal/ads/ix3;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ix3;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cw3;->d(Lcom/google/android/gms/internal/ads/rx3;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ix3;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final c(Lcom/google/android/gms/internal/ads/rx3;)Lcom/google/android/gms/internal/ads/wx3;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wx3;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cw3;->d(Lcom/google/android/gms/internal/ads/rx3;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/wx3;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final d(Lcom/google/android/gms/internal/ads/rx3;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rx3;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/u4;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/la;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rx3;->d:[B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cw3;->a:Ljava/util/List;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v1

    if-lez v1, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x3

    .line 6
    sget-object v6, Lcom/google/android/gms/internal/ads/lu2;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/la;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_2

    :cond_0
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    .line 8
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v10

    int-to-byte v10, v10

    .line 9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    if-eqz v7, :cond_2

    .line 10
    sget v7, Lcom/google/android/gms/internal/ads/a9;->c:I

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_1

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_3

    :cond_1
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    .line 11
    :goto_3
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    :goto_4
    new-instance v8, Lcom/google/android/gms/internal/ads/s4;

    .line 12
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 13
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 14
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 15
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/s4;->G(I)Lcom/google/android/gms/internal/ads/s4;

    .line 16
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    .line 17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v5

    .line 18
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/rx3;)Lcom/google/android/gms/internal/ads/ux3;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x24

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-eq p1, v0, :cond_5

    const/16 v0, 0x81

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_3

    const/16 v0, 0xac

    if-eq p1, v0, :cond_2

    const/16 v0, 0x101

    if-eq p1, v0, :cond_1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :pswitch_0
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/tw3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rx3;->b:Ljava/lang/String;

    .line 2
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/tw3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    .line 3
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/lw3;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/cw3;->c(Lcom/google/android/gms/internal/ads/rx3;)Lcom/google/android/gms/internal/ads/wx3;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/lw3;-><init>(Lcom/google/android/gms/internal/ads/wx3;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/bw3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rx3;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/bw3;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/hx3;

    new-instance p2, Lcom/google/android/gms/internal/ads/ww3;

    const-string v0, "application/x-scte35"

    .line 7
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/ww3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hx3;-><init>(Lcom/google/android/gms/internal/ads/gx3;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/hx3;

    new-instance p2, Lcom/google/android/gms/internal/ads/ww3;

    const-string v0, "application/vnd.dvb.ait"

    .line 8
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/ww3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hx3;-><init>(Lcom/google/android/gms/internal/ads/gx3;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/yv3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rx3;->b:Ljava/lang/String;

    .line 9
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/yv3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/dw3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rx3;->b:Ljava/lang/String;

    .line 10
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/dw3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/vv3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rx3;->b:Ljava/lang/String;

    .line 11
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/vv3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/fw3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rx3;->c:Ljava/util/List;

    .line 12
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/fw3;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/rw3;

    .line 13
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/cw3;->b(Lcom/google/android/gms/internal/ads/rx3;)Lcom/google/android/gms/internal/ads/ix3;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/rw3;-><init>(Lcom/google/android/gms/internal/ads/ix3;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    .line 14
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/pw3;

    .line 15
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/cw3;->b(Lcom/google/android/gms/internal/ads/rx3;)Lcom/google/android/gms/internal/ads/ix3;

    move-result-object p2

    .line 16
    invoke-direct {v0, p2, v1, v1}, Lcom/google/android/gms/internal/ads/pw3;-><init>(Lcom/google/android/gms/internal/ads/ix3;ZZ)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    .line 17
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance p2, Lcom/google/android/gms/internal/ads/sw3;

    .line 18
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/sw3;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    .line 19
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    new-instance v0, Lcom/google/android/gms/internal/ads/uw3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rx3;->b:Ljava/lang/String;

    .line 20
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/uw3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/xw3;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/iw3;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/cw3;->c(Lcom/google/android/gms/internal/ads/rx3;)Lcom/google/android/gms/internal/ads/wx3;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/iw3;-><init>(Lcom/google/android/gms/internal/ads/wx3;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xw3;-><init>(Lcom/google/android/gms/internal/ads/gw3;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
