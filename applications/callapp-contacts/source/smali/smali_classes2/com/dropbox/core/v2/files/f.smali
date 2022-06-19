.class public final Lcom/dropbox/core/v2/files/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/f$a;,
        Lcom/dropbox/core/v2/files/f$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/f;

.field public static final b:Lcom/dropbox/core/v2/files/f;

.field public static final c:Lcom/dropbox/core/v2/files/f;


# instance fields
.field d:Lcom/dropbox/core/v2/files/f$b;

.field private e:Lcom/dropbox/core/v2/files/ai;

.field private f:Lcom/dropbox/core/v2/files/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/f$b;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/f;->a(Lcom/dropbox/core/v2/files/f$b;)Lcom/dropbox/core/v2/files/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/f;->a:Lcom/dropbox/core/v2/files/f;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/f$b;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/f;->a(Lcom/dropbox/core/v2/files/f$b;)Lcom/dropbox/core/v2/files/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/f;->b:Lcom/dropbox/core/v2/files/f;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/f$b;->OTHER:Lcom/dropbox/core/v2/files/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/f;->a(Lcom/dropbox/core/v2/files/f$b;)Lcom/dropbox/core/v2/files/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/f;->c:Lcom/dropbox/core/v2/files/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/f;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/f;->e:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/f;
    .locals 2

    if-eqz p0, :cond_0

    .line 174
    new-instance v0, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/f$b;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/f$b;

    .line 1107
    new-instance v1, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/f;-><init>()V

    .line 1108
    iput-object v0, v1, Lcom/dropbox/core/v2/files/f;->d:Lcom/dropbox/core/v2/files/f$b;

    .line 1109
    iput-object p0, v1, Lcom/dropbox/core/v2/files/f;->e:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/f;
    .locals 2

    if-eqz p0, :cond_0

    .line 220
    new-instance v0, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/f$b;->PATH_WRITE:Lcom/dropbox/core/v2/files/f$b;

    .line 1122
    new-instance v1, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/f;-><init>()V

    .line 1123
    iput-object v0, v1, Lcom/dropbox/core/v2/files/f;->d:Lcom/dropbox/core/v2/files/f$b;

    .line 1124
    iput-object p0, v1, Lcom/dropbox/core/v2/files/f;->f:Lcom/dropbox/core/v2/files/bl;

    return-object v1

    .line 218
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/f$b;)Lcom/dropbox/core/v2/files/f;
    .locals 1

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/files/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/f;-><init>()V

    .line 94
    iput-object p0, v0, Lcom/dropbox/core/v2/files/f;->d:Lcom/dropbox/core/v2/files/f$b;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/f;)Lcom/dropbox/core/v2/files/bl;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/f;->f:Lcom/dropbox/core/v2/files/bl;

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

    .line 289
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/f;

    if-eqz v2, :cond_a

    .line 290
    check-cast p1, Lcom/dropbox/core/v2/files/f;

    .line 291
    iget-object v2, p0, Lcom/dropbox/core/v2/files/f;->d:Lcom/dropbox/core/v2/files/f$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/f;->d:Lcom/dropbox/core/v2/files/f$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 294
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/f$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/f;->d:Lcom/dropbox/core/v2/files/f$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/f$b;->ordinal()I

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

    .line 298
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/f;->f:Lcom/dropbox/core/v2/files/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/f;->f:Lcom/dropbox/core/v2/files/bl;

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

    .line 296
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/f;->e:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/f;->e:Lcom/dropbox/core/v2/files/ai;

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

    .line 273
    iget-object v1, p0, Lcom/dropbox/core/v2/files/f;->d:Lcom/dropbox/core/v2/files/f$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/f;->e:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/f;->f:Lcom/dropbox/core/v2/files/bl;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/files/f$a;->a:Lcom/dropbox/core/v2/files/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/f$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
