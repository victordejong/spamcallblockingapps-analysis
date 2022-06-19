.class public final Lcom/dropbox/core/v2/clouddocs/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/clouddocs/e$a;,
        Lcom/dropbox/core/v2/clouddocs/e$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/clouddocs/e;


# instance fields
.field b:Lcom/dropbox/core/v2/clouddocs/e$b;

.field private c:Lcom/dropbox/core/v2/clouddocs/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/e$b;->OTHER:Lcom/dropbox/core/v2/clouddocs/e$b;

    .line 2072
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/e;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/e;-><init>()V

    .line 2073
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/e;->b:Lcom/dropbox/core/v2/clouddocs/e$b;

    .line 55
    sput-object v1, Lcom/dropbox/core/v2/clouddocs/e;->a:Lcom/dropbox/core/v2/clouddocs/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/clouddocs/e;)Lcom/dropbox/core/v2/clouddocs/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/e;->c:Lcom/dropbox/core/v2/clouddocs/c;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/clouddocs/c;)Lcom/dropbox/core/v2/clouddocs/e;
    .locals 2

    if-eqz p0, :cond_0

    .line 138
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/clouddocs/e$b;->GENERIC_ERROR:Lcom/dropbox/core/v2/clouddocs/e$b;

    .line 1086
    new-instance v1, Lcom/dropbox/core/v2/clouddocs/e;

    invoke-direct {v1}, Lcom/dropbox/core/v2/clouddocs/e;-><init>()V

    .line 1087
    iput-object v0, v1, Lcom/dropbox/core/v2/clouddocs/e;->b:Lcom/dropbox/core/v2/clouddocs/e$b;

    .line 1088
    iput-object p0, v1, Lcom/dropbox/core/v2/clouddocs/e;->c:Lcom/dropbox/core/v2/clouddocs/c;

    return-object v1

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 185
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/clouddocs/e;

    if-eqz v2, :cond_7

    .line 186
    check-cast p1, Lcom/dropbox/core/v2/clouddocs/e;

    .line 187
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/e;->b:Lcom/dropbox/core/v2/clouddocs/e$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/clouddocs/e;->b:Lcom/dropbox/core/v2/clouddocs/e$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 190
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/clouddocs/e$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/clouddocs/e;->b:Lcom/dropbox/core/v2/clouddocs/e$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/clouddocs/e$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/clouddocs/e;->c:Lcom/dropbox/core/v2/clouddocs/c;

    iget-object p1, p1, Lcom/dropbox/core/v2/clouddocs/e;->c:Lcom/dropbox/core/v2/clouddocs/c;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/clouddocs/c;->equals(Ljava/lang/Object;)Z

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

    .line 170
    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/e;->b:Lcom/dropbox/core/v2/clouddocs/e$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/e;->c:Lcom/dropbox/core/v2/clouddocs/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 206
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/e$a;->a:Lcom/dropbox/core/v2/clouddocs/e$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/clouddocs/e$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
