.class public final Lcom/dropbox/core/v2/team/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/bg$a;,
        Lcom/dropbox/core/v2/team/bg$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/bg;


# instance fields
.field b:Lcom/dropbox/core/v2/team/bg$b;

.field private c:Lcom/dropbox/core/v2/team/aw;

.field private d:Lcom/dropbox/core/v2/team/ba;

.field private e:Lcom/dropbox/core/v2/team/bf;

.field private f:Lcom/dropbox/core/v2/files/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bg$b;->OTHER:Lcom/dropbox/core/v2/team/bg$b;

    .line 2078
    new-instance v1, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    .line 2079
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    .line 58
    sput-object v1, Lcom/dropbox/core/v2/team/bg;->a:Lcom/dropbox/core/v2/team/bg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/team/aw;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/bg;->c:Lcom/dropbox/core/v2/team/aw;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ay;)Lcom/dropbox/core/v2/team/bg;
    .locals 2

    if-eqz p0, :cond_0

    .line 340
    new-instance v0, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bg$b;->SYNC_SETTINGS_ERROR:Lcom/dropbox/core/v2/team/bg$b;

    .line 1138
    new-instance v1, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    .line 1139
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    .line 1140
    iput-object p0, v1, Lcom/dropbox/core/v2/team/bg;->f:Lcom/dropbox/core/v2/files/ay;

    return-object v1

    .line 338
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/aw;)Lcom/dropbox/core/v2/team/bg;
    .locals 2

    if-eqz p0, :cond_0

    .line 187
    new-instance v0, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bg$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/bg$b;

    .line 1092
    new-instance v1, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    .line 1093
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    .line 1094
    iput-object p0, v1, Lcom/dropbox/core/v2/team/bg;->c:Lcom/dropbox/core/v2/team/aw;

    return-object v1

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/ba;)Lcom/dropbox/core/v2/team/bg;
    .locals 2

    if-eqz p0, :cond_0

    .line 234
    new-instance v0, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bg$b;->STATUS_ERROR:Lcom/dropbox/core/v2/team/bg$b;

    .line 1107
    new-instance v1, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    .line 1108
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    .line 1109
    iput-object p0, v1, Lcom/dropbox/core/v2/team/bg;->d:Lcom/dropbox/core/v2/team/ba;

    return-object v1

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/bf;)Lcom/dropbox/core/v2/team/bg;
    .locals 2

    if-eqz p0, :cond_0

    .line 281
    new-instance v0, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bg$b;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/bg$b;

    .line 1122
    new-instance v1, Lcom/dropbox/core/v2/team/bg;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bg;-><init>()V

    .line 1123
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    .line 1124
    iput-object p0, v1, Lcom/dropbox/core/v2/team/bg;->e:Lcom/dropbox/core/v2/team/bf;

    return-object v1

    .line 279
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/team/ba;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/bg;->d:Lcom/dropbox/core/v2/team/ba;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/team/bf;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/bg;->e:Lcom/dropbox/core/v2/team/bf;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/files/ay;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/bg;->f:Lcom/dropbox/core/v2/files/ay;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 382
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/bg;

    if-eqz v2, :cond_f

    .line 383
    check-cast p1, Lcom/dropbox/core/v2/team/bg;

    .line 384
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 387
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/bg$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/bg$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    return v1

    .line 397
    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bg;->f:Lcom/dropbox/core/v2/files/ay;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/bg;->f:Lcom/dropbox/core/v2/files/ay;

    if-eq v2, p1, :cond_5

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ay;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0

    .line 393
    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bg;->e:Lcom/dropbox/core/v2/team/bf;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/bg;->e:Lcom/dropbox/core/v2/team/bf;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/bf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v0

    .line 391
    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bg;->d:Lcom/dropbox/core/v2/team/ba;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/bg;->d:Lcom/dropbox/core/v2/team/ba;

    if-eq v2, p1, :cond_b

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/ba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    return v1

    :cond_b
    :goto_2
    return v0

    .line 389
    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bg;->c:Lcom/dropbox/core/v2/team/aw;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/bg;->c:Lcom/dropbox/core/v2/team/aw;

    if-eq v2, p1, :cond_e

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/aw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    return v1

    :cond_e
    :goto_3
    return v0

    :cond_f
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 363
    iget-object v1, p0, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/bg;->c:Lcom/dropbox/core/v2/team/aw;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/bg;->d:Lcom/dropbox/core/v2/team/ba;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/bg;->e:Lcom/dropbox/core/v2/team/bf;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/bg;->f:Lcom/dropbox/core/v2/files/ay;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 370
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 409
    sget-object v0, Lcom/dropbox/core/v2/team/bg$a;->a:Lcom/dropbox/core/v2/team/bg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/bg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
