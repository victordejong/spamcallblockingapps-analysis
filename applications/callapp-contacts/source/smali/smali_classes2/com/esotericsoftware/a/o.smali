.class final Lcom/esotericsoftware/a/o;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:Lcom/esotericsoftware/a/o;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/a/o;->a:I

    return-void
.end method

.method constructor <init>(ILcom/esotericsoftware/a/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/a/o;->a:I

    iget p1, p2, Lcom/esotericsoftware/a/o;->b:I

    iput p1, p0, Lcom/esotericsoftware/a/o;->b:I

    iget p1, p2, Lcom/esotericsoftware/a/o;->c:I

    iput p1, p0, Lcom/esotericsoftware/a/o;->c:I

    iget-wide v0, p2, Lcom/esotericsoftware/a/o;->d:J

    iput-wide v0, p0, Lcom/esotericsoftware/a/o;->d:J

    iget-object p1, p2, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object p1, p2, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    iget-object p1, p2, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    iget p1, p2, Lcom/esotericsoftware/a/o;->h:I

    iput p1, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void
.end method


# virtual methods
.method final a(D)V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Lcom/esotericsoftware/a/o;->b:I

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/a/o;->d:J

    iget v0, p0, Lcom/esotericsoftware/a/o;->b:I

    double-to-int p1, p1

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void
.end method

.method final a(F)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/a/o;->b:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/a/o;->c:I

    iget v0, p0, Lcom/esotericsoftware/a/o;->b:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void
.end method

.method final a(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/esotericsoftware/a/o;->b:I

    iput p1, p0, Lcom/esotericsoftware/a/o;->c:I

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void
.end method

.method final a(II)V
    .locals 1

    const/16 v0, 0x21

    iput v0, p0, Lcom/esotericsoftware/a/o;->b:I

    iput p1, p0, Lcom/esotericsoftware/a/o;->c:I

    iput p2, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void
.end method

.method final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/esotericsoftware/a/o;->b:I

    iput-object p2, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    const/4 v0, 0x1

    const v1, 0x7fffffff

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p3

    :goto_0
    mul-int p2, p2, p3

    :goto_1
    add-int/2addr p1, p2

    and-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void

    :cond_0
    const/4 p3, 0x0

    iput p3, p0, Lcom/esotericsoftware/a/o;->c:I

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    goto :goto_1
.end method

.method final a(J)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/esotericsoftware/a/o;->b:I

    iput-wide p1, p0, Lcom/esotericsoftware/a/o;->d:J

    long-to-int p2, p1

    add-int/2addr v0, p2

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x12

    iput v0, p0, Lcom/esotericsoftware/a/o;->b:I

    int-to-long v1, p3

    iput-wide v1, p0, Lcom/esotericsoftware/a/o;->d:J

    iput-object p1, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int p3, p3, p1

    iget-object p1, p0, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int p3, p3, p1

    add-int/2addr p3, v0

    const p1, 0x7fffffff

    and-int/2addr p1, p3

    iput p1, p0, Lcom/esotericsoftware/a/o;->h:I

    return-void
.end method

.method final a(Lcom/esotericsoftware/a/o;)Z
    .locals 8

    iget v0, p0, Lcom/esotericsoftware/a/o;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/16 v2, 0x10

    if-eq v0, v2, :cond_8

    const/16 v2, 0x12

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v3

    :pswitch_0
    iget v0, p1, Lcom/esotericsoftware/a/o;->c:I

    iget v2, p0, Lcom/esotericsoftware/a/o;->c:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v3

    :pswitch_1
    iget-wide v4, p1, Lcom/esotericsoftware/a/o;->d:J

    iget-wide v6, p0, Lcom/esotericsoftware/a/o;->d:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :pswitch_2
    iget p1, p1, Lcom/esotericsoftware/a/o;->c:I

    iget v0, p0, Lcom/esotericsoftware/a/o;->c:I

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    iget-wide v4, p1, Lcom/esotericsoftware/a/o;->d:J

    iget-wide v6, p0, Lcom/esotericsoftware/a/o;->d:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v3

    :cond_6
    iget-object v0, p1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v3

    :cond_8
    :pswitch_3
    iget-object p1, p1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
