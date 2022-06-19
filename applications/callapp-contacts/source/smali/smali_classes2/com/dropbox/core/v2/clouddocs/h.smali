.class public final Lcom/dropbox/core/v2/clouddocs/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/clouddocs/h$a;,
        Lcom/dropbox/core/v2/clouddocs/h$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/clouddocs/h;


# instance fields
.field b:Lcom/dropbox/core/v2/clouddocs/h$b;

.field private c:Lcom/dropbox/core/v2/clouddocs/g;

.field private d:Lcom/dropbox/core/v2/clouddocs/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/h;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/h;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/h$b;->OTHER:Lcom/dropbox/core/v2/clouddocs/h$b;

    .line 2074
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/h;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/h;-><init>()V

    .line 2075
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/h;->b:Lcom/dropbox/core/v2/clouddocs/h$b;

    .line 56
    sput-object v1, Lcom/dropbox/core/v2/clouddocs/h;->a:Lcom/dropbox/core/v2/clouddocs/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/clouddocs/h;)Lcom/dropbox/core/v2/clouddocs/g;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/h;->c:Lcom/dropbox/core/v2/clouddocs/g;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/clouddocs/c;)Lcom/dropbox/core/v2/clouddocs/h;
    .locals 2

    if-eqz p0, :cond_0

    .line 202
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/h;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/h;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/h$b;->GENERIC_ERROR:Lcom/dropbox/core/v2/clouddocs/h$b;

    .line 1103
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/h;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/h;-><init>()V

    .line 1104
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/h;->b:Lcom/dropbox/core/v2/clouddocs/h$b;

    .line 1105
    iput-object p0, v1, Lcom/dropbox/core/v2/clouddocs/h;->d:Lcom/dropbox/core/v2/clouddocs/c;

    return-object v1

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/clouddocs/g;)Lcom/dropbox/core/v2/clouddocs/h;
    .locals 2

    if-eqz p0, :cond_0

    .line 155
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/h;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/h;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/h$b;->LOCKING_ERROR:Lcom/dropbox/core/v2/clouddocs/h$b;

    .line 1088
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/h;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/h;-><init>()V

    .line 1089
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/h;->b:Lcom/dropbox/core/v2/clouddocs/h$b;

    .line 1090
    iput-object p0, v1, Lcom/dropbox/core/v2/clouddocs/h;->c:Lcom/dropbox/core/v2/clouddocs/g;

    return-object v1

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/clouddocs/h;)Lcom/dropbox/core/v2/clouddocs/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/h;->d:Lcom/dropbox/core/v2/clouddocs/c;

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

    .line 250
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/clouddocs/h;

    if-eqz v2, :cond_a

    .line 251
    check-cast p1, Lcom/dropbox/core/v2/clouddocs/h;

    .line 252
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/h;->b:Lcom/dropbox/core/v2/clouddocs/h$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/h;->b:Lcom/dropbox/core/v2/clouddocs/h$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 255
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/clouddocs/h$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/clouddocs/h;->b:Lcom/dropbox/core/v2/clouddocs/h$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/clouddocs/h$b;->ordinal()I

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

    .line 259
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/h;->d:Lcom/dropbox/core/v2/clouddocs/c;

    iget-object p1, p1, Lcom/dropbox/core/v2/clouddocs/h;->d:Lcom/dropbox/core/v2/clouddocs/c;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/clouddocs/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 257
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/h;->c:Lcom/dropbox/core/v2/clouddocs/g;

    iget-object p1, p1, Lcom/dropbox/core/v2/clouddocs/h;->c:Lcom/dropbox/core/v2/clouddocs/g;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/clouddocs/g;->equals(Ljava/lang/Object;)Z

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

    .line 234
    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/h;->b:Lcom/dropbox/core/v2/clouddocs/h$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/h;->c:Lcom/dropbox/core/v2/clouddocs/g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/h;->d:Lcom/dropbox/core/v2/clouddocs/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 273
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/h$a;->a:Lcom/dropbox/core/v2/clouddocs/h$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/clouddocs/h$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
