.class public Lvh0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>(ZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lvh0;->b:J

    iput p4, p0, Lvh0;->a:I

    return-void
.end method

.method public static b(Ljava/lang/String;II)Lvh0;
    .locals 10

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    move v3, p1

    :goto_0
    if-ge v3, p2, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    const-wide/16 v6, 0x10

    if-lt v4, v5, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    mul-long v1, v1, v6

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v1, v4

    goto :goto_2

    :cond_1
    const-wide/16 v8, 0xa

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x46

    if-gt v4, v5, :cond_2

    mul-long v1, v1, v6

    add-int/lit8 v4, v4, -0x41

    :goto_1
    int-to-long v4, v4

    add-long/2addr v1, v4

    add-long/2addr v1, v8

    goto :goto_2

    :cond_2
    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    const/16 v5, 0x66

    if-gt v4, v5, :cond_4

    mul-long v1, v1, v6

    add-int/lit8 v4, v4, -0x61

    goto :goto_1

    :goto_2
    const-wide v4, 0xffffffffL

    cmp-long v6, v1, v4

    if-lez v6, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-ne v3, p1, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Lvh0;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lvh0;-><init>(ZJI)V

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lvh0;->a:I

    return v0
.end method

.method public c()I
    .locals 2

    iget-wide v0, p0, Lvh0;->b:J

    long-to-int v1, v0

    return v1
.end method
