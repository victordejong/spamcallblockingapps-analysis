.class public final Lcom/dropbox/core/v2/sharing/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bp$a;,
        Lcom/dropbox/core/v2/sharing/bp$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bp;

.field public static final b:Lcom/dropbox/core/v2/sharing/bp;

.field public static final c:Lcom/dropbox/core/v2/sharing/bp;

.field public static final d:Lcom/dropbox/core/v2/sharing/bp;

.field public static final e:Lcom/dropbox/core/v2/sharing/bp;

.field public static final f:Lcom/dropbox/core/v2/sharing/bp;

.field public static final g:Lcom/dropbox/core/v2/sharing/bp;


# instance fields
.field h:Lcom/dropbox/core/v2/sharing/bp$b;

.field private i:Lcom/dropbox/core/v2/sharing/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp;->a:Lcom/dropbox/core/v2/sharing/bp;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp;->b:Lcom/dropbox/core/v2/sharing/bp;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp;->c:Lcom/dropbox/core/v2/sharing/bp;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp;->d:Lcom/dropbox/core/v2/sharing/bp;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp;->e:Lcom/dropbox/core/v2/sharing/bp;

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp;->f:Lcom/dropbox/core/v2/sharing/bp;

    .line 104
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->OTHER:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp;->g:Lcom/dropbox/core/v2/sharing/bp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/bp;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/bp;->i:Lcom/dropbox/core/v2/sharing/bc;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bp;
    .locals 2

    if-eqz p0, :cond_0

    .line 187
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 1135
    new-instance v1, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    .line 1136
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/bp;->h:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 1137
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/bp;->i:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/bp$b;)Lcom/dropbox/core/v2/sharing/bp;
    .locals 1

    .line 121
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp;-><init>()V

    .line 122
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/bp;->h:Lcom/dropbox/core/v2/sharing/bp$b;

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

    .line 300
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/bp;

    if-eqz v2, :cond_5

    .line 301
    check-cast p1, Lcom/dropbox/core/v2/sharing/bp;

    .line 302
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bp;->h:Lcom/dropbox/core/v2/sharing/bp$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bp;->h:Lcom/dropbox/core/v2/sharing/bp$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 305
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/bp$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/bp;->h:Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/bp$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 307
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bp;->i:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bp;->i:Lcom/dropbox/core/v2/sharing/bc;

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

    .line 285
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bp;->h:Lcom/dropbox/core/v2/sharing/bp$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bp;->i:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$a;->a:Lcom/dropbox/core/v2/sharing/bp$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bp$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
