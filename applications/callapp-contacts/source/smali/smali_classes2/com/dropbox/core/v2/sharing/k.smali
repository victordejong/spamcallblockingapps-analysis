.class public final Lcom/dropbox/core/v2/sharing/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/k$a;,
        Lcom/dropbox/core/v2/sharing/k$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/k;

.field public static final b:Lcom/dropbox/core/v2/sharing/k;


# instance fields
.field c:Lcom/dropbox/core/v2/sharing/k$b;

.field private d:Lcom/dropbox/core/v2/files/ai;

.field private e:Lcom/dropbox/core/v2/sharing/bh;

.field private f:Lcom/dropbox/core/v2/sharing/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/k$b;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/k;->a(Lcom/dropbox/core/v2/sharing/k$b;)Lcom/dropbox/core/v2/sharing/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/k;->a:Lcom/dropbox/core/v2/sharing/k;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/k$b;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/k;->a(Lcom/dropbox/core/v2/sharing/k$b;)Lcom/dropbox/core/v2/sharing/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/k;->b:Lcom/dropbox/core/v2/sharing/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/k;->d:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a()Lcom/dropbox/core/v2/sharing/k;
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/k;->a(Lcom/dropbox/core/v2/sharing/bh;)Lcom/dropbox/core/v2/sharing/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/sharing/k;
    .locals 2

    if-eqz p0, :cond_0

    .line 173
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/k$b;->PATH:Lcom/dropbox/core/v2/sharing/k$b;

    .line 1094
    new-instance v1, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    .line 1095
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    .line 1096
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/k;->d:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 171
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bh;)Lcom/dropbox/core/v2/sharing/k;
    .locals 2

    .line 227
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/k$b;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/k$b;

    .line 1108
    new-instance v1, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    .line 1109
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    .line 1110
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/k;->e:Lcom/dropbox/core/v2/sharing/bh;

    return-object v1
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bl;)Lcom/dropbox/core/v2/sharing/k;
    .locals 2

    if-eqz p0, :cond_0

    .line 294
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/k$b;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/k$b;

    .line 1124
    new-instance v1, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    .line 1125
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    .line 1126
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/k;->f:Lcom/dropbox/core/v2/sharing/bl;

    return-object v1

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/k$b;)Lcom/dropbox/core/v2/sharing/k;
    .locals 1

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/k;-><init>()V

    .line 81
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/bh;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/k;->e:Lcom/dropbox/core/v2/sharing/bh;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/bl;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/k;->f:Lcom/dropbox/core/v2/sharing/bl;

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

    .line 345
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/k;

    if-eqz v2, :cond_d

    .line 346
    check-cast p1, Lcom/dropbox/core/v2/sharing/k;

    .line 347
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 350
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/k$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/k$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/k;->f:Lcom/dropbox/core/v2/sharing/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/k;->f:Lcom/dropbox/core/v2/sharing/bl;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 356
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/k;->e:Lcom/dropbox/core/v2/sharing/bh;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/k;->e:Lcom/dropbox/core/v2/sharing/bh;

    if-eq v2, p1, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bh;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v0

    .line 352
    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/k;->d:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/k;->d:Lcom/dropbox/core/v2/files/ai;

    if-eq v2, p1, :cond_c

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ai;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    return v1

    :cond_c
    :goto_2
    return v0

    :cond_d
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 328
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/k;->d:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/k;->e:Lcom/dropbox/core/v2/sharing/bh;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/k;->f:Lcom/dropbox/core/v2/sharing/bl;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 372
    sget-object v0, Lcom/dropbox/core/v2/sharing/k$a;->a:Lcom/dropbox/core/v2/sharing/k$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/k$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
