.class public final Lcom/dropbox/core/v2/files/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ac$a;,
        Lcom/dropbox/core/v2/files/ac$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ac;


# instance fields
.field b:Lcom/dropbox/core/v2/files/ac$b;

.field private c:Lcom/dropbox/core/v2/files/ai;

.field private d:Lcom/dropbox/core/v2/fileproperties/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/files/ac;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ac;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ac$b;->OTHER:Lcom/dropbox/core/v2/files/ac$b;

    .line 2075
    new-instance v1, Lcom/dropbox/core/v2/files/ac;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ac;-><init>()V

    .line 2076
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ac;->b:Lcom/dropbox/core/v2/files/ac$b;

    .line 57
    sput-object v1, Lcom/dropbox/core/v2/files/ac;->a:Lcom/dropbox/core/v2/files/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/fileproperties/l;)Lcom/dropbox/core/v2/files/ac;
    .locals 2

    if-eqz p0, :cond_0

    .line 202
    new-instance v0, Lcom/dropbox/core/v2/files/ac;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ac;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ac$b;->TEMPLATE_ERROR:Lcom/dropbox/core/v2/files/ac$b;

    .line 1104
    new-instance v1, Lcom/dropbox/core/v2/files/ac;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ac;-><init>()V

    .line 1105
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ac;->b:Lcom/dropbox/core/v2/files/ac$b;

    .line 1106
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ac;->d:Lcom/dropbox/core/v2/fileproperties/l;

    return-object v1

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ac;
    .locals 2

    if-eqz p0, :cond_0

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/files/ac;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ac;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ac$b;->PATH:Lcom/dropbox/core/v2/files/ac$b;

    .line 1089
    new-instance v1, Lcom/dropbox/core/v2/files/ac;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ac;-><init>()V

    .line 1090
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ac;->b:Lcom/dropbox/core/v2/files/ac$b;

    .line 1091
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ac;->c:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/ac;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ac;->c:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/ac;)Lcom/dropbox/core/v2/fileproperties/l;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ac;->d:Lcom/dropbox/core/v2/fileproperties/l;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ac;

    if-eqz v2, :cond_a

    .line 251
    check-cast p1, Lcom/dropbox/core/v2/files/ac;

    .line 252
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ac;->b:Lcom/dropbox/core/v2/files/ac$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ac;->b:Lcom/dropbox/core/v2/files/ac$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 255
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/ac$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ac;->b:Lcom/dropbox/core/v2/files/ac$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ac$b;->ordinal()I

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
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ac;->d:Lcom/dropbox/core/v2/fileproperties/l;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ac;->d:Lcom/dropbox/core/v2/fileproperties/l;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/l;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ac;->c:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ac;->c:Lcom/dropbox/core/v2/files/ai;

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

    .line 234
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ac;->b:Lcom/dropbox/core/v2/files/ac$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ac;->c:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ac;->d:Lcom/dropbox/core/v2/fileproperties/l;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 273
    sget-object v0, Lcom/dropbox/core/v2/files/ac$a;->a:Lcom/dropbox/core/v2/files/ac$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ac$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
