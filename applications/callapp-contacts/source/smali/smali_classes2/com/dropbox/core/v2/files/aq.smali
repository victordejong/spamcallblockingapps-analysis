.class public final Lcom/dropbox/core/v2/files/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/aq$a;,
        Lcom/dropbox/core/v2/files/aq$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/aq;

.field public static final b:Lcom/dropbox/core/v2/files/aq;


# instance fields
.field c:Lcom/dropbox/core/v2/files/aq$b;

.field private d:Lcom/dropbox/core/v2/files/ai;

.field private e:Lcom/dropbox/core/v2/files/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/aq$b;->INVALID_REVISION:Lcom/dropbox/core/v2/files/aq$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/aq;->a(Lcom/dropbox/core/v2/files/aq$b;)Lcom/dropbox/core/v2/files/aq;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/aq;->a:Lcom/dropbox/core/v2/files/aq;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/files/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/aq$b;->OTHER:Lcom/dropbox/core/v2/files/aq$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/aq;->a(Lcom/dropbox/core/v2/files/aq$b;)Lcom/dropbox/core/v2/files/aq;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/aq;->b:Lcom/dropbox/core/v2/files/aq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/aq;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/aq;->d:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/aq;
    .locals 2

    if-eqz p0, :cond_0

    .line 171
    new-instance v0, Lcom/dropbox/core/v2/files/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/aq$b;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/aq$b;

    .line 1103
    new-instance v1, Lcom/dropbox/core/v2/files/aq;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/aq;-><init>()V

    .line 1104
    iput-object v0, v1, Lcom/dropbox/core/v2/files/aq;->c:Lcom/dropbox/core/v2/files/aq$b;

    .line 1105
    iput-object p0, v1, Lcom/dropbox/core/v2/files/aq;->d:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/aq$b;)Lcom/dropbox/core/v2/files/aq;
    .locals 1

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/files/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aq;-><init>()V

    .line 89
    iput-object p0, v0, Lcom/dropbox/core/v2/files/aq;->c:Lcom/dropbox/core/v2/files/aq$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/aq;
    .locals 2

    if-eqz p0, :cond_0

    .line 219
    new-instance v0, Lcom/dropbox/core/v2/files/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/aq$b;->PATH_WRITE:Lcom/dropbox/core/v2/files/aq$b;

    .line 1119
    new-instance v1, Lcom/dropbox/core/v2/files/aq;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/aq;-><init>()V

    .line 1120
    iput-object v0, v1, Lcom/dropbox/core/v2/files/aq;->c:Lcom/dropbox/core/v2/files/aq$b;

    .line 1121
    iput-object p0, v1, Lcom/dropbox/core/v2/files/aq;->e:Lcom/dropbox/core/v2/files/bl;

    return-object v1

    .line 217
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/aq;)Lcom/dropbox/core/v2/files/bl;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/aq;->e:Lcom/dropbox/core/v2/files/bl;

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

    .line 279
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/aq;

    if-eqz v2, :cond_a

    .line 280
    check-cast p1, Lcom/dropbox/core/v2/files/aq;

    .line 281
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aq;->c:Lcom/dropbox/core/v2/files/aq$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/aq;->c:Lcom/dropbox/core/v2/files/aq$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 284
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/aq$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/aq;->c:Lcom/dropbox/core/v2/files/aq$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/aq$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 288
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aq;->e:Lcom/dropbox/core/v2/files/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/aq;->e:Lcom/dropbox/core/v2/files/bl;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 286
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aq;->d:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/aq;->d:Lcom/dropbox/core/v2/files/ai;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ai;->equals(Ljava/lang/Object;)Z

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

    .line 263
    iget-object v1, p0, Lcom/dropbox/core/v2/files/aq;->c:Lcom/dropbox/core/v2/files/aq$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/aq;->d:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/aq;->e:Lcom/dropbox/core/v2/files/bl;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/files/aq$a;->a:Lcom/dropbox/core/v2/files/aq$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/aq$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
