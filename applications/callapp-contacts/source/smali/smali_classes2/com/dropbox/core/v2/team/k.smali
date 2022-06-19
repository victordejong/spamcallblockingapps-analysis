.class public final Lcom/dropbox/core/v2/team/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/k$a;,
        Lcom/dropbox/core/v2/team/k$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/k;

.field public static final b:Lcom/dropbox/core/v2/team/k;

.field public static final c:Lcom/dropbox/core/v2/team/k;

.field public static final d:Lcom/dropbox/core/v2/team/k;

.field public static final e:Lcom/dropbox/core/v2/team/k;

.field public static final f:Lcom/dropbox/core/v2/team/k;


# instance fields
.field g:Lcom/dropbox/core/v2/team/k$b;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/k;->a(Lcom/dropbox/core/v2/team/k$b;)Lcom/dropbox/core/v2/team/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/k;->a:Lcom/dropbox/core/v2/team/k;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->OTHER:Lcom/dropbox/core/v2/team/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/k;->a(Lcom/dropbox/core/v2/team/k$b;)Lcom/dropbox/core/v2/team/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/k;->b:Lcom/dropbox/core/v2/team/k;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/k;->a(Lcom/dropbox/core/v2/team/k$b;)Lcom/dropbox/core/v2/team/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/k;->c:Lcom/dropbox/core/v2/team/k;

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/k;->a(Lcom/dropbox/core/v2/team/k$b;)Lcom/dropbox/core/v2/team/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/k;->d:Lcom/dropbox/core/v2/team/k;

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/k;->a(Lcom/dropbox/core/v2/team/k$b;)Lcom/dropbox/core/v2/team/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/k;->e:Lcom/dropbox/core/v2/team/k;

    .line 113
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/k$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/k;->a(Lcom/dropbox/core/v2/team/k$b;)Lcom/dropbox/core/v2/team/k;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/k;->f:Lcom/dropbox/core/v2/team/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/team/k$b;)Lcom/dropbox/core/v2/team/k;
    .locals 1

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    .line 133
    iput-object p0, v0, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/dropbox/core/v2/team/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/k;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 293
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/k$b;

    .line 1151
    new-instance v1, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/k;-><init>()V

    .line 1152
    iput-object v0, v1, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    .line 1153
    iput-object p0, v1, Lcom/dropbox/core/v2/team/k;->h:Ljava/util/List;

    return-object v1

    .line 291
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/k;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/k;->h:Ljava/util/List;

    return-object p0
.end method

.method public static b(Ljava/util/List;)Lcom/dropbox/core/v2/team/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/k;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 352
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/k$b;

    .line 1167
    new-instance v1, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/k;-><init>()V

    .line 1168
    iput-object v0, v1, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    .line 1169
    iput-object p0, v1, Lcom/dropbox/core/v2/team/k;->i:Ljava/util/List;

    return-object v1

    .line 350
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/k;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/k;->i:Ljava/util/List;

    return-object p0
.end method

.method public static c(Ljava/util/List;)Lcom/dropbox/core/v2/team/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/k;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 420
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/k;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/k$b;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/k$b;

    .line 1184
    new-instance v1, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/k;-><init>()V

    .line 1185
    iput-object v0, v1, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    .line 1186
    iput-object p0, v1, Lcom/dropbox/core/v2/team/k;->j:Ljava/util/List;

    return-object v1

    .line 418
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/k;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/k;->j:Ljava/util/List;

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

    .line 467
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/k;

    if-eqz v2, :cond_9

    .line 468
    check-cast p1, Lcom/dropbox/core/v2/team/k;

    .line 469
    iget-object v2, p0, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 472
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/k$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/k$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 490
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/k;->j:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/k;->j:Ljava/util/List;

    if-eq v2, p1, :cond_4

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_1
    return v0

    .line 486
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/k;->i:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/k;->i:Ljava/util/List;

    if-eq v2, p1, :cond_6

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0

    .line 484
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/k;->h:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/k;->h:Ljava/util/List;

    if-eq v2, p1, :cond_8

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    :pswitch_4
    return v0

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/dropbox/core/v2/team/k;->g:Lcom/dropbox/core/v2/team/k$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/k;->h:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/k;->i:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/k;->j:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 455
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 502
    sget-object v0, Lcom/dropbox/core/v2/team/k$a;->a:Lcom/dropbox/core/v2/team/k$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/k$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
