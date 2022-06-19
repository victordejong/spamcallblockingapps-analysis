.class final Lcom/google/android/gms/internal/ads/dnq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnw;


# instance fields
.field private final a:[B

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/ads/dns;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dob;

.field private d:Lcom/google/android/gms/internal/ads/dnu;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->a:[B

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->b:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dob;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dob;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->c:Lcom/google/android/gms/internal/ads/dob;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dng;I)J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnq;->a:[B

    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 81
    const-wide/16 v2, 0x0

    .line 82
    :goto_0
    if-ge v0, p2, :cond_0

    .line 83
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnq;->a:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->c:Lcom/google/android/gms/internal/ads/dob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dob;->a()V

    .line 10
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dnu;)V
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    .line 6
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dng;)Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x8

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dns;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dns;->a(Lcom/google/android/gms/internal/ads/dns;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dns;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dns;->b(Lcom/google/android/gms/internal/ads/dns;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dnu;->c(I)V

    .line 75
    :goto_2
    return v6

    :cond_0
    move v0, v7

    .line 11
    goto :goto_0

    .line 16
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    if-nez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->c:Lcom/google/android/gms/internal/ads/dob;

    invoke-virtual {v0, p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/dob;->a(Lcom/google/android/gms/internal/ads/dng;ZZI)J

    move-result-wide v0

    .line 18
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->a()V

    .line 21
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->a:[B

    invoke-interface {p1, v0, v7, v8}, Lcom/google/android/gms/internal/ads/dng;->c([BII)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->a:[B

    aget-byte v0, v0, v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dob;->a(I)I

    move-result v0

    .line 23
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-gt v0, v8, :cond_3

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnq;->a:[B

    invoke-static {v1, v0, v7}, Lcom/google/android/gms/internal/ads/dob;->a([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/dnu;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dng;->b(I)V

    .line 27
    int-to-long v0, v1

    .line 31
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    move v6, v7

    .line 32
    goto :goto_2

    .line 28
    :cond_3
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/dng;->b(I)V

    goto :goto_3

    .line 33
    :cond_4
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    .line 34
    iput v6, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    .line 35
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    if-ne v0, v6, :cond_6

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->c:Lcom/google/android/gms/internal/ads/dob;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v7, v6, v1}, Lcom/google/android/gms/internal/ads/dob;->a(Lcom/google/android/gms/internal/ads/dng;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnu;->a(I)I

    move-result v0

    .line 39
    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid element type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v2

    .line 41
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    add-long/2addr v0, v2

    .line 42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dnq;->b:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/dns;

    iget v8, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    const/4 v9, 0x0

    invoke-direct {v5, v8, v0, v1, v9}, Lcom/google/android/gms/internal/ads/dns;-><init>(IJLcom/google/android/gms/internal/ads/dnt;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dnu;->a(IJJ)V

    .line 44
    iput v7, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    goto/16 :goto_2

    .line 46
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    const/16 v1, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Invalid integer size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dnq;->a(Lcom/google/android/gms/internal/ads/dng;I)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dnu;->a(IJ)V

    .line 49
    iput v7, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    goto/16 :goto_2

    .line 51
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    const/16 v1, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Invalid float size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    iget v3, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    long-to-int v0, v0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dnq;->a(Lcom/google/android/gms/internal/ads/dng;I)J

    move-result-wide v4

    .line 55
    if-ne v0, v8, :cond_9

    .line 56
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 59
    :goto_4
    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/dnu;->a(ID)V

    .line 60
    iput v7, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    goto/16 :goto_2

    .line 57
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_4

    .line 62
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    const/16 v1, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "String element size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    long-to-int v0, v4

    .line 65
    if-nez v0, :cond_b

    .line 66
    const-string/jumbo v0, ""

    .line 70
    :goto_5
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/dnu;->a(ILjava/lang/String;)V

    .line 71
    iput v7, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    goto/16 :goto_2

    .line 67
    :cond_b
    new-array v3, v0, [B

    .line 68
    invoke-interface {p1, v3, v7, v0}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    .line 73
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnq;->d:Lcom/google/android/gms/internal/ads/dnu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dnq;->f:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    long-to-int v2, v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/dnu;->a(IILcom/google/android/gms/internal/ads/dng;)V

    .line 74
    iput v7, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    goto/16 :goto_2

    .line 76
    :pswitch_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnq;->g:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dng;->b(I)V

    .line 77
    iput v7, p0, Lcom/google/android/gms/internal/ads/dnq;->e:I

    goto/16 :goto_1

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
