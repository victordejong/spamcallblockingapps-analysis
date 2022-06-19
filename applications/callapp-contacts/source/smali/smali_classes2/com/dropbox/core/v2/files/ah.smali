.class public final Lcom/dropbox/core/v2/files/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ah$a;,
        Lcom/dropbox/core/v2/files/ah$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ah;

.field public static final b:Lcom/dropbox/core/v2/files/ah;

.field public static final c:Lcom/dropbox/core/v2/files/ah;

.field public static final d:Lcom/dropbox/core/v2/files/ah;

.field public static final e:Lcom/dropbox/core/v2/files/ah;

.field public static final f:Lcom/dropbox/core/v2/files/ah;

.field public static final g:Lcom/dropbox/core/v2/files/ah;


# instance fields
.field h:Lcom/dropbox/core/v2/files/ah$b;

.field private i:Lcom/dropbox/core/v2/files/ai;

.field private j:Lcom/dropbox/core/v2/files/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/ah$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ah;->a:Lcom/dropbox/core/v2/files/ah;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/ah$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ah;->b:Lcom/dropbox/core/v2/files/ah;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/ah$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ah;->c:Lcom/dropbox/core/v2/files/ah;

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->CANNOT_BE_LOCKED:Lcom/dropbox/core/v2/files/ah$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ah;->d:Lcom/dropbox/core/v2/files/ah;

    .line 105
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->FILE_NOT_SHARED:Lcom/dropbox/core/v2/files/ah$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ah;->e:Lcom/dropbox/core/v2/files/ah;

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/ah$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ah;->f:Lcom/dropbox/core/v2/files/ah;

    .line 119
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->OTHER:Lcom/dropbox/core/v2/files/ah$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ah;->g:Lcom/dropbox/core/v2/files/ah;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/files/ag;)Lcom/dropbox/core/v2/files/ah;
    .locals 2

    if-eqz p0, :cond_0

    .line 323
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->LOCK_CONFLICT:Lcom/dropbox/core/v2/files/ah$b;

    .line 1168
    new-instance v1, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    .line 1169
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    .line 1170
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ah;->j:Lcom/dropbox/core/v2/files/ag;

    return-object v1

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/ah$b;)Lcom/dropbox/core/v2/files/ah;
    .locals 1

    .line 137
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    .line 138
    iput-object p0, v0, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ah;
    .locals 2

    if-eqz p0, :cond_0

    .line 220
    new-instance v0, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ah$b;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/ah$b;

    .line 1152
    new-instance v1, Lcom/dropbox/core/v2/files/ah;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ah;-><init>()V

    .line 1153
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    .line 1154
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ah;->i:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 218
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/ah;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ah;->i:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/ah;)Lcom/dropbox/core/v2/files/ag;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ah;->j:Lcom/dropbox/core/v2/files/ag;

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

    .line 384
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ah;

    if-eqz v2, :cond_7

    .line 385
    check-cast p1, Lcom/dropbox/core/v2/files/ah;

    .line 386
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 389
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/ah$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ah$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 403
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ah;->j:Lcom/dropbox/core/v2/files/ag;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ah;->j:Lcom/dropbox/core/v2/files/ag;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    .line 391
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ah;->i:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ah;->i:Lcom/dropbox/core/v2/files/ai;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ai;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ah;->i:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ah;->j:Lcom/dropbox/core/v2/files/ag;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/files/ah$a;->a:Lcom/dropbox/core/v2/files/ah$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ah$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
