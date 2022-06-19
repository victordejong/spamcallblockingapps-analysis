.class public final Lcom/dropbox/core/v2/files/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ai$a;,
        Lcom/dropbox/core/v2/files/ai$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ai;

.field public static final b:Lcom/dropbox/core/v2/files/ai;

.field public static final c:Lcom/dropbox/core/v2/files/ai;

.field public static final d:Lcom/dropbox/core/v2/files/ai;

.field public static final e:Lcom/dropbox/core/v2/files/ai;

.field public static final f:Lcom/dropbox/core/v2/files/ai;

.field public static final g:Lcom/dropbox/core/v2/files/ai;


# instance fields
.field h:Lcom/dropbox/core/v2/files/ai$b;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->NOT_FOUND:Lcom/dropbox/core/v2/files/ai$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ai;->a:Lcom/dropbox/core/v2/files/ai;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->NOT_FILE:Lcom/dropbox/core/v2/files/ai$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ai;->b:Lcom/dropbox/core/v2/files/ai;

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->NOT_FOLDER:Lcom/dropbox/core/v2/files/ai$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ai;->c:Lcom/dropbox/core/v2/files/ai;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/ai$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ai;->d:Lcom/dropbox/core/v2/files/ai;

    .line 104
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->UNSUPPORTED_CONTENT_TYPE:Lcom/dropbox/core/v2/files/ai$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ai;->e:Lcom/dropbox/core/v2/files/ai;

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->LOCKED:Lcom/dropbox/core/v2/files/ai$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ai;->f:Lcom/dropbox/core/v2/files/ai;

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->OTHER:Lcom/dropbox/core/v2/files/ai$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ai;->g:Lcom/dropbox/core/v2/files/ai;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dropbox/core/v2/files/ai;
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-static {v0}, Lcom/dropbox/core/v2/files/ai;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/dropbox/core/v2/files/ai$b;)Lcom/dropbox/core/v2/files/ai;
    .locals 1

    .line 133
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    .line 134
    iput-object p0, v0, Lcom/dropbox/core/v2/files/ai;->h:Lcom/dropbox/core/v2/files/ai$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ai;
    .locals 2

    .line 197
    new-instance v0, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ai$b;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/ai$b;

    .line 1147
    new-instance v1, Lcom/dropbox/core/v2/files/ai;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ai;-><init>()V

    .line 1148
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ai;->h:Lcom/dropbox/core/v2/files/ai$b;

    .line 1149
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ai;->i:Ljava/lang/String;

    return-object v1
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/ai;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ai;->i:Ljava/lang/String;

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

    .line 331
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ai;

    if-eqz v2, :cond_5

    .line 332
    check-cast p1, Lcom/dropbox/core/v2/files/ai;

    .line 333
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ai;->h:Lcom/dropbox/core/v2/files/ai$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ai;->h:Lcom/dropbox/core/v2/files/ai$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 336
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/ai$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ai;->h:Lcom/dropbox/core/v2/files/ai$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ai$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 338
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ai;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ai;->i:Ljava/lang/String;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 316
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ai;->h:Lcom/dropbox/core/v2/files/ai$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ai;->i:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 364
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ai$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
