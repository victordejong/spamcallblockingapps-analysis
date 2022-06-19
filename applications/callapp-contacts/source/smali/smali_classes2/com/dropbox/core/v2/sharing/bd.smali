.class public final Lcom/dropbox/core/v2/sharing/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bd$a;,
        Lcom/dropbox/core/v2/sharing/bd$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bd;

.field public static final b:Lcom/dropbox/core/v2/sharing/bd;

.field public static final c:Lcom/dropbox/core/v2/sharing/bd;


# instance fields
.field d:Lcom/dropbox/core/v2/sharing/bd$b;

.field private e:Lcom/dropbox/core/v2/sharing/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$b;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/bd$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bd;->a(Lcom/dropbox/core/v2/sharing/bd$b;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bd;->a:Lcom/dropbox/core/v2/sharing/bd;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$b;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/bd$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bd;->a(Lcom/dropbox/core/v2/sharing/bd$b;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bd;->b:Lcom/dropbox/core/v2/sharing/bd;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$b;->OTHER:Lcom/dropbox/core/v2/sharing/bd$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bd;->a(Lcom/dropbox/core/v2/sharing/bd$b;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bd;->c:Lcom/dropbox/core/v2/sharing/bd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/bd;)Lcom/dropbox/core/v2/sharing/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/bd;->e:Lcom/dropbox/core/v2/sharing/ai;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/ai;)Lcom/dropbox/core/v2/sharing/bd;
    .locals 2

    if-eqz p0, :cond_0

    .line 181
    new-instance v0, Lcom/dropbox/core/v2/sharing/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$b;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/bd$b;

    .line 1106
    new-instance v1, Lcom/dropbox/core/v2/sharing/bd;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/bd;-><init>()V

    .line 1107
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/bd;->d:Lcom/dropbox/core/v2/sharing/bd$b;

    .line 1108
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/bd;->e:Lcom/dropbox/core/v2/sharing/ai;

    return-object v1

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/bd$b;)Lcom/dropbox/core/v2/sharing/bd;
    .locals 1

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bd;-><init>()V

    .line 92
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/bd;->d:Lcom/dropbox/core/v2/sharing/bd$b;

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

    .line 230
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/bd;

    if-eqz v2, :cond_7

    .line 231
    check-cast p1, Lcom/dropbox/core/v2/sharing/bd;

    .line 232
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bd;->d:Lcom/dropbox/core/v2/sharing/bd$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bd;->d:Lcom/dropbox/core/v2/sharing/bd$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 235
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/bd$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/bd;->d:Lcom/dropbox/core/v2/sharing/bd$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/bd$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 241
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bd;->e:Lcom/dropbox/core/v2/sharing/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bd;->e:Lcom/dropbox/core/v2/sharing/ai;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/ai;->equals(Ljava/lang/Object;)Z

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

    .line 215
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bd;->d:Lcom/dropbox/core/v2/sharing/bd$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bd;->e:Lcom/dropbox/core/v2/sharing/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 255
    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$a;->a:Lcom/dropbox/core/v2/sharing/bd$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bd$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
