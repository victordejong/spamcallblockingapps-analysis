.class public final Lcom/dropbox/core/v2/sharing/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ae$a;,
        Lcom/dropbox/core/v2/sharing/ae$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ae;

.field public static final b:Lcom/dropbox/core/v2/sharing/ae;


# instance fields
.field c:Lcom/dropbox/core/v2/sharing/ae$b;

.field private d:Lcom/dropbox/core/v2/sharing/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/ae;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ae;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ae$b;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ae$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ae;->a(Lcom/dropbox/core/v2/sharing/ae$b;)Lcom/dropbox/core/v2/sharing/ae;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ae;->a:Lcom/dropbox/core/v2/sharing/ae;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/ae;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ae;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ae$b;->OTHER:Lcom/dropbox/core/v2/sharing/ae$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ae;->a(Lcom/dropbox/core/v2/sharing/ae$b;)Lcom/dropbox/core/v2/sharing/ae;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ae;->b:Lcom/dropbox/core/v2/sharing/ae;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/ae$b;)Lcom/dropbox/core/v2/sharing/ae;
    .locals 1

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/ae;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ae;-><init>()V

    .line 89
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/ae;->c:Lcom/dropbox/core/v2/sharing/ae$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bn;)Lcom/dropbox/core/v2/sharing/ae;
    .locals 2

    if-eqz p0, :cond_0

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/sharing/ae;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ae;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ae$b;->USER_ERROR:Lcom/dropbox/core/v2/sharing/ae$b;

    .line 1105
    new-instance v1, Lcom/dropbox/core/v2/sharing/ae;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/ae;-><init>()V

    .line 1106
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/ae;->c:Lcom/dropbox/core/v2/sharing/ae$b;

    .line 1107
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/ae;->d:Lcom/dropbox/core/v2/sharing/bn;

    return-object v1

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ae;)Lcom/dropbox/core/v2/sharing/bn;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ae;->d:Lcom/dropbox/core/v2/sharing/bn;

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

    .line 216
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ae;

    if-eqz v2, :cond_7

    .line 217
    check-cast p1, Lcom/dropbox/core/v2/sharing/ae;

    .line 218
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ae;->c:Lcom/dropbox/core/v2/sharing/ae$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ae;->c:Lcom/dropbox/core/v2/sharing/ae$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 221
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ae$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ae;->c:Lcom/dropbox/core/v2/sharing/ae$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ae$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 223
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ae;->d:Lcom/dropbox/core/v2/sharing/bn;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ae;->d:Lcom/dropbox/core/v2/sharing/bn;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bn;->equals(Ljava/lang/Object;)Z

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

    .line 201
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ae;->c:Lcom/dropbox/core/v2/sharing/ae$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ae;->d:Lcom/dropbox/core/v2/sharing/bn;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 239
    sget-object v0, Lcom/dropbox/core/v2/sharing/ae$a;->a:Lcom/dropbox/core/v2/sharing/ae$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ae$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
