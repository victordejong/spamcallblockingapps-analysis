.class public final Lcom/dropbox/core/v2/team/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/bd$a;,
        Lcom/dropbox/core/v2/team/bd$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/bd;


# instance fields
.field b:Lcom/dropbox/core/v2/team/bd$b;

.field private c:Lcom/dropbox/core/v2/team/aw;

.field private d:Lcom/dropbox/core/v2/team/ba;

.field private e:Lcom/dropbox/core/v2/team/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bd$b;->OTHER:Lcom/dropbox/core/v2/team/bd$b;

    .line 2072
    new-instance v1, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    .line 2073
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    .line 53
    sput-object v1, Lcom/dropbox/core/v2/team/bd;->a:Lcom/dropbox/core/v2/team/bd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/bd;)Lcom/dropbox/core/v2/team/aw;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/bd;->c:Lcom/dropbox/core/v2/team/aw;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/aw;)Lcom/dropbox/core/v2/team/bd;
    .locals 2

    if-eqz p0, :cond_0

    .line 165
    new-instance v0, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bd$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/bd$b;

    .line 1086
    new-instance v1, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    .line 1087
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    .line 1088
    iput-object p0, v1, Lcom/dropbox/core/v2/team/bd;->c:Lcom/dropbox/core/v2/team/aw;

    return-object v1

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/ba;)Lcom/dropbox/core/v2/team/bd;
    .locals 2

    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bd$b;->STATUS_ERROR:Lcom/dropbox/core/v2/team/bd$b;

    .line 1101
    new-instance v1, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    .line 1102
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    .line 1103
    iput-object p0, v1, Lcom/dropbox/core/v2/team/bd;->d:Lcom/dropbox/core/v2/team/ba;

    return-object v1

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/bf;)Lcom/dropbox/core/v2/team/bd;
    .locals 2

    if-eqz p0, :cond_0

    .line 259
    new-instance v0, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/bd$b;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/bd$b;

    .line 1116
    new-instance v1, Lcom/dropbox/core/v2/team/bd;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/bd;-><init>()V

    .line 1117
    iput-object v0, v1, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    .line 1118
    iput-object p0, v1, Lcom/dropbox/core/v2/team/bd;->e:Lcom/dropbox/core/v2/team/bf;

    return-object v1

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/bd;)Lcom/dropbox/core/v2/team/ba;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/bd;->d:Lcom/dropbox/core/v2/team/ba;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/bd;)Lcom/dropbox/core/v2/team/bf;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/bd;->e:Lcom/dropbox/core/v2/team/bf;

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

    .line 310
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/bd;

    if-eqz v2, :cond_d

    .line 311
    check-cast p1, Lcom/dropbox/core/v2/team/bd;

    .line 312
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 315
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/bd$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/bd$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bd;->e:Lcom/dropbox/core/v2/team/bf;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/bd;->e:Lcom/dropbox/core/v2/team/bf;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/bf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    .line 319
    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bd;->d:Lcom/dropbox/core/v2/team/ba;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/bd;->d:Lcom/dropbox/core/v2/team/ba;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/ba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v0

    .line 317
    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/bd;->c:Lcom/dropbox/core/v2/team/aw;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/bd;->c:Lcom/dropbox/core/v2/team/aw;

    if-eq v2, p1, :cond_c

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/aw;->equals(Ljava/lang/Object;)Z

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

    .line 292
    iget-object v1, p0, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/bd;->c:Lcom/dropbox/core/v2/team/aw;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/bd;->d:Lcom/dropbox/core/v2/team/ba;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/bd;->e:Lcom/dropbox/core/v2/team/bf;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 298
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/team/bd$a;->a:Lcom/dropbox/core/v2/team/bd$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/bd$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
