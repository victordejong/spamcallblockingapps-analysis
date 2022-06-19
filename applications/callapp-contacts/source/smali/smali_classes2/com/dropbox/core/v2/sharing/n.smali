.class public final Lcom/dropbox/core/v2/sharing/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/n$a;,
        Lcom/dropbox/core/v2/sharing/n$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/n;

.field public static final b:Lcom/dropbox/core/v2/sharing/n;

.field public static final c:Lcom/dropbox/core/v2/sharing/n;


# instance fields
.field d:Lcom/dropbox/core/v2/sharing/n$b;

.field private e:Lcom/dropbox/core/v2/sharing/bm;

.field private f:Lcom/dropbox/core/v2/sharing/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/n$b;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/n;->a(Lcom/dropbox/core/v2/sharing/n$b;)Lcom/dropbox/core/v2/sharing/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/n;->a:Lcom/dropbox/core/v2/sharing/n;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/n$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/n;->a(Lcom/dropbox/core/v2/sharing/n$b;)Lcom/dropbox/core/v2/sharing/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/n;->b:Lcom/dropbox/core/v2/sharing/n;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/n$b;->OTHER:Lcom/dropbox/core/v2/sharing/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/n;->a(Lcom/dropbox/core/v2/sharing/n$b;)Lcom/dropbox/core/v2/sharing/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/n;->c:Lcom/dropbox/core/v2/sharing/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/n;)Lcom/dropbox/core/v2/sharing/bm;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/n;->e:Lcom/dropbox/core/v2/sharing/bm;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/ai;)Lcom/dropbox/core/v2/sharing/n;
    .locals 2

    if-eqz p0, :cond_0

    .line 256
    new-instance v0, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/n$b;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/n$b;

    .line 1131
    new-instance v1, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    .line 1132
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    .line 1133
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/n;->f:Lcom/dropbox/core/v2/sharing/ai;

    return-object v1

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/n;
    .locals 2

    if-eqz p0, :cond_0

    .line 205
    new-instance v0, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/n$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/n$b;

    .line 1113
    new-instance v1, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    .line 1114
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    .line 1115
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/n;->e:Lcom/dropbox/core/v2/sharing/bm;

    return-object v1

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/n$b;)Lcom/dropbox/core/v2/sharing/n;
    .locals 1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/n;-><init>()V

    .line 99
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/n;)Lcom/dropbox/core/v2/sharing/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/n;->f:Lcom/dropbox/core/v2/sharing/ai;

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

    .line 308
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/n;

    if-eqz v2, :cond_a

    .line 309
    check-cast p1, Lcom/dropbox/core/v2/sharing/n;

    .line 310
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 313
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/n$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/n$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_9

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/n;->f:Lcom/dropbox/core/v2/sharing/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/n;->f:Lcom/dropbox/core/v2/sharing/ai;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/ai;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 319
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/n;->e:Lcom/dropbox/core/v2/sharing/bm;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/n;->e:Lcom/dropbox/core/v2/sharing/bm;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bm;->equals(Ljava/lang/Object;)Z

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

    .line 292
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/n;->e:Lcom/dropbox/core/v2/sharing/bm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/n;->f:Lcom/dropbox/core/v2/sharing/ai;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/sharing/n$a;->a:Lcom/dropbox/core/v2/sharing/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/n$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
