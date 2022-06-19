.class public final Lcom/dropbox/core/v2/fileproperties/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/m$a;,
        Lcom/dropbox/core/v2/fileproperties/m$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/m;


# instance fields
.field b:Lcom/dropbox/core/v2/fileproperties/m$b;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/m;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/m;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/m$b;->OTHER:Lcom/dropbox/core/v2/fileproperties/m$b;

    .line 2077
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/m;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/m;-><init>()V

    .line 2078
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/m;->b:Lcom/dropbox/core/v2/fileproperties/m$b;

    .line 60
    sput-object v1, Lcom/dropbox/core/v2/fileproperties/m;->a:Lcom/dropbox/core/v2/fileproperties/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/m;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "(/|ptid:).*"

    .line 158
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/m;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/m;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/m$b;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/m$b;

    .line 1094
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/m;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/m;-><init>()V

    .line 1095
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/m;->b:Lcom/dropbox/core/v2/fileproperties/m$b;

    .line 1096
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/m;->c:Ljava/util/List;

    return-object v1

    .line 149
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List has fewer than 1 items"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/m;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/m;->c:Ljava/util/List;

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

    .line 211
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/m;

    if-eqz v2, :cond_7

    .line 212
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/m;

    .line 213
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/m;->b:Lcom/dropbox/core/v2/fileproperties/m$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/m;->b:Lcom/dropbox/core/v2/fileproperties/m$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 216
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/m$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/m;->b:Lcom/dropbox/core/v2/fileproperties/m$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/m$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 218
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/m;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/m;->c:Ljava/util/List;

    if-eq v2, p1, :cond_6

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    .line 196
    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/m;->b:Lcom/dropbox/core/v2/fileproperties/m$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/m;->c:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/m$a;->a:Lcom/dropbox/core/v2/fileproperties/m$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/m$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
