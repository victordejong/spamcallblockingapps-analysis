.class public final Lcom/dropbox/core/v2/users/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/b$a;,
        Lcom/dropbox/core/v2/users/b$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/users/b;


# instance fields
.field b:Lcom/dropbox/core/v2/users/b$b;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/users/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/users/b$b;->OTHER:Lcom/dropbox/core/v2/users/b$b;

    .line 2076
    new-instance v1, Lcom/dropbox/core/v2/users/b;

    invoke-direct {v1}, Lcom/dropbox/core/v2/users/b;-><init>()V

    .line 2077
    iput-object v0, v1, Lcom/dropbox/core/v2/users/b;->b:Lcom/dropbox/core/v2/users/b$b;

    .line 59
    sput-object v1, Lcom/dropbox/core/v2/users/b;->a:Lcom/dropbox/core/v2/users/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/users/b;
    .locals 2

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 153
    new-instance v0, Lcom/dropbox/core/v2/users/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/users/b$b;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/b$b;

    .line 1093
    new-instance v1, Lcom/dropbox/core/v2/users/b;

    invoke-direct {v1}, Lcom/dropbox/core/v2/users/b;-><init>()V

    .line 1094
    iput-object v0, v1, Lcom/dropbox/core/v2/users/b;->b:Lcom/dropbox/core/v2/users/b$b;

    .line 1095
    iput-object p0, v1, Lcom/dropbox/core/v2/users/b;->c:Ljava/lang/String;

    return-object v1

    .line 151
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 40"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 40"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/users/b;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/users/b;->c:Ljava/lang/String;

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

    .line 202
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/users/b;

    if-eqz v2, :cond_7

    .line 203
    check-cast p1, Lcom/dropbox/core/v2/users/b;

    .line 204
    iget-object v2, p0, Lcom/dropbox/core/v2/users/b;->b:Lcom/dropbox/core/v2/users/b$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/b;->b:Lcom/dropbox/core/v2/users/b$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 207
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/users/b$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/users/b;->b:Lcom/dropbox/core/v2/users/b$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/users/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/users/b;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/b;->c:Ljava/lang/String;

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

    .line 187
    iget-object v1, p0, Lcom/dropbox/core/v2/users/b;->b:Lcom/dropbox/core/v2/users/b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 223
    sget-object v0, Lcom/dropbox/core/v2/users/b$a;->a:Lcom/dropbox/core/v2/users/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/b$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
