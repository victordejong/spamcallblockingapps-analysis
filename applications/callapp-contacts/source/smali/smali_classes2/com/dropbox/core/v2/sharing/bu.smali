.class public final Lcom/dropbox/core/v2/sharing/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bu$a;,
        Lcom/dropbox/core/v2/sharing/bu$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bu;

.field public static final b:Lcom/dropbox/core/v2/sharing/bu;

.field public static final c:Lcom/dropbox/core/v2/sharing/bu;

.field public static final d:Lcom/dropbox/core/v2/sharing/bu;

.field public static final e:Lcom/dropbox/core/v2/sharing/bu;

.field public static final f:Lcom/dropbox/core/v2/sharing/bu;


# instance fields
.field g:Lcom/dropbox/core/v2/sharing/bu$b;

.field private h:Lcom/dropbox/core/v2/sharing/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$b;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/bu$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bu$b;)Lcom/dropbox/core/v2/sharing/bu;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bu;->a:Lcom/dropbox/core/v2/sharing/bu;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$b;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/bu$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bu$b;)Lcom/dropbox/core/v2/sharing/bu;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bu;->b:Lcom/dropbox/core/v2/sharing/bu;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$b;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/bu$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bu$b;)Lcom/dropbox/core/v2/sharing/bu;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bu;->c:Lcom/dropbox/core/v2/sharing/bu;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/bu$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bu$b;)Lcom/dropbox/core/v2/sharing/bu;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bu;->d:Lcom/dropbox/core/v2/sharing/bu;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/bu$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bu$b;)Lcom/dropbox/core/v2/sharing/bu;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bu;->e:Lcom/dropbox/core/v2/sharing/bu;

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$b;->OTHER:Lcom/dropbox/core/v2/sharing/bu$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bu$b;)Lcom/dropbox/core/v2/sharing/bu;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/bu;->f:Lcom/dropbox/core/v2/sharing/bu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/bu;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/bu;->h:Lcom/dropbox/core/v2/sharing/bc;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bu;
    .locals 2

    if-eqz p0, :cond_0

    .line 184
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/bu$b;

    .line 1132
    new-instance v1, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    .line 1133
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/bu;->g:Lcom/dropbox/core/v2/sharing/bu$b;

    .line 1134
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/bu;->h:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/bu$b;)Lcom/dropbox/core/v2/sharing/bu;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu;-><init>()V

    .line 119
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/bu;->g:Lcom/dropbox/core/v2/sharing/bu$b;

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

    .line 286
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/bu;

    if-eqz v2, :cond_5

    .line 287
    check-cast p1, Lcom/dropbox/core/v2/sharing/bu;

    .line 288
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bu;->g:Lcom/dropbox/core/v2/sharing/bu$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bu;->g:Lcom/dropbox/core/v2/sharing/bu$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 291
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/bu$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/bu;->g:Lcom/dropbox/core/v2/sharing/bu$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/bu$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 293
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bu;->h:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bu;->h:Lcom/dropbox/core/v2/sharing/bc;

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
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bu;->g:Lcom/dropbox/core/v2/sharing/bu$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bu;->h:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$a;->a:Lcom/dropbox/core/v2/sharing/bu$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bu$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
