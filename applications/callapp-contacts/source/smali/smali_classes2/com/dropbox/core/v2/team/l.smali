.class public final Lcom/dropbox/core/v2/team/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/l$a;,
        Lcom/dropbox/core/v2/team/l$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/l;

.field public static final b:Lcom/dropbox/core/v2/team/l;

.field public static final c:Lcom/dropbox/core/v2/team/l;

.field public static final d:Lcom/dropbox/core/v2/team/l;

.field public static final e:Lcom/dropbox/core/v2/team/l;


# instance fields
.field f:Lcom/dropbox/core/v2/team/l$b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
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

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/l$b;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/l$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/l;->a(Lcom/dropbox/core/v2/team/l$b;)Lcom/dropbox/core/v2/team/l;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/l;->a:Lcom/dropbox/core/v2/team/l;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/l$b;->OTHER:Lcom/dropbox/core/v2/team/l$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/l;->a(Lcom/dropbox/core/v2/team/l$b;)Lcom/dropbox/core/v2/team/l;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/l;->b:Lcom/dropbox/core/v2/team/l;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/l$b;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/l$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/l;->a(Lcom/dropbox/core/v2/team/l$b;)Lcom/dropbox/core/v2/team/l;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/l;->c:Lcom/dropbox/core/v2/team/l;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/l$b;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/l$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/l;->a(Lcom/dropbox/core/v2/team/l$b;)Lcom/dropbox/core/v2/team/l;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/l;->d:Lcom/dropbox/core/v2/team/l;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/l$b;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/l$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/l;->a(Lcom/dropbox/core/v2/team/l$b;)Lcom/dropbox/core/v2/team/l;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/l;->e:Lcom/dropbox/core/v2/team/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/team/l$b;)Lcom/dropbox/core/v2/team/l;
    .locals 1

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    .line 112
    iput-object p0, v0, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/dropbox/core/v2/team/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/l;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 247
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

    .line 249
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 252
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/l$b;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/l$b;

    .line 1126
    new-instance v1, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/l;-><init>()V

    .line 1127
    iput-object v0, v1, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    .line 1128
    iput-object p0, v1, Lcom/dropbox/core/v2/team/l;->g:Ljava/util/List;

    return-object v1

    .line 245
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/l;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/l;->g:Ljava/util/List;

    return-object p0
.end method

.method public static b(Ljava/util/List;)Lcom/dropbox/core/v2/team/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/l;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 302
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

    .line 304
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/l$b;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/l$b;

    .line 1142
    new-instance v1, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/l;-><init>()V

    .line 1143
    iput-object v0, v1, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    .line 1144
    iput-object p0, v1, Lcom/dropbox/core/v2/team/l;->h:Ljava/util/List;

    return-object v1

    .line 300
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/l;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/l;->h:Ljava/util/List;

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

    .line 347
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/l;

    if-eqz v2, :cond_7

    .line 348
    check-cast p1, Lcom/dropbox/core/v2/team/l;

    .line 349
    iget-object v2, p0, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 352
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/l$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/l$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 366
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/l;->h:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/l;->h:Ljava/util/List;

    if-eq v2, p1, :cond_4

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 364
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/l;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/l;->g:Ljava/util/List;

    if-eq v2, p1, :cond_6

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    :pswitch_2
    return v0

    :cond_7
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
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/l;->g:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/l;->h:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 335
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 378
    sget-object v0, Lcom/dropbox/core/v2/team/l$a;->a:Lcom/dropbox/core/v2/team/l$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/l$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
