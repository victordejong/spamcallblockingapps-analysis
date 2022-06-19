.class public final Lcom/dropbox/core/v2/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/c/b$a;,
        Lcom/dropbox/core/v2/c/b$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/c/b;

.field public static final b:Lcom/dropbox/core/v2/c/b;


# instance fields
.field c:Lcom/dropbox/core/v2/c/b$b;

.field private d:Lcom/dropbox/core/v2/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/c/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/c/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/c/b$b;->NO_PERMISSION:Lcom/dropbox/core/v2/c/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/c/b;->a(Lcom/dropbox/core/v2/c/b$b;)Lcom/dropbox/core/v2/c/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/c/b;->a:Lcom/dropbox/core/v2/c/b;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/c/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/c/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/c/b$b;->OTHER:Lcom/dropbox/core/v2/c/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/c/b;->a(Lcom/dropbox/core/v2/c/b$b;)Lcom/dropbox/core/v2/c/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/c/b;->b:Lcom/dropbox/core/v2/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/c/b$b;)Lcom/dropbox/core/v2/c/b;
    .locals 1

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/c/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/c/b;-><init>()V

    .line 87
    iput-object p0, v0, Lcom/dropbox/core/v2/c/b;->c:Lcom/dropbox/core/v2/c/b$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/c/c;)Lcom/dropbox/core/v2/c/b;
    .locals 2

    if-eqz p0, :cond_0

    .line 155
    new-instance v0, Lcom/dropbox/core/v2/c/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/c/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/c/b$b;->INVALID_ROOT:Lcom/dropbox/core/v2/c/b$b;

    .line 1102
    new-instance v1, Lcom/dropbox/core/v2/c/b;

    invoke-direct {v1}, Lcom/dropbox/core/v2/c/b;-><init>()V

    .line 1103
    iput-object v0, v1, Lcom/dropbox/core/v2/c/b;->c:Lcom/dropbox/core/v2/c/b$b;

    .line 1104
    iput-object p0, v1, Lcom/dropbox/core/v2/c/b;->d:Lcom/dropbox/core/v2/c/c;

    return-object v1

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/c/b;)Lcom/dropbox/core/v2/c/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/c/b;->d:Lcom/dropbox/core/v2/c/c;

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

    .line 216
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/c/b;

    if-eqz v2, :cond_7

    .line 217
    check-cast p1, Lcom/dropbox/core/v2/c/b;

    .line 218
    iget-object v2, p0, Lcom/dropbox/core/v2/c/b;->c:Lcom/dropbox/core/v2/c/b$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/c/b;->c:Lcom/dropbox/core/v2/c/b$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 221
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/c/b$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/c/b;->c:Lcom/dropbox/core/v2/c/b$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/c/b$b;->ordinal()I

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

    .line 223
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/c/b;->d:Lcom/dropbox/core/v2/c/c;

    iget-object p1, p1, Lcom/dropbox/core/v2/c/b;->d:Lcom/dropbox/core/v2/c/c;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/c/c;->equals(Ljava/lang/Object;)Z

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

    .line 201
    iget-object v1, p0, Lcom/dropbox/core/v2/c/b;->c:Lcom/dropbox/core/v2/c/b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/c/b;->d:Lcom/dropbox/core/v2/c/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 239
    sget-object v0, Lcom/dropbox/core/v2/c/b$a;->a:Lcom/dropbox/core/v2/c/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/c/b$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
