.class public final Lcom/dropbox/core/v2/clouddocs/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/clouddocs/k$a;,
        Lcom/dropbox/core/v2/clouddocs/k$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/clouddocs/k;


# instance fields
.field b:Lcom/dropbox/core/v2/clouddocs/k$b;

.field private c:Lcom/dropbox/core/v2/clouddocs/j;

.field private d:Lcom/dropbox/core/v2/clouddocs/c;

.field private e:Lcom/dropbox/core/v2/clouddocs/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/k$b;->OTHER:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 2076
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    .line 2077
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 57
    sput-object v1, Lcom/dropbox/core/v2/clouddocs/k;->a:Lcom/dropbox/core/v2/clouddocs/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/clouddocs/k;)Lcom/dropbox/core/v2/clouddocs/j;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/k;->c:Lcom/dropbox/core/v2/clouddocs/j;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/clouddocs/c;)Lcom/dropbox/core/v2/clouddocs/k;
    .locals 2

    if-eqz p0, :cond_0

    .line 219
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/k$b;->GENERIC_ERROR:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 1105
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    .line 1106
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 1107
    iput-object p0, v1, Lcom/dropbox/core/v2/clouddocs/k;->d:Lcom/dropbox/core/v2/clouddocs/c;

    return-object v1

    .line 217
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/clouddocs/g;)Lcom/dropbox/core/v2/clouddocs/k;
    .locals 2

    if-eqz p0, :cond_0

    .line 266
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/k$b;->LOCKING_ERROR:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 1120
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    .line 1121
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 1122
    iput-object p0, v1, Lcom/dropbox/core/v2/clouddocs/k;->e:Lcom/dropbox/core/v2/clouddocs/g;

    return-object v1

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/clouddocs/j;)Lcom/dropbox/core/v2/clouddocs/k;
    .locals 2

    if-eqz p0, :cond_0

    .line 172
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/k$b;->RENAME_ERROR:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 1090
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/k;-><init>()V

    .line 1091
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 1092
    iput-object p0, v1, Lcom/dropbox/core/v2/clouddocs/k;->c:Lcom/dropbox/core/v2/clouddocs/j;

    return-object v1

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/clouddocs/k;)Lcom/dropbox/core/v2/clouddocs/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/k;->d:Lcom/dropbox/core/v2/clouddocs/c;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/clouddocs/k;)Lcom/dropbox/core/v2/clouddocs/g;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/k;->e:Lcom/dropbox/core/v2/clouddocs/g;

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

    .line 315
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/clouddocs/k;

    if-eqz v2, :cond_d

    .line 316
    check-cast p1, Lcom/dropbox/core/v2/clouddocs/k;

    .line 317
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 320
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/clouddocs/k$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/clouddocs/k$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 326
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/k;->e:Lcom/dropbox/core/v2/clouddocs/g;

    iget-object p1, p1, Lcom/dropbox/core/v2/clouddocs/k;->e:Lcom/dropbox/core/v2/clouddocs/g;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/clouddocs/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 324
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/k;->d:Lcom/dropbox/core/v2/clouddocs/c;

    iget-object p1, p1, Lcom/dropbox/core/v2/clouddocs/k;->d:Lcom/dropbox/core/v2/clouddocs/c;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/clouddocs/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v0

    .line 322
    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/k;->c:Lcom/dropbox/core/v2/clouddocs/j;

    iget-object p1, p1, Lcom/dropbox/core/v2/clouddocs/k;->c:Lcom/dropbox/core/v2/clouddocs/j;

    if-eq v2, p1, :cond_c

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/clouddocs/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    return v1

    :cond_c
    :goto_2
    return v0

    :cond_d
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 298
    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/k;->c:Lcom/dropbox/core/v2/clouddocs/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/k;->d:Lcom/dropbox/core/v2/clouddocs/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/k;->e:Lcom/dropbox/core/v2/clouddocs/g;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 340
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/k$a;->a:Lcom/dropbox/core/v2/clouddocs/k$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/clouddocs/k$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
