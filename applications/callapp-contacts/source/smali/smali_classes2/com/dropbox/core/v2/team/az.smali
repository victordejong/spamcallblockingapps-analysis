.class public final Lcom/dropbox/core/v2/team/az;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/az$a;,
        Lcom/dropbox/core/v2/team/az$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/az;

.field public static final b:Lcom/dropbox/core/v2/team/az;

.field public static final c:Lcom/dropbox/core/v2/team/az;

.field public static final d:Lcom/dropbox/core/v2/team/az;


# instance fields
.field e:Lcom/dropbox/core/v2/team/az$b;

.field private f:Lcom/dropbox/core/v2/files/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/team/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/az$b;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/az;->a(Lcom/dropbox/core/v2/team/az$b;)Lcom/dropbox/core/v2/team/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/az;->a:Lcom/dropbox/core/v2/team/az;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/az$b;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/az;->a(Lcom/dropbox/core/v2/team/az$b;)Lcom/dropbox/core/v2/team/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/az;->b:Lcom/dropbox/core/v2/team/az;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/team/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/az$b;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/az;->a(Lcom/dropbox/core/v2/team/az$b;)Lcom/dropbox/core/v2/team/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/az;->c:Lcom/dropbox/core/v2/team/az;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/az$b;->OTHER:Lcom/dropbox/core/v2/team/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/az;->a(Lcom/dropbox/core/v2/team/az$b;)Lcom/dropbox/core/v2/team/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/az;->d:Lcom/dropbox/core/v2/team/az;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/az;)Lcom/dropbox/core/v2/files/ay;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/team/az;->f:Lcom/dropbox/core/v2/files/ay;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ay;)Lcom/dropbox/core/v2/team/az;
    .locals 2

    if-eqz p0, :cond_0

    .line 200
    new-instance v0, Lcom/dropbox/core/v2/team/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/az$b;->SYNC_SETTINGS_ERROR:Lcom/dropbox/core/v2/team/az$b;

    .line 1115
    new-instance v1, Lcom/dropbox/core/v2/team/az;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/az;-><init>()V

    .line 1116
    iput-object v0, v1, Lcom/dropbox/core/v2/team/az;->e:Lcom/dropbox/core/v2/team/az$b;

    .line 1117
    iput-object p0, v1, Lcom/dropbox/core/v2/team/az;->f:Lcom/dropbox/core/v2/files/ay;

    return-object v1

    .line 198
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/team/az$b;)Lcom/dropbox/core/v2/team/az;
    .locals 1

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/az;-><init>()V

    .line 101
    iput-object p0, v0, Lcom/dropbox/core/v2/team/az;->e:Lcom/dropbox/core/v2/team/az$b;

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

    .line 249
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/az;

    if-eqz v2, :cond_7

    .line 250
    check-cast p1, Lcom/dropbox/core/v2/team/az;

    .line 251
    iget-object v2, p0, Lcom/dropbox/core/v2/team/az;->e:Lcom/dropbox/core/v2/team/az$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/az;->e:Lcom/dropbox/core/v2/team/az$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 254
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/az$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/az;->e:Lcom/dropbox/core/v2/team/az$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/az$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    .line 262
    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/az;->f:Lcom/dropbox/core/v2/files/ay;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/az;->f:Lcom/dropbox/core/v2/files/ay;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ay;->equals(Ljava/lang/Object;)Z

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

    .line 234
    iget-object v1, p0, Lcom/dropbox/core/v2/team/az;->e:Lcom/dropbox/core/v2/team/az$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/az;->f:Lcom/dropbox/core/v2/files/ay;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 276
    sget-object v0, Lcom/dropbox/core/v2/team/az$a;->a:Lcom/dropbox/core/v2/team/az$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/az$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
