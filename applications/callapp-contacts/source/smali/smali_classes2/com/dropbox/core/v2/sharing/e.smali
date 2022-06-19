.class public final Lcom/dropbox/core/v2/sharing/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/e$a;,
        Lcom/dropbox/core/v2/sharing/e$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/e;

.field public static final b:Lcom/dropbox/core/v2/sharing/e;

.field public static final c:Lcom/dropbox/core/v2/sharing/e;

.field public static final d:Lcom/dropbox/core/v2/sharing/e;

.field public static final e:Lcom/dropbox/core/v2/sharing/e;

.field public static final f:Lcom/dropbox/core/v2/sharing/e;

.field public static final g:Lcom/dropbox/core/v2/sharing/e;

.field public static final h:Lcom/dropbox/core/v2/sharing/e;

.field public static final i:Lcom/dropbox/core/v2/sharing/e;

.field public static final j:Lcom/dropbox/core/v2/sharing/e;


# instance fields
.field k:Lcom/dropbox/core/v2/sharing/e$b;

.field private l:Lcom/dropbox/core/v2/sharing/bc;

.field private m:Lcom/dropbox/core/v2/sharing/f;

.field private n:Ljava/lang/Long;

.field private o:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->a:Lcom/dropbox/core/v2/sharing/e;

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->BANNED_MEMBER:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->b:Lcom/dropbox/core/v2/sharing/e;

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->c:Lcom/dropbox/core/v2/sharing/e;

    .line 119
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->d:Lcom/dropbox/core/v2/sharing/e;

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->e:Lcom/dropbox/core/v2/sharing/e;

    .line 129
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->f:Lcom/dropbox/core/v2/sharing/e;

    .line 133
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->g:Lcom/dropbox/core/v2/sharing/e;

    .line 137
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->h:Lcom/dropbox/core/v2/sharing/e;

    .line 141
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->INVALID_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->i:Lcom/dropbox/core/v2/sharing/e;

    .line 149
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->OTHER:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/e;->j:Lcom/dropbox/core/v2/sharing/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/e;->l:Lcom/dropbox/core/v2/sharing/bc;

    return-object p0
.end method

.method public static a(J)Lcom/dropbox/core/v2/sharing/e;
    .locals 1

    .line 405
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 1213
    new-instance p1, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {p1}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    .line 1214
    iput-object v0, p1, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    .line 1215
    iput-object p0, p1, Lcom/dropbox/core/v2/sharing/e;->n:Ljava/lang/Long;

    return-object p1
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/e;
    .locals 2

    if-eqz p0, :cond_0

    .line 278
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/e$b;

    .line 1184
    new-instance v1, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    .line 1185
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    .line 1186
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/e;->l:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 276
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/e$b;)Lcom/dropbox/core/v2/sharing/e;
    .locals 1

    .line 169
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    .line 170
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/f;)Lcom/dropbox/core/v2/sharing/e;
    .locals 2

    if-eqz p0, :cond_0

    .line 350
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/e$b;

    .line 1200
    new-instance v1, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    .line 1201
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    .line 1202
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/e;->m:Lcom/dropbox/core/v2/sharing/f;

    return-object v1

    .line 348
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(J)Lcom/dropbox/core/v2/sharing/e;
    .locals 1

    .line 449
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/e$b;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 1226
    new-instance p1, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {p1}, Lcom/dropbox/core/v2/sharing/e;-><init>()V

    .line 1227
    iput-object v0, p1, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    .line 1228
    iput-object p0, p1, Lcom/dropbox/core/v2/sharing/e;->o:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/f;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/e;->m:Lcom/dropbox/core/v2/sharing/f;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/e;)Ljava/lang/Long;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/e;->n:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/sharing/e;)Ljava/lang/Long;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/e;->o:Ljava/lang/Long;

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

    .line 568
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/e;

    if-eqz v2, :cond_9

    .line 569
    check-cast p1, Lcom/dropbox/core/v2/sharing/e;

    .line 570
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 573
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/e$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/e$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 587
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/e;->o:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/e;->o:Ljava/lang/Long;

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1

    .line 585
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/e;->n:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/e;->n:Ljava/lang/Long;

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    return v1

    :pswitch_3
    return v0

    .line 581
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/e;->m:Lcom/dropbox/core/v2/sharing/f;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/e;->m:Lcom/dropbox/core/v2/sharing/f;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    :pswitch_5
    return v0

    .line 575
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/e;->l:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/e;->l:Lcom/dropbox/core/v2/sharing/bc;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v0

    :cond_9
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
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

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 550
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/e;->l:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/e;->m:Lcom/dropbox/core/v2/sharing/f;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/e;->n:Ljava/lang/Long;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/e;->o:Ljava/lang/Long;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 613
    sget-object v0, Lcom/dropbox/core/v2/sharing/e$a;->a:Lcom/dropbox/core/v2/sharing/e$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/e$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
