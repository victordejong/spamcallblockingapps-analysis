.class public final Lcom/dropbox/core/v2/sharing/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/af$a;,
        Lcom/dropbox/core/v2/sharing/af$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/af;

.field public static final b:Lcom/dropbox/core/v2/sharing/af;


# instance fields
.field c:Lcom/dropbox/core/v2/sharing/af$b;

.field private d:Lcom/dropbox/core/v2/sharing/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/af;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/af;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/af$b;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/af$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/af;->a(Lcom/dropbox/core/v2/sharing/af$b;)Lcom/dropbox/core/v2/sharing/af;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/af;->a:Lcom/dropbox/core/v2/sharing/af;

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/af;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/af;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/af$b;->OTHER:Lcom/dropbox/core/v2/sharing/af$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/af;->a(Lcom/dropbox/core/v2/sharing/af$b;)Lcom/dropbox/core/v2/sharing/af;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/af;->b:Lcom/dropbox/core/v2/sharing/af;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/af$b;)Lcom/dropbox/core/v2/sharing/af;
    .locals 1

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/af;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/af;-><init>()V

    .line 81
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/af;->c:Lcom/dropbox/core/v2/sharing/af$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/af;
    .locals 2

    if-eqz p0, :cond_0

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/sharing/af;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/af;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/af$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/af$b;

    .line 1094
    new-instance v1, Lcom/dropbox/core/v2/sharing/af;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/af;-><init>()V

    .line 1095
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/af;->c:Lcom/dropbox/core/v2/sharing/af$b;

    .line 1096
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/af;->d:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 144
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/af;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/af;->d:Lcom/dropbox/core/v2/sharing/bc;

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

    .line 204
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/af;

    if-eqz v2, :cond_7

    .line 205
    check-cast p1, Lcom/dropbox/core/v2/sharing/af;

    .line 206
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/af;->c:Lcom/dropbox/core/v2/sharing/af$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/af;->c:Lcom/dropbox/core/v2/sharing/af$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 209
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/af$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/af;->c:Lcom/dropbox/core/v2/sharing/af$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/af$b;->ordinal()I

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

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/af;->d:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/af;->d:Lcom/dropbox/core/v2/sharing/bc;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bc;->equals(Ljava/lang/Object;)Z

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

    .line 189
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/af;->c:Lcom/dropbox/core/v2/sharing/af$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/af;->d:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 227
    sget-object v0, Lcom/dropbox/core/v2/sharing/af$a;->a:Lcom/dropbox/core/v2/sharing/af$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/af$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
