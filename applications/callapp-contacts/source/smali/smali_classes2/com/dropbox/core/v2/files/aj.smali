.class public final Lcom/dropbox/core/v2/files/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/aj$a;,
        Lcom/dropbox/core/v2/files/aj$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/aj;


# instance fields
.field b:Lcom/dropbox/core/v2/files/aj$b;

.field private c:Lcom/dropbox/core/v2/files/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/files/aj;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aj;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/aj$b;->PENDING:Lcom/dropbox/core/v2/files/aj$b;

    .line 2064
    new-instance v1, Lcom/dropbox/core/v2/files/aj;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/aj;-><init>()V

    .line 2065
    iput-object v0, v1, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    .line 47
    sput-object v1, Lcom/dropbox/core/v2/files/aj;->a:Lcom/dropbox/core/v2/files/aj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/files/ak;)Lcom/dropbox/core/v2/files/aj;
    .locals 2

    if-eqz p0, :cond_0

    .line 139
    new-instance v0, Lcom/dropbox/core/v2/files/aj;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aj;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/aj$b;->METADATA:Lcom/dropbox/core/v2/files/aj$b;

    .line 1079
    new-instance v1, Lcom/dropbox/core/v2/files/aj;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/aj;-><init>()V

    .line 1080
    iput-object v0, v1, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    .line 1081
    iput-object p0, v1, Lcom/dropbox/core/v2/files/aj;->c:Lcom/dropbox/core/v2/files/ak;

    return-object v1

    .line 137
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/aj;)Lcom/dropbox/core/v2/files/ak;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/files/aj;->c:Lcom/dropbox/core/v2/files/ak;

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

    .line 176
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/aj;

    if-eqz v2, :cond_6

    .line 177
    check-cast p1, Lcom/dropbox/core/v2/files/aj;

    .line 178
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 181
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/aj$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/aj$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    return v1

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aj;->c:Lcom/dropbox/core/v2/files/ak;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/aj;->c:Lcom/dropbox/core/v2/files/ak;

    if-eq v2, p1, :cond_5

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ak;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/aj;->c:Lcom/dropbox/core/v2/files/ak;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 197
    sget-object v0, Lcom/dropbox/core/v2/files/aj$a;->a:Lcom/dropbox/core/v2/files/aj$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/aj$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
