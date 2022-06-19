.class public final Lcom/dropbox/core/v2/sharing/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/aq$a;,
        Lcom/dropbox/core/v2/sharing/aq$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/aq;

.field public static final b:Lcom/dropbox/core/v2/sharing/aq;

.field public static final c:Lcom/dropbox/core/v2/sharing/aq;


# instance fields
.field d:Lcom/dropbox/core/v2/sharing/aq$b;

.field private e:Lcom/dropbox/core/v2/sharing/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/aq$b;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/aq$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/aq;->a(Lcom/dropbox/core/v2/sharing/aq$b;)Lcom/dropbox/core/v2/sharing/aq;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/aq;->a:Lcom/dropbox/core/v2/sharing/aq;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/aq$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/aq$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/aq;->a(Lcom/dropbox/core/v2/sharing/aq$b;)Lcom/dropbox/core/v2/sharing/aq;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/aq;->b:Lcom/dropbox/core/v2/sharing/aq;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/aq$b;->OTHER:Lcom/dropbox/core/v2/sharing/aq$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/aq;->a(Lcom/dropbox/core/v2/sharing/aq$b;)Lcom/dropbox/core/v2/sharing/aq;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/aq;->c:Lcom/dropbox/core/v2/sharing/aq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/aq$b;)Lcom/dropbox/core/v2/sharing/aq;
    .locals 1

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/sharing/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/aq;-><init>()V

    .line 91
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/aq;->d:Lcom/dropbox/core/v2/sharing/aq$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/aq;
    .locals 2

    if-eqz p0, :cond_0

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/sharing/aq;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/aq;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/aq$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/aq$b;

    .line 1104
    new-instance v1, Lcom/dropbox/core/v2/sharing/aq;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/aq;-><init>()V

    .line 1105
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/aq;->d:Lcom/dropbox/core/v2/sharing/aq$b;

    .line 1106
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/aq;->e:Lcom/dropbox/core/v2/sharing/bm;

    return-object v1

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/aq;)Lcom/dropbox/core/v2/sharing/bm;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/aq;->e:Lcom/dropbox/core/v2/sharing/bm;

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

    .line 225
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/aq;

    if-eqz v2, :cond_7

    .line 226
    check-cast p1, Lcom/dropbox/core/v2/sharing/aq;

    .line 227
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/aq;->d:Lcom/dropbox/core/v2/sharing/aq$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/aq;->d:Lcom/dropbox/core/v2/sharing/aq$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 230
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/aq$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/aq;->d:Lcom/dropbox/core/v2/sharing/aq$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/aq$b;->ordinal()I

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

    .line 232
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/aq;->e:Lcom/dropbox/core/v2/sharing/bm;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/aq;->e:Lcom/dropbox/core/v2/sharing/bm;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bm;->equals(Ljava/lang/Object;)Z

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

    .line 210
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/aq;->d:Lcom/dropbox/core/v2/sharing/aq$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/aq;->e:Lcom/dropbox/core/v2/sharing/bm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 250
    sget-object v0, Lcom/dropbox/core/v2/sharing/aq$a;->a:Lcom/dropbox/core/v2/sharing/aq$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/aq$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
