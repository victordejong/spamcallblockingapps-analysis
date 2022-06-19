.class public final Lcom/dropbox/core/v2/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/auth/b$a;,
        Lcom/dropbox/core/v2/auth/b$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/auth/b;

.field public static final b:Lcom/dropbox/core/v2/auth/b;

.field public static final c:Lcom/dropbox/core/v2/auth/b;

.field public static final d:Lcom/dropbox/core/v2/auth/b;

.field public static final e:Lcom/dropbox/core/v2/auth/b;

.field public static final f:Lcom/dropbox/core/v2/auth/b;

.field public static final g:Lcom/dropbox/core/v2/auth/b;


# instance fields
.field h:Lcom/dropbox/core/v2/auth/b$b;

.field private i:Lcom/dropbox/core/v2/auth/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->INVALID_ACCESS_TOKEN:Lcom/dropbox/core/v2/auth/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/b;->a:Lcom/dropbox/core/v2/auth/b;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->INVALID_SELECT_USER:Lcom/dropbox/core/v2/auth/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/b;->b:Lcom/dropbox/core/v2/auth/b;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->INVALID_SELECT_ADMIN:Lcom/dropbox/core/v2/auth/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/b;->c:Lcom/dropbox/core/v2/auth/b;

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->USER_SUSPENDED:Lcom/dropbox/core/v2/auth/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/b;->d:Lcom/dropbox/core/v2/auth/b;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->EXPIRED_ACCESS_TOKEN:Lcom/dropbox/core/v2/auth/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/b;->e:Lcom/dropbox/core/v2/auth/b;

    .line 104
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->ROUTE_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/b;->f:Lcom/dropbox/core/v2/auth/b;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->OTHER:Lcom/dropbox/core/v2/auth/b$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/b;->g:Lcom/dropbox/core/v2/auth/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/auth/b$b;)Lcom/dropbox/core/v2/auth/b;
    .locals 1

    .line 130
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    .line 131
    iput-object p0, v0, Lcom/dropbox/core/v2/auth/b;->h:Lcom/dropbox/core/v2/auth/b$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/auth/g;)Lcom/dropbox/core/v2/auth/b;
    .locals 2

    if-eqz p0, :cond_0

    .line 254
    new-instance v0, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/auth/b$b;->MISSING_SCOPE:Lcom/dropbox/core/v2/auth/b$b;

    .line 1146
    new-instance v1, Lcom/dropbox/core/v2/auth/b;

    invoke-direct {v1}, Lcom/dropbox/core/v2/auth/b;-><init>()V

    .line 1147
    iput-object v0, v1, Lcom/dropbox/core/v2/auth/b;->h:Lcom/dropbox/core/v2/auth/b$b;

    .line 1148
    iput-object p0, v1, Lcom/dropbox/core/v2/auth/b;->i:Lcom/dropbox/core/v2/auth/g;

    return-object v1

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/auth/b;)Lcom/dropbox/core/v2/auth/g;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/auth/b;->i:Lcom/dropbox/core/v2/auth/g;

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

    .line 314
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/auth/b;

    if-eqz v2, :cond_5

    .line 315
    check-cast p1, Lcom/dropbox/core/v2/auth/b;

    .line 316
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/b;->h:Lcom/dropbox/core/v2/auth/b$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/b;->h:Lcom/dropbox/core/v2/auth/b$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 319
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/auth/b$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/b;->h:Lcom/dropbox/core/v2/auth/b$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/auth/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 331
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/b;->i:Lcom/dropbox/core/v2/auth/g;

    iget-object p1, p1, Lcom/dropbox/core/v2/auth/b;->i:Lcom/dropbox/core/v2/auth/g;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/auth/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lcom/dropbox/core/v2/auth/b;->h:Lcom/dropbox/core/v2/auth/b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/b;->i:Lcom/dropbox/core/v2/auth/g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 347
    sget-object v0, Lcom/dropbox/core/v2/auth/b$a;->a:Lcom/dropbox/core/v2/auth/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/b$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
