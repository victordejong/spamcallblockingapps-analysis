.class public final Lcom/dropbox/core/v2/sharing/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ar$a;,
        Lcom/dropbox/core/v2/sharing/ar$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ar;

.field public static final b:Lcom/dropbox/core/v2/sharing/ar;

.field public static final c:Lcom/dropbox/core/v2/sharing/ar;

.field public static final d:Lcom/dropbox/core/v2/sharing/ar;

.field public static final e:Lcom/dropbox/core/v2/sharing/ar;

.field public static final f:Lcom/dropbox/core/v2/sharing/ar;

.field public static final g:Lcom/dropbox/core/v2/sharing/ar;


# instance fields
.field h:Lcom/dropbox/core/v2/sharing/ar$b;

.field private i:Lcom/dropbox/core/v2/sharing/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar;->a:Lcom/dropbox/core/v2/sharing/ar;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->MOUNTED:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar;->b:Lcom/dropbox/core/v2/sharing/ar;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar;->c:Lcom/dropbox/core/v2/sharing/ar;

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar;->d:Lcom/dropbox/core/v2/sharing/ar;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar;->e:Lcom/dropbox/core/v2/sharing/ar;

    .line 105
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar;->f:Lcom/dropbox/core/v2/sharing/ar;

    .line 113
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->OTHER:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar;->g:Lcom/dropbox/core/v2/sharing/ar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/ar$b;)Lcom/dropbox/core/v2/sharing/ar;
    .locals 1

    .line 130
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    .line 131
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/ar;->h:Lcom/dropbox/core/v2/sharing/ar$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/ar;
    .locals 2

    if-eqz p0, :cond_0

    .line 196
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ar$b;

    .line 1144
    new-instance v1, Lcom/dropbox/core/v2/sharing/ar;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/ar;-><init>()V

    .line 1145
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/ar;->h:Lcom/dropbox/core/v2/sharing/ar$b;

    .line 1146
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/ar;->i:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ar;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ar;->i:Lcom/dropbox/core/v2/sharing/bc;

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

    .line 309
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ar;

    if-eqz v2, :cond_5

    .line 310
    check-cast p1, Lcom/dropbox/core/v2/sharing/ar;

    .line 311
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ar;->h:Lcom/dropbox/core/v2/sharing/ar$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ar;->h:Lcom/dropbox/core/v2/sharing/ar$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 314
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ar$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ar;->h:Lcom/dropbox/core/v2/sharing/ar$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ar$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 316
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ar;->i:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ar;->i:Lcom/dropbox/core/v2/sharing/bc;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bc;->equals(Ljava/lang/Object;)Z

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

    .line 294
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ar;->h:Lcom/dropbox/core/v2/sharing/ar$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ar;->i:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 342
    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$a;->a:Lcom/dropbox/core/v2/sharing/ar$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ar$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
