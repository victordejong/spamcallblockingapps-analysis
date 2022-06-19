.class public final Lcom/dropbox/core/v2/sharing/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/d$a;,
        Lcom/dropbox/core/v2/sharing/d$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/d;

.field public static final b:Lcom/dropbox/core/v2/sharing/d;

.field public static final c:Lcom/dropbox/core/v2/sharing/d;


# instance fields
.field d:Lcom/dropbox/core/v2/sharing/d$b;

.field private e:Lcom/dropbox/core/v2/sharing/bn;

.field private f:Lcom/dropbox/core/v2/sharing/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/d$b;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/d$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/d;->a(Lcom/dropbox/core/v2/sharing/d$b;)Lcom/dropbox/core/v2/sharing/d;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/d;->a:Lcom/dropbox/core/v2/sharing/d;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/d$b;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/d$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/d;->a(Lcom/dropbox/core/v2/sharing/d$b;)Lcom/dropbox/core/v2/sharing/d;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/d;->b:Lcom/dropbox/core/v2/sharing/d;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/d$b;->OTHER:Lcom/dropbox/core/v2/sharing/d$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/d;->a(Lcom/dropbox/core/v2/sharing/d$b;)Lcom/dropbox/core/v2/sharing/d;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/d;->c:Lcom/dropbox/core/v2/sharing/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/d;)Lcom/dropbox/core/v2/sharing/bn;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/d;->e:Lcom/dropbox/core/v2/sharing/bn;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/d;
    .locals 2

    if-eqz p0, :cond_0

    .line 226
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/d$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/d$b;

    .line 1128
    new-instance v1, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    .line 1129
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    .line 1130
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/d;->f:Lcom/dropbox/core/v2/sharing/bm;

    return-object v1

    .line 224
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bn;)Lcom/dropbox/core/v2/sharing/d;
    .locals 2

    if-eqz p0, :cond_0

    .line 180
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/d$b;->USER_ERROR:Lcom/dropbox/core/v2/sharing/d$b;

    .line 1111
    new-instance v1, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    .line 1112
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    .line 1113
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/d;->e:Lcom/dropbox/core/v2/sharing/bn;

    return-object v1

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/d$b;)Lcom/dropbox/core/v2/sharing/d;
    .locals 1

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/d;-><init>()V

    .line 96
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/d;)Lcom/dropbox/core/v2/sharing/bm;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/d;->f:Lcom/dropbox/core/v2/sharing/bm;

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

    .line 296
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/d;

    if-eqz v2, :cond_a

    .line 297
    check-cast p1, Lcom/dropbox/core/v2/sharing/d;

    .line 298
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 301
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/d$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/d$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/d;->f:Lcom/dropbox/core/v2/sharing/bm;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/d;->f:Lcom/dropbox/core/v2/sharing/bm;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 303
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/d;->e:Lcom/dropbox/core/v2/sharing/bn;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/d;->e:Lcom/dropbox/core/v2/sharing/bn;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v0

    :cond_a
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/d;->e:Lcom/dropbox/core/v2/sharing/bn;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/d;->f:Lcom/dropbox/core/v2/sharing/bm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/sharing/d$a;->a:Lcom/dropbox/core/v2/sharing/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/d$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
