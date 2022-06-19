.class public final Lcom/dropbox/core/v2/files/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/bc$a;,
        Lcom/dropbox/core/v2/files/bc$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bc;


# instance fields
.field b:Lcom/dropbox/core/v2/files/bc$b;

.field private c:Lcom/dropbox/core/v2/files/bi;

.field private d:Lcom/dropbox/core/v2/fileproperties/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/bc;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bc;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bc$b;->OTHER:Lcom/dropbox/core/v2/files/bc$b;

    .line 2082
    new-instance v1, Lcom/dropbox/core/v2/files/bc;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/bc;-><init>()V

    .line 2083
    iput-object v0, v1, Lcom/dropbox/core/v2/files/bc;->b:Lcom/dropbox/core/v2/files/bc$b;

    .line 64
    sput-object v1, Lcom/dropbox/core/v2/files/bc;->a:Lcom/dropbox/core/v2/files/bc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/fileproperties/c;)Lcom/dropbox/core/v2/files/bc;
    .locals 2

    if-eqz p0, :cond_0

    .line 214
    new-instance v0, Lcom/dropbox/core/v2/files/bc;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bc;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bc$b;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/bc$b;

    .line 1113
    new-instance v1, Lcom/dropbox/core/v2/files/bc;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/bc;-><init>()V

    .line 1114
    iput-object v0, v1, Lcom/dropbox/core/v2/files/bc;->b:Lcom/dropbox/core/v2/files/bc$b;

    .line 1115
    iput-object p0, v1, Lcom/dropbox/core/v2/files/bc;->d:Lcom/dropbox/core/v2/fileproperties/c;

    return-object v1

    .line 212
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bi;)Lcom/dropbox/core/v2/files/bc;
    .locals 2

    if-eqz p0, :cond_0

    .line 165
    new-instance v0, Lcom/dropbox/core/v2/files/bc;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bc;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bc$b;->PATH:Lcom/dropbox/core/v2/files/bc$b;

    .line 1097
    new-instance v1, Lcom/dropbox/core/v2/files/bc;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/bc;-><init>()V

    .line 1098
    iput-object v0, v1, Lcom/dropbox/core/v2/files/bc;->b:Lcom/dropbox/core/v2/files/bc$b;

    .line 1099
    iput-object p0, v1, Lcom/dropbox/core/v2/files/bc;->c:Lcom/dropbox/core/v2/files/bi;

    return-object v1

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/bc;)Lcom/dropbox/core/v2/files/bi;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/files/bc;->c:Lcom/dropbox/core/v2/files/bi;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/bc;)Lcom/dropbox/core/v2/fileproperties/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/files/bc;->d:Lcom/dropbox/core/v2/fileproperties/c;

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

    .line 265
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/bc;

    if-eqz v2, :cond_a

    .line 266
    check-cast p1, Lcom/dropbox/core/v2/files/bc;

    .line 267
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bc;->b:Lcom/dropbox/core/v2/files/bc$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bc;->b:Lcom/dropbox/core/v2/files/bc$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 270
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/bc$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/bc;->b:Lcom/dropbox/core/v2/files/bc$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/bc$b;->ordinal()I

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

    .line 274
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bc;->d:Lcom/dropbox/core/v2/fileproperties/c;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/bc;->d:Lcom/dropbox/core/v2/fileproperties/c;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 272
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bc;->c:Lcom/dropbox/core/v2/files/bi;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/bc;->c:Lcom/dropbox/core/v2/files/bi;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bi;->equals(Ljava/lang/Object;)Z

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

    .line 249
    iget-object v1, p0, Lcom/dropbox/core/v2/files/bc;->b:Lcom/dropbox/core/v2/files/bc$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/bc;->c:Lcom/dropbox/core/v2/files/bi;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/bc;->d:Lcom/dropbox/core/v2/fileproperties/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 288
    sget-object v0, Lcom/dropbox/core/v2/files/bc$a;->a:Lcom/dropbox/core/v2/files/bc$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/bc$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
