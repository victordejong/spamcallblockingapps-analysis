.class public final Lcom/dropbox/core/v2/files/at;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/at$a;,
        Lcom/dropbox/core/v2/files/at$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/at;

.field public static final b:Lcom/dropbox/core/v2/files/at;


# instance fields
.field c:Lcom/dropbox/core/v2/files/at$b;

.field private d:Lcom/dropbox/core/v2/files/ai;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/files/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/at$b;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/at;->a(Lcom/dropbox/core/v2/files/at$b;)Lcom/dropbox/core/v2/files/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/at;->a:Lcom/dropbox/core/v2/files/at;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/at$b;->OTHER:Lcom/dropbox/core/v2/files/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/at;->a(Lcom/dropbox/core/v2/files/at$b;)Lcom/dropbox/core/v2/files/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/at;->b:Lcom/dropbox/core/v2/files/at;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/at;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/at;->d:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a()Lcom/dropbox/core/v2/files/at;
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-static {v0}, Lcom/dropbox/core/v2/files/at;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/at;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/at;
    .locals 2

    if-eqz p0, :cond_0

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/files/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/at$b;->PATH:Lcom/dropbox/core/v2/files/at$b;

    .line 1096
    new-instance v1, Lcom/dropbox/core/v2/files/at;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/at;-><init>()V

    .line 1097
    iput-object v0, v1, Lcom/dropbox/core/v2/files/at;->c:Lcom/dropbox/core/v2/files/at$b;

    .line 1098
    iput-object p0, v1, Lcom/dropbox/core/v2/files/at;->d:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 157
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/at$b;)Lcom/dropbox/core/v2/files/at;
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/files/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/at;-><init>()V

    .line 83
    iput-object p0, v0, Lcom/dropbox/core/v2/files/at;->c:Lcom/dropbox/core/v2/files/at$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/at;
    .locals 2

    .line 200
    new-instance v0, Lcom/dropbox/core/v2/files/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/at$b;->INVALID_ARGUMENT:Lcom/dropbox/core/v2/files/at$b;

    .line 1107
    new-instance v1, Lcom/dropbox/core/v2/files/at;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/at;-><init>()V

    .line 1108
    iput-object v0, v1, Lcom/dropbox/core/v2/files/at;->c:Lcom/dropbox/core/v2/files/at$b;

    .line 1109
    iput-object p0, v1, Lcom/dropbox/core/v2/files/at;->e:Ljava/lang/String;

    return-object v1
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/at;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/at;->e:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/at;

    if-eqz v2, :cond_a

    .line 273
    check-cast p1, Lcom/dropbox/core/v2/files/at;

    .line 274
    iget-object v2, p0, Lcom/dropbox/core/v2/files/at;->c:Lcom/dropbox/core/v2/files/at$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/at;->c:Lcom/dropbox/core/v2/files/at$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 277
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/at$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/at;->c:Lcom/dropbox/core/v2/files/at$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/at$b;->ordinal()I

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

    .line 281
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/at;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/at;->e:Ljava/lang/String;

    if-eq v2, p1, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lcom/dropbox/core/v2/files/at;->d:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/at;->d:Lcom/dropbox/core/v2/files/ai;

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

    .line 256
    iget-object v1, p0, Lcom/dropbox/core/v2/files/at;->c:Lcom/dropbox/core/v2/files/at$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/at;->d:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/at;->e:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 297
    sget-object v0, Lcom/dropbox/core/v2/files/at$a;->a:Lcom/dropbox/core/v2/files/at$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/at$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
