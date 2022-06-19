.class public final Lcom/dropbox/core/v2/fileproperties/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/l$a;,
        Lcom/dropbox/core/v2/fileproperties/l$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/l;

.field public static final b:Lcom/dropbox/core/v2/fileproperties/l;


# instance fields
.field c:Lcom/dropbox/core/v2/fileproperties/l$b;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/l$b;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/l$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/l;->a(Lcom/dropbox/core/v2/fileproperties/l$b;)Lcom/dropbox/core/v2/fileproperties/l;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/l;->a:Lcom/dropbox/core/v2/fileproperties/l;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/l$b;->OTHER:Lcom/dropbox/core/v2/fileproperties/l$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/l;->a(Lcom/dropbox/core/v2/fileproperties/l$b;)Lcom/dropbox/core/v2/fileproperties/l;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/l;->b:Lcom/dropbox/core/v2/fileproperties/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/fileproperties/l$b;)Lcom/dropbox/core/v2/fileproperties/l;
    .locals 1

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/l;-><init>()V

    .line 85
    iput-object p0, v0, Lcom/dropbox/core/v2/fileproperties/l;->c:Lcom/dropbox/core/v2/fileproperties/l$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/l;
    .locals 2

    if-eqz p0, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 156
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/l$b;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/l$b;

    .line 1100
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/l;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/l;-><init>()V

    .line 1101
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/l;->c:Lcom/dropbox/core/v2/fileproperties/l$b;

    .line 1102
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/l;->d:Ljava/lang/String;

    return-object v1

    .line 157
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/l;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/l;->d:Ljava/lang/String;

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

    .line 219
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/l;

    if-eqz v2, :cond_7

    .line 220
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/l;

    .line 221
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/l;->c:Lcom/dropbox/core/v2/fileproperties/l$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/l;->c:Lcom/dropbox/core/v2/fileproperties/l$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 224
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/l$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/l;->c:Lcom/dropbox/core/v2/fileproperties/l$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/l$b;->ordinal()I

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

    .line 226
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/l;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/l;->d:Ljava/lang/String;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 204
    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/l;->c:Lcom/dropbox/core/v2/fileproperties/l$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/l;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 242
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/l$a;->a:Lcom/dropbox/core/v2/fileproperties/l$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/l$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
