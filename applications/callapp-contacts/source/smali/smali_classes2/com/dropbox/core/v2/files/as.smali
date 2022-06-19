.class public final Lcom/dropbox/core/v2/files/as;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/as$a;,
        Lcom/dropbox/core/v2/files/as$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/as;

.field public static final b:Lcom/dropbox/core/v2/files/as;

.field public static final c:Lcom/dropbox/core/v2/files/as;

.field public static final d:Lcom/dropbox/core/v2/files/as;


# instance fields
.field e:Lcom/dropbox/core/v2/files/as$b;

.field private f:Lcom/dropbox/core/v2/files/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/as;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/as;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/as$b;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/as$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/as;->a(Lcom/dropbox/core/v2/files/as$b;)Lcom/dropbox/core/v2/files/as;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/as;->a:Lcom/dropbox/core/v2/files/as;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/files/as;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/as;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/as$b;->INVALID_URL:Lcom/dropbox/core/v2/files/as$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/as;->a(Lcom/dropbox/core/v2/files/as$b;)Lcom/dropbox/core/v2/files/as;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/as;->b:Lcom/dropbox/core/v2/files/as;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/as;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/as;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/as$b;->NOT_FOUND:Lcom/dropbox/core/v2/files/as$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/as;->a(Lcom/dropbox/core/v2/files/as$b;)Lcom/dropbox/core/v2/files/as;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/as;->c:Lcom/dropbox/core/v2/files/as;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/files/as;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/as;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/as$b;->OTHER:Lcom/dropbox/core/v2/files/as$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/as;->a(Lcom/dropbox/core/v2/files/as$b;)Lcom/dropbox/core/v2/files/as;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/as;->d:Lcom/dropbox/core/v2/files/as;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/files/as$b;)Lcom/dropbox/core/v2/files/as;
    .locals 1

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/files/as;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/as;-><init>()V

    .line 100
    iput-object p0, v0, Lcom/dropbox/core/v2/files/as;->e:Lcom/dropbox/core/v2/files/as$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/as;
    .locals 2

    if-eqz p0, :cond_0

    .line 165
    new-instance v0, Lcom/dropbox/core/v2/files/as;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/as;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/as$b;->PATH:Lcom/dropbox/core/v2/files/as$b;

    .line 1113
    new-instance v1, Lcom/dropbox/core/v2/files/as;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/as;-><init>()V

    .line 1114
    iput-object v0, v1, Lcom/dropbox/core/v2/files/as;->e:Lcom/dropbox/core/v2/files/as$b;

    .line 1115
    iput-object p0, v1, Lcom/dropbox/core/v2/files/as;->f:Lcom/dropbox/core/v2/files/bl;

    return-object v1

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/as;)Lcom/dropbox/core/v2/files/bl;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/as;->f:Lcom/dropbox/core/v2/files/bl;

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

    .line 244
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/as;

    if-eqz v2, :cond_7

    .line 245
    check-cast p1, Lcom/dropbox/core/v2/files/as;

    .line 246
    iget-object v2, p0, Lcom/dropbox/core/v2/files/as;->e:Lcom/dropbox/core/v2/files/as$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/as;->e:Lcom/dropbox/core/v2/files/as$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 249
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/as$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/as;->e:Lcom/dropbox/core/v2/files/as$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/as$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/as;->f:Lcom/dropbox/core/v2/files/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/as;->f:Lcom/dropbox/core/v2/files/bl;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bl;->equals(Ljava/lang/Object;)Z

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

    .line 229
    iget-object v1, p0, Lcom/dropbox/core/v2/files/as;->e:Lcom/dropbox/core/v2/files/as$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/as;->f:Lcom/dropbox/core/v2/files/bl;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/files/as$a;->a:Lcom/dropbox/core/v2/files/as$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/as$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
