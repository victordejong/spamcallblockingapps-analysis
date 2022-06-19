.class public final Lcom/dropbox/core/v2/team/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/an$a;,
        Lcom/dropbox/core/v2/team/an$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/an;

.field public static final b:Lcom/dropbox/core/v2/team/an;

.field public static final c:Lcom/dropbox/core/v2/team/an;

.field public static final d:Lcom/dropbox/core/v2/team/an;


# instance fields
.field e:Lcom/dropbox/core/v2/team/an$b;

.field private f:Lcom/dropbox/core/v2/account/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/team/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/an$b;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/an;->a(Lcom/dropbox/core/v2/team/an$b;)Lcom/dropbox/core/v2/team/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/an;->a:Lcom/dropbox/core/v2/team/an;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/team/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/an$b;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/an;->a(Lcom/dropbox/core/v2/team/an$b;)Lcom/dropbox/core/v2/team/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/an;->b:Lcom/dropbox/core/v2/team/an;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/team/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/an$b;->SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/an;->a(Lcom/dropbox/core/v2/team/an$b;)Lcom/dropbox/core/v2/team/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/an;->c:Lcom/dropbox/core/v2/team/an;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/team/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/an$b;->OTHER:Lcom/dropbox/core/v2/team/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/an;->a(Lcom/dropbox/core/v2/team/an$b;)Lcom/dropbox/core/v2/team/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/an;->d:Lcom/dropbox/core/v2/team/an;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/an;)Lcom/dropbox/core/v2/account/b;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/team/an;->f:Lcom/dropbox/core/v2/account/b;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/account/b;)Lcom/dropbox/core/v2/team/an;
    .locals 2

    if-eqz p0, :cond_0

    .line 198
    new-instance v0, Lcom/dropbox/core/v2/team/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/an$b;->PHOTO_ERROR:Lcom/dropbox/core/v2/team/an$b;

    .line 1113
    new-instance v1, Lcom/dropbox/core/v2/team/an;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/an;-><init>()V

    .line 1114
    iput-object v0, v1, Lcom/dropbox/core/v2/team/an;->e:Lcom/dropbox/core/v2/team/an$b;

    .line 1115
    iput-object p0, v1, Lcom/dropbox/core/v2/team/an;->f:Lcom/dropbox/core/v2/account/b;

    return-object v1

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/team/an$b;)Lcom/dropbox/core/v2/team/an;
    .locals 1

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/team/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/an;-><init>()V

    .line 100
    iput-object p0, v0, Lcom/dropbox/core/v2/team/an;->e:Lcom/dropbox/core/v2/team/an$b;

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

    .line 245
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/an;

    if-eqz v2, :cond_7

    .line 246
    check-cast p1, Lcom/dropbox/core/v2/team/an;

    .line 247
    iget-object v2, p0, Lcom/dropbox/core/v2/team/an;->e:Lcom/dropbox/core/v2/team/an$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/an;->e:Lcom/dropbox/core/v2/team/an$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 250
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/an$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/an;->e:Lcom/dropbox/core/v2/team/an$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/an$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 258
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/an;->f:Lcom/dropbox/core/v2/account/b;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/an;->f:Lcom/dropbox/core/v2/account/b;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/account/b;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/dropbox/core/v2/team/an;->e:Lcom/dropbox/core/v2/team/an$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/an;->f:Lcom/dropbox/core/v2/account/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 233
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 272
    sget-object v0, Lcom/dropbox/core/v2/team/an$a;->a:Lcom/dropbox/core/v2/team/an$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/an$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
