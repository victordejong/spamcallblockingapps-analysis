.class public final Lcom/dropbox/core/v2/sharing/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bs$a;,
        Lcom/dropbox/core/v2/sharing/bs$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bs;

.field public static final b:Lcom/dropbox/core/v2/sharing/bs;

.field public static final c:Lcom/dropbox/core/v2/sharing/bs;

.field public static final d:Lcom/dropbox/core/v2/sharing/bs;


# instance fields
.field e:Lcom/dropbox/core/v2/sharing/bs$b;

.field private f:Lcom/dropbox/core/v2/sharing/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/bs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bs;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bs$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/bs$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bs;->a(Lcom/dropbox/core/v2/sharing/bs$b;)Lcom/dropbox/core/v2/sharing/bs;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bs;->a:Lcom/dropbox/core/v2/sharing/bs;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/bs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bs;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bs$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/bs$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bs;->a(Lcom/dropbox/core/v2/sharing/bs$b;)Lcom/dropbox/core/v2/sharing/bs;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bs;->b:Lcom/dropbox/core/v2/sharing/bs;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/bs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bs;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bs$b;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/bs$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bs;->a(Lcom/dropbox/core/v2/sharing/bs$b;)Lcom/dropbox/core/v2/sharing/bs;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bs;->c:Lcom/dropbox/core/v2/sharing/bs;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/bs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bs;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bs$b;->OTHER:Lcom/dropbox/core/v2/sharing/bs$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bs;->a(Lcom/dropbox/core/v2/sharing/bs$b;)Lcom/dropbox/core/v2/sharing/bs;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bs;->d:Lcom/dropbox/core/v2/sharing/bs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/bs;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/bs;->f:Lcom/dropbox/core/v2/sharing/bc;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bs;
    .locals 2

    if-eqz p0, :cond_0

    .line 162
    new-instance v0, Lcom/dropbox/core/v2/sharing/bs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bs;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bs$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/bs$b;

    .line 1110
    new-instance v1, Lcom/dropbox/core/v2/sharing/bs;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/bs;-><init>()V

    .line 1111
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/bs;->e:Lcom/dropbox/core/v2/sharing/bs$b;

    .line 1112
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/bs;->f:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/bs$b;)Lcom/dropbox/core/v2/sharing/bs;
    .locals 1

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/bs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bs;-><init>()V

    .line 97
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/bs;->e:Lcom/dropbox/core/v2/sharing/bs$b;

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

    .line 242
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/bs;

    if-eqz v2, :cond_7

    .line 243
    check-cast p1, Lcom/dropbox/core/v2/sharing/bs;

    .line 244
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bs;->e:Lcom/dropbox/core/v2/sharing/bs$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bs;->e:Lcom/dropbox/core/v2/sharing/bs$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 247
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/bs$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/bs;->e:Lcom/dropbox/core/v2/sharing/bs$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/bs$b;->ordinal()I

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

    .line 249
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bs;->f:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bs;->f:Lcom/dropbox/core/v2/sharing/bc;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bc;->equals(Ljava/lang/Object;)Z

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

    .line 227
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bs;->e:Lcom/dropbox/core/v2/sharing/bs$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bs;->f:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 269
    sget-object v0, Lcom/dropbox/core/v2/sharing/bs$a;->a:Lcom/dropbox/core/v2/sharing/bs$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bs$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
