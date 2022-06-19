.class public final Lcom/dropbox/core/v2/sharing/at;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/at$a;,
        Lcom/dropbox/core/v2/sharing/at$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/at;

.field public static final b:Lcom/dropbox/core/v2/sharing/at;

.field public static final c:Lcom/dropbox/core/v2/sharing/at;

.field public static final d:Lcom/dropbox/core/v2/sharing/at;

.field public static final e:Lcom/dropbox/core/v2/sharing/at;

.field public static final f:Lcom/dropbox/core/v2/sharing/at;


# instance fields
.field g:Lcom/dropbox/core/v2/sharing/at$b;

.field private h:Lcom/dropbox/core/v2/sharing/bc;

.field private i:Lcom/dropbox/core/v2/sharing/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/at$b;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/at;->a:Lcom/dropbox/core/v2/sharing/at;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/at$b;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/at;->b:Lcom/dropbox/core/v2/sharing/at;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/at$b;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/at;->c:Lcom/dropbox/core/v2/sharing/at;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/at$b;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/at;->d:Lcom/dropbox/core/v2/sharing/at;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/at$b;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/at;->e:Lcom/dropbox/core/v2/sharing/at;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->OTHER:Lcom/dropbox/core/v2/sharing/at$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/at$b;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/at;->f:Lcom/dropbox/core/v2/sharing/at;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/at$b;)Lcom/dropbox/core/v2/sharing/at;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    .line 119
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/at;
    .locals 2

    if-eqz p0, :cond_0

    .line 199
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/at$b;

    .line 1132
    new-instance v1, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    .line 1133
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    .line 1134
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/at;->h:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bd;)Lcom/dropbox/core/v2/sharing/at;
    .locals 2

    if-eqz p0, :cond_0

    .line 246
    new-instance v0, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/at$b;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/at$b;

    .line 1147
    new-instance v1, Lcom/dropbox/core/v2/sharing/at;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/at;-><init>()V

    .line 1148
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    .line 1149
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/at;->i:Lcom/dropbox/core/v2/sharing/bd;

    return-object v1

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/at;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/at;->h:Lcom/dropbox/core/v2/sharing/bc;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/at;)Lcom/dropbox/core/v2/sharing/bd;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/at;->i:Lcom/dropbox/core/v2/sharing/bd;

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

    .line 349
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/at;

    if-eqz v2, :cond_7

    .line 350
    check-cast p1, Lcom/dropbox/core/v2/sharing/at;

    .line 351
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 354
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/at$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/at$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 358
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/at;->i:Lcom/dropbox/core/v2/sharing/bd;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/at;->i:Lcom/dropbox/core/v2/sharing/bd;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bd;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 356
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/at;->h:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/at;->h:Lcom/dropbox/core/v2/sharing/bc;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bc;->equals(Ljava/lang/Object;)Z

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
        :pswitch_2
        :pswitch_1
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/at;->h:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/at;->i:Lcom/dropbox/core/v2/sharing/bd;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 382
    sget-object v0, Lcom/dropbox/core/v2/sharing/at$a;->a:Lcom/dropbox/core/v2/sharing/at$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/at$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
