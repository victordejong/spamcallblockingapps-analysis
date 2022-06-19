.class public final Lcom/dropbox/core/v2/files/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/bm$a;,
        Lcom/dropbox/core/v2/files/bm$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bm;

.field public static final b:Lcom/dropbox/core/v2/files/bm;


# instance fields
.field c:Lcom/dropbox/core/v2/files/bm$b;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/files/bm;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bm;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bm$b;->ADD:Lcom/dropbox/core/v2/files/bm$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bm;->a(Lcom/dropbox/core/v2/files/bm$b;)Lcom/dropbox/core/v2/files/bm;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bm;->a:Lcom/dropbox/core/v2/files/bm;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/files/bm;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bm;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bm$b;->OVERWRITE:Lcom/dropbox/core/v2/files/bm$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bm;->a(Lcom/dropbox/core/v2/files/bm$b;)Lcom/dropbox/core/v2/files/bm;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bm;->b:Lcom/dropbox/core/v2/files/bm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/files/bm$b;)Lcom/dropbox/core/v2/files/bm;
    .locals 1

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/files/bm;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bm;-><init>()V

    .line 100
    iput-object p0, v0, Lcom/dropbox/core/v2/files/bm;->c:Lcom/dropbox/core/v2/files/bm$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/bm;
    .locals 2

    if-eqz p0, :cond_2

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 205
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/dropbox/core/v2/files/bm;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bm;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bm$b;->UPDATE:Lcom/dropbox/core/v2/files/bm$b;

    .line 1127
    new-instance v1, Lcom/dropbox/core/v2/files/bm;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/bm;-><init>()V

    .line 1128
    iput-object v0, v1, Lcom/dropbox/core/v2/files/bm;->c:Lcom/dropbox/core/v2/files/bm$b;

    .line 1129
    iput-object p0, v1, Lcom/dropbox/core/v2/files/bm;->d:Ljava/lang/String;

    return-object v1

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 9"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/bm;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/dropbox/core/v2/files/bm;->d:Ljava/lang/String;

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

    .line 248
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/bm;

    if-eqz v2, :cond_6

    .line 249
    check-cast p1, Lcom/dropbox/core/v2/files/bm;

    .line 250
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bm;->c:Lcom/dropbox/core/v2/files/bm$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bm;->c:Lcom/dropbox/core/v2/files/bm$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 253
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/bm$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/bm;->c:Lcom/dropbox/core/v2/files/bm$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/bm$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    return v1

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bm;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/bm;->d:Ljava/lang/String;

    if-eq v2, p1, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 233
    iget-object v1, p0, Lcom/dropbox/core/v2/files/bm;->c:Lcom/dropbox/core/v2/files/bm$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/bm;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/files/bm$a;->a:Lcom/dropbox/core/v2/files/bm$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/bm$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
