.class public final Lcom/dropbox/core/v2/sharing/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ay$a;,
        Lcom/dropbox/core/v2/sharing/ay$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ay;

.field public static final b:Lcom/dropbox/core/v2/sharing/ay;

.field public static final c:Lcom/dropbox/core/v2/sharing/ay;

.field public static final d:Lcom/dropbox/core/v2/sharing/ay;

.field public static final e:Lcom/dropbox/core/v2/sharing/ay;


# instance fields
.field f:Lcom/dropbox/core/v2/sharing/ay$b;

.field private g:Lcom/dropbox/core/v2/sharing/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$b;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ay;->a(Lcom/dropbox/core/v2/sharing/ay$b;)Lcom/dropbox/core/v2/sharing/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ay;->a:Lcom/dropbox/core/v2/sharing/ay;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$b;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ay;->a(Lcom/dropbox/core/v2/sharing/ay$b;)Lcom/dropbox/core/v2/sharing/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ay;->b:Lcom/dropbox/core/v2/sharing/ay;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$b;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ay;->a(Lcom/dropbox/core/v2/sharing/ay$b;)Lcom/dropbox/core/v2/sharing/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ay;->c:Lcom/dropbox/core/v2/sharing/ay;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$b;->OTHER:Lcom/dropbox/core/v2/sharing/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ay;->a(Lcom/dropbox/core/v2/sharing/ay$b;)Lcom/dropbox/core/v2/sharing/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ay;->d:Lcom/dropbox/core/v2/sharing/ay;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ay$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ay;->a(Lcom/dropbox/core/v2/sharing/ay$b;)Lcom/dropbox/core/v2/sharing/ay;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ay;->e:Lcom/dropbox/core/v2/sharing/ay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/ay$b;)Lcom/dropbox/core/v2/sharing/ay;
    .locals 1

    .line 107
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    .line 108
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/az;)Lcom/dropbox/core/v2/sharing/ay;
    .locals 2

    if-eqz p0, :cond_0

    .line 182
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$b;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ay$b;

    .line 1122
    new-instance v1, Lcom/dropbox/core/v2/sharing/ay;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/ay;-><init>()V

    .line 1123
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    .line 1124
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/ay;->g:Lcom/dropbox/core/v2/sharing/az;

    return-object v1

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ay;)Lcom/dropbox/core/v2/sharing/az;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ay;->g:Lcom/dropbox/core/v2/sharing/az;

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

    .line 264
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ay;

    if-eqz v2, :cond_5

    .line 265
    check-cast p1, Lcom/dropbox/core/v2/sharing/ay;

    .line 266
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 269
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ay$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ay$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 273
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ay;->g:Lcom/dropbox/core/v2/sharing/az;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ay;->g:Lcom/dropbox/core/v2/sharing/az;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/az;->equals(Ljava/lang/Object;)Z

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
        :pswitch_1
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

    .line 248
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ay;->g:Lcom/dropbox/core/v2/sharing/az;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 252
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 293
    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$a;->a:Lcom/dropbox/core/v2/sharing/ay$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ay$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
