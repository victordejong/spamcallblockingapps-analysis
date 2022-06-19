.class public final Lcom/dropbox/core/v2/files/az;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/az$a;,
        Lcom/dropbox/core/v2/files/az$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/az;

.field public static final b:Lcom/dropbox/core/v2/files/az;

.field public static final c:Lcom/dropbox/core/v2/files/az;


# instance fields
.field d:Lcom/dropbox/core/v2/files/az$b;

.field private e:Lcom/dropbox/core/v2/files/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/files/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/az$b;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/az;->a(Lcom/dropbox/core/v2/files/az$b;)Lcom/dropbox/core/v2/files/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/az;->a:Lcom/dropbox/core/v2/files/az;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/files/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/az$b;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/az;->a(Lcom/dropbox/core/v2/files/az$b;)Lcom/dropbox/core/v2/files/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/az;->b:Lcom/dropbox/core/v2/files/az;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/az$b;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/az;->a(Lcom/dropbox/core/v2/files/az$b;)Lcom/dropbox/core/v2/files/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/az;->c:Lcom/dropbox/core/v2/files/az;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/az;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/files/az;->e:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/az;
    .locals 2

    if-eqz p0, :cond_0

    .line 142
    new-instance v0, Lcom/dropbox/core/v2/files/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/az$b;->PATH:Lcom/dropbox/core/v2/files/az$b;

    .line 1093
    new-instance v1, Lcom/dropbox/core/v2/files/az;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/az;-><init>()V

    .line 1094
    iput-object v0, v1, Lcom/dropbox/core/v2/files/az;->d:Lcom/dropbox/core/v2/files/az$b;

    .line 1095
    iput-object p0, v1, Lcom/dropbox/core/v2/files/az;->e:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/az$b;)Lcom/dropbox/core/v2/files/az;
    .locals 1

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/az;-><init>()V

    .line 79
    iput-object p0, v0, Lcom/dropbox/core/v2/files/az;->d:Lcom/dropbox/core/v2/files/az$b;

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

    .line 212
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/az;

    if-eqz v2, :cond_7

    .line 213
    check-cast p1, Lcom/dropbox/core/v2/files/az;

    .line 214
    iget-object v2, p0, Lcom/dropbox/core/v2/files/az;->d:Lcom/dropbox/core/v2/files/az$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/az;->d:Lcom/dropbox/core/v2/files/az$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 217
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/az$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/az;->d:Lcom/dropbox/core/v2/files/az$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/az$b;->ordinal()I

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

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/az;->e:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/az;->e:Lcom/dropbox/core/v2/files/ai;

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

    .line 197
    iget-object v1, p0, Lcom/dropbox/core/v2/files/az;->d:Lcom/dropbox/core/v2/files/az$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/az;->e:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 237
    sget-object v0, Lcom/dropbox/core/v2/files/az$a;->a:Lcom/dropbox/core/v2/files/az$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/az$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
