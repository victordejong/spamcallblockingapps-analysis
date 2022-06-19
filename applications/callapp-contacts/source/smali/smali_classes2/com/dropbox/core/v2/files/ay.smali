.class public final Lcom/dropbox/core/v2/files/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ay$a;,
        Lcom/dropbox/core/v2/files/ay$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ay;

.field public static final b:Lcom/dropbox/core/v2/files/ay;

.field public static final c:Lcom/dropbox/core/v2/files/ay;


# instance fields
.field d:Lcom/dropbox/core/v2/files/ay$b;

.field private e:Lcom/dropbox/core/v2/files/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ay$b;->UNSUPPORTED_COMBINATION:Lcom/dropbox/core/v2/files/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ay;->a(Lcom/dropbox/core/v2/files/ay$b;)Lcom/dropbox/core/v2/files/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ay;->a:Lcom/dropbox/core/v2/files/ay;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/files/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ay$b;->UNSUPPORTED_CONFIGURATION:Lcom/dropbox/core/v2/files/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ay;->a(Lcom/dropbox/core/v2/files/ay$b;)Lcom/dropbox/core/v2/files/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ay;->b:Lcom/dropbox/core/v2/files/ay;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/files/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ay$b;->OTHER:Lcom/dropbox/core/v2/files/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ay;->a(Lcom/dropbox/core/v2/files/ay$b;)Lcom/dropbox/core/v2/files/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ay;->c:Lcom/dropbox/core/v2/files/ay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/ay;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ay;->e:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ay;
    .locals 2

    if-eqz p0, :cond_0

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/files/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ay$b;->PATH:Lcom/dropbox/core/v2/files/ay$b;

    .line 1104
    new-instance v1, Lcom/dropbox/core/v2/files/ay;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ay;-><init>()V

    .line 1105
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ay;->d:Lcom/dropbox/core/v2/files/ay$b;

    .line 1106
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ay;->e:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/ay$b;)Lcom/dropbox/core/v2/files/ay;
    .locals 1

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ay;-><init>()V

    .line 91
    iput-object p0, v0, Lcom/dropbox/core/v2/files/ay;->d:Lcom/dropbox/core/v2/files/ay$b;

    return-object v0
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

    .line 224
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ay;

    if-eqz v2, :cond_7

    .line 225
    check-cast p1, Lcom/dropbox/core/v2/files/ay;

    .line 226
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ay;->d:Lcom/dropbox/core/v2/files/ay$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ay;->d:Lcom/dropbox/core/v2/files/ay$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 229
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/ay$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ay;->d:Lcom/dropbox/core/v2/files/ay$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ay$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 231
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ay;->e:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ay;->e:Lcom/dropbox/core/v2/files/ai;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ai;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ay;->d:Lcom/dropbox/core/v2/files/ay$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ay;->e:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 249
    sget-object v0, Lcom/dropbox/core/v2/files/ay$a;->a:Lcom/dropbox/core/v2/files/ay$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ay$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
