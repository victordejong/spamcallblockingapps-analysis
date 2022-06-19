.class public final Lcom/dropbox/core/v2/files/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/o$a;,
        Lcom/dropbox/core/v2/files/o$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/o;

.field public static final b:Lcom/dropbox/core/v2/files/o;


# instance fields
.field c:Lcom/dropbox/core/v2/files/o$b;

.field private d:Lcom/dropbox/core/v2/files/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/files/o;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/o;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/o$b;->UNLOCKED:Lcom/dropbox/core/v2/files/o$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/o;->a(Lcom/dropbox/core/v2/files/o$b;)Lcom/dropbox/core/v2/files/o;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/o;->a:Lcom/dropbox/core/v2/files/o;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/o;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/o;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/o$b;->OTHER:Lcom/dropbox/core/v2/files/o$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/o;->a(Lcom/dropbox/core/v2/files/o$b;)Lcom/dropbox/core/v2/files/o;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/o;->b:Lcom/dropbox/core/v2/files/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/o;)Lcom/dropbox/core/v2/files/aw;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/o;->d:Lcom/dropbox/core/v2/files/aw;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/aw;)Lcom/dropbox/core/v2/files/o;
    .locals 2

    if-eqz p0, :cond_0

    .line 161
    new-instance v0, Lcom/dropbox/core/v2/files/o;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/o;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/o$b;->SINGLE_USER:Lcom/dropbox/core/v2/files/o$b;

    .line 1098
    new-instance v1, Lcom/dropbox/core/v2/files/o;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/o;-><init>()V

    .line 1099
    iput-object v0, v1, Lcom/dropbox/core/v2/files/o;->c:Lcom/dropbox/core/v2/files/o$b;

    .line 1100
    iput-object p0, v1, Lcom/dropbox/core/v2/files/o;->d:Lcom/dropbox/core/v2/files/aw;

    return-object v1

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/o$b;)Lcom/dropbox/core/v2/files/o;
    .locals 1

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/files/o;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/o;-><init>()V

    .line 84
    iput-object p0, v0, Lcom/dropbox/core/v2/files/o;->c:Lcom/dropbox/core/v2/files/o$b;

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

    .line 209
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/o;

    if-eqz v2, :cond_7

    .line 210
    check-cast p1, Lcom/dropbox/core/v2/files/o;

    .line 211
    iget-object v2, p0, Lcom/dropbox/core/v2/files/o;->c:Lcom/dropbox/core/v2/files/o$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/o;->c:Lcom/dropbox/core/v2/files/o$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 214
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/o$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/o;->c:Lcom/dropbox/core/v2/files/o$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/o$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 218
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/o;->d:Lcom/dropbox/core/v2/files/aw;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/o;->d:Lcom/dropbox/core/v2/files/aw;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/aw;->equals(Ljava/lang/Object;)Z

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

    .line 194
    iget-object v1, p0, Lcom/dropbox/core/v2/files/o;->c:Lcom/dropbox/core/v2/files/o$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/o;->d:Lcom/dropbox/core/v2/files/aw;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/o$a;->a:Lcom/dropbox/core/v2/files/o$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/o$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
