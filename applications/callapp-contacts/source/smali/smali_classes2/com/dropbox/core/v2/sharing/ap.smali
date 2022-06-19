.class public final Lcom/dropbox/core/v2/sharing/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ap$a;,
        Lcom/dropbox/core/v2/sharing/ap$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ap;

.field public static final b:Lcom/dropbox/core/v2/sharing/ap;

.field public static final c:Lcom/dropbox/core/v2/sharing/ap;

.field public static final d:Lcom/dropbox/core/v2/sharing/ap;

.field public static final e:Lcom/dropbox/core/v2/sharing/ap;

.field public static final f:Lcom/dropbox/core/v2/sharing/ap;

.field public static final g:Lcom/dropbox/core/v2/sharing/ap;

.field public static final h:Lcom/dropbox/core/v2/sharing/ap;

.field public static final i:Lcom/dropbox/core/v2/sharing/ap;

.field public static final j:Lcom/dropbox/core/v2/sharing/ap;

.field public static final k:Lcom/dropbox/core/v2/sharing/ap;

.field public static final l:Lcom/dropbox/core/v2/sharing/ap;

.field public static final m:Lcom/dropbox/core/v2/sharing/ap;

.field public static final n:Lcom/dropbox/core/v2/sharing/ap;

.field public static final o:Lcom/dropbox/core/v2/sharing/ap;


# instance fields
.field p:Lcom/dropbox/core/v2/sharing/ap$b;

.field private q:Lcom/dropbox/core/v2/sharing/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->a:Lcom/dropbox/core/v2/sharing/ap;

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->b:Lcom/dropbox/core/v2/sharing/ap;

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->c:Lcom/dropbox/core/v2/sharing/ap;

    .line 124
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->d:Lcom/dropbox/core/v2/sharing/ap;

    .line 128
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->e:Lcom/dropbox/core/v2/sharing/ap;

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->f:Lcom/dropbox/core/v2/sharing/ap;

    .line 136
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->g:Lcom/dropbox/core/v2/sharing/ap;

    .line 140
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->h:Lcom/dropbox/core/v2/sharing/ap;

    .line 144
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->i:Lcom/dropbox/core/v2/sharing/ap;

    .line 148
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->j:Lcom/dropbox/core/v2/sharing/ap;

    .line 152
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->k:Lcom/dropbox/core/v2/sharing/ap;

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->l:Lcom/dropbox/core/v2/sharing/ap;

    .line 160
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->m:Lcom/dropbox/core/v2/sharing/ap;

    .line 164
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->n:Lcom/dropbox/core/v2/sharing/ap;

    .line 172
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->OTHER:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap;->o:Lcom/dropbox/core/v2/sharing/ap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/ap$b;)Lcom/dropbox/core/v2/sharing/ap;
    .locals 1

    .line 190
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    .line 191
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/ap;->p:Lcom/dropbox/core/v2/sharing/ap$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/v;)Lcom/dropbox/core/v2/sharing/ap;
    .locals 2

    if-eqz p0, :cond_0

    .line 411
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$b;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/ap$b;

    .line 1205
    new-instance v1, Lcom/dropbox/core/v2/sharing/ap;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/ap;-><init>()V

    .line 1206
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/ap;->p:Lcom/dropbox/core/v2/sharing/ap$b;

    .line 1207
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/ap;->q:Lcom/dropbox/core/v2/sharing/v;

    return-object v1

    .line 409
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ap;)Lcom/dropbox/core/v2/sharing/v;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ap;->q:Lcom/dropbox/core/v2/sharing/v;

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

    .line 458
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ap;

    if-eqz v2, :cond_5

    .line 459
    check-cast p1, Lcom/dropbox/core/v2/sharing/ap;

    .line 460
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ap;->p:Lcom/dropbox/core/v2/sharing/ap$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ap;->p:Lcom/dropbox/core/v2/sharing/ap$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 463
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ap$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ap;->p:Lcom/dropbox/core/v2/sharing/ap$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ap$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 493
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ap;->q:Lcom/dropbox/core/v2/sharing/v;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ap;->q:Lcom/dropbox/core/v2/sharing/v;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/v;->equals(Ljava/lang/Object;)Z

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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ap;->p:Lcom/dropbox/core/v2/sharing/ap$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ap;->q:Lcom/dropbox/core/v2/sharing/v;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 507
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$a;->a:Lcom/dropbox/core/v2/sharing/ap$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ap$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
