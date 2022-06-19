.class public final Lcom/dropbox/core/v2/sharing/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bt$a;,
        Lcom/dropbox/core/v2/sharing/bt$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bt;

.field public static final b:Lcom/dropbox/core/v2/sharing/bt;

.field public static final c:Lcom/dropbox/core/v2/sharing/bt;


# instance fields
.field d:Lcom/dropbox/core/v2/sharing/bt$b;

.field private e:Lcom/dropbox/core/v2/sharing/bc;

.field private f:Lcom/dropbox/core/v2/sharing/bd;

.field private g:Lcom/dropbox/core/v2/sharing/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$b;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/bt$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bt;->a(Lcom/dropbox/core/v2/sharing/bt$b;)Lcom/dropbox/core/v2/sharing/bt;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bt;->a:Lcom/dropbox/core/v2/sharing/bt;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/bt$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bt;->a(Lcom/dropbox/core/v2/sharing/bt$b;)Lcom/dropbox/core/v2/sharing/bt;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bt;->b:Lcom/dropbox/core/v2/sharing/bt;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$b;->OTHER:Lcom/dropbox/core/v2/sharing/bt$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bt;->a(Lcom/dropbox/core/v2/sharing/bt$b;)Lcom/dropbox/core/v2/sharing/bt;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bt;->c:Lcom/dropbox/core/v2/sharing/bt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/bt;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/bt;->e:Lcom/dropbox/core/v2/sharing/bc;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bt;
    .locals 2

    if-eqz p0, :cond_0

    .line 199
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/bt$b;

    .line 1115
    new-instance v1, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    .line 1116
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    .line 1117
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/bt;->e:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bd;)Lcom/dropbox/core/v2/sharing/bt;
    .locals 2

    if-eqz p0, :cond_0

    .line 246
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$b;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/bt$b;

    .line 1130
    new-instance v1, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    .line 1131
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    .line 1132
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/bt;->f:Lcom/dropbox/core/v2/sharing/bd;

    return-object v1

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/bt$b;)Lcom/dropbox/core/v2/sharing/bt;
    .locals 1

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    .line 102
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/bt;
    .locals 2

    if-eqz p0, :cond_0

    .line 294
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$b;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/bt$b;

    .line 1147
    new-instance v1, Lcom/dropbox/core/v2/sharing/bt;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/bt;-><init>()V

    .line 1148
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    .line 1149
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/bt;->g:Lcom/dropbox/core/v2/sharing/e;

    return-object v1

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/bt;)Lcom/dropbox/core/v2/sharing/bd;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/bt;->f:Lcom/dropbox/core/v2/sharing/bd;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/bt;)Lcom/dropbox/core/v2/sharing/e;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/bt;->g:Lcom/dropbox/core/v2/sharing/e;

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

    .line 368
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/bt;

    if-eqz v2, :cond_9

    .line 369
    check-cast p1, Lcom/dropbox/core/v2/sharing/bt;

    .line 370
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 373
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/bt$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/bt$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 379
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bt;->g:Lcom/dropbox/core/v2/sharing/e;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bt;->g:Lcom/dropbox/core/v2/sharing/e;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 377
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bt;->f:Lcom/dropbox/core/v2/sharing/bd;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bt;->f:Lcom/dropbox/core/v2/sharing/bd;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bd;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0

    .line 375
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bt;->e:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bt;->e:Lcom/dropbox/core/v2/sharing/bc;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v0

    :cond_9
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 351
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bt;->e:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bt;->f:Lcom/dropbox/core/v2/sharing/bd;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bt;->g:Lcom/dropbox/core/v2/sharing/e;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 397
    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$a;->a:Lcom/dropbox/core/v2/sharing/bt$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bt$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
