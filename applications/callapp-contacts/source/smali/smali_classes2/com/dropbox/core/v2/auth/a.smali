.class public final Lcom/dropbox/core/v2/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/auth/a$a;,
        Lcom/dropbox/core/v2/auth/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/auth/a;


# instance fields
.field b:Lcom/dropbox/core/v2/auth/a$b;

.field private c:Lcom/dropbox/core/v2/auth/d;

.field private d:Lcom/dropbox/core/v2/auth/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/a;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/a$b;->OTHER:Lcom/dropbox/core/v2/auth/a$b;

    .line 2085
    new-instance v1, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v1}, Lcom/dropbox/core/v2/auth/a;-><init>()V

    .line 2086
    iput-object v0, v1, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    .line 65
    sput-object v1, Lcom/dropbox/core/v2/auth/a;->a:Lcom/dropbox/core/v2/auth/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/auth/d;)Lcom/dropbox/core/v2/auth/a;
    .locals 2

    if-eqz p0, :cond_0

    .line 172
    new-instance v0, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/a;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/a$b;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/a$b;

    .line 1102
    new-instance v1, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v1}, Lcom/dropbox/core/v2/auth/a;-><init>()V

    .line 1103
    iput-object v0, v1, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    .line 1104
    iput-object p0, v1, Lcom/dropbox/core/v2/auth/a;->c:Lcom/dropbox/core/v2/auth/d;

    return-object v1

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/auth/e;)Lcom/dropbox/core/v2/auth/a;
    .locals 2

    if-eqz p0, :cond_0

    .line 222
    new-instance v0, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/a;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/a$b;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/a$b;

    .line 1120
    new-instance v1, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v1}, Lcom/dropbox/core/v2/auth/a;-><init>()V

    .line 1121
    iput-object v0, v1, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    .line 1122
    iput-object p0, v1, Lcom/dropbox/core/v2/auth/a;->d:Lcom/dropbox/core/v2/auth/e;

    return-object v1

    .line 220
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/d;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/auth/a;->c:Lcom/dropbox/core/v2/auth/d;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/e;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/auth/a;->d:Lcom/dropbox/core/v2/auth/e;

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

    .line 272
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/auth/a;

    if-eqz v2, :cond_a

    .line 273
    check-cast p1, Lcom/dropbox/core/v2/auth/a;

    .line 274
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 277
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/auth/a$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/auth/a$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 281
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/a;->d:Lcom/dropbox/core/v2/auth/e;

    iget-object p1, p1, Lcom/dropbox/core/v2/auth/a;->d:Lcom/dropbox/core/v2/auth/e;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/auth/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 279
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/a;->c:Lcom/dropbox/core/v2/auth/d;

    iget-object p1, p1, Lcom/dropbox/core/v2/auth/a;->c:Lcom/dropbox/core/v2/auth/d;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/auth/d;->equals(Ljava/lang/Object;)Z

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

    .line 256
    iget-object v1, p0, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/a;->c:Lcom/dropbox/core/v2/auth/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/a;->d:Lcom/dropbox/core/v2/auth/e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 295
    sget-object v0, Lcom/dropbox/core/v2/auth/a$a;->a:Lcom/dropbox/core/v2/auth/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/a$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
