.class public final Lcom/dropbox/core/v2/files/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ap$a;,
        Lcom/dropbox/core/v2/files/ap$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ap;

.field public static final b:Lcom/dropbox/core/v2/files/ap;

.field public static final c:Lcom/dropbox/core/v2/files/ap;

.field public static final d:Lcom/dropbox/core/v2/files/ap;

.field public static final e:Lcom/dropbox/core/v2/files/ap;

.field public static final f:Lcom/dropbox/core/v2/files/ap;

.field public static final g:Lcom/dropbox/core/v2/files/ap;

.field public static final h:Lcom/dropbox/core/v2/files/ap;

.field public static final i:Lcom/dropbox/core/v2/files/ap;

.field public static final j:Lcom/dropbox/core/v2/files/ap;


# instance fields
.field k:Lcom/dropbox/core/v2/files/ap$b;

.field private l:Lcom/dropbox/core/v2/files/ai;

.field private m:Lcom/dropbox/core/v2/files/bl;

.field private n:Lcom/dropbox/core/v2/files/bl;

.field private o:Lcom/dropbox/core/v2/files/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->a:Lcom/dropbox/core/v2/files/ap;

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->b:Lcom/dropbox/core/v2/files/ap;

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->c:Lcom/dropbox/core/v2/files/ap;

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->d:Lcom/dropbox/core/v2/files/ap;

    .line 119
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->e:Lcom/dropbox/core/v2/files/ap;

    .line 125
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->f:Lcom/dropbox/core/v2/files/ap;

    .line 129
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->g:Lcom/dropbox/core/v2/files/ap;

    .line 135
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->h:Lcom/dropbox/core/v2/files/ap;

    .line 139
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->CANT_MOVE_SHARED_FOLDER:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->i:Lcom/dropbox/core/v2/files/ap;

    .line 147
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->OTHER:Lcom/dropbox/core/v2/files/ap$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ap;->j:Lcom/dropbox/core/v2/files/ap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ap;->l:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ap;
    .locals 2

    if-eqz p0, :cond_0

    .line 280
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/ap$b;

    .line 1181
    new-instance v1, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    .line 1182
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    .line 1183
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ap;->l:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 278
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/am;)Lcom/dropbox/core/v2/files/ap;
    .locals 2

    if-eqz p0, :cond_0

    .line 518
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->CANT_MOVE_INTO_VAULT:Lcom/dropbox/core/v2/files/ap$b;

    .line 1228
    new-instance v1, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    .line 1229
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    .line 1230
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ap;->o:Lcom/dropbox/core/v2/files/am;

    return-object v1

    .line 516
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/ap$b;)Lcom/dropbox/core/v2/files/ap;
    .locals 1

    .line 167
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    .line 168
    iput-object p0, v0, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/ap;
    .locals 2

    if-eqz p0, :cond_0

    .line 326
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->FROM_WRITE:Lcom/dropbox/core/v2/files/ap$b;

    .line 1196
    new-instance v1, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    .line 1197
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    .line 1198
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ap;->m:Lcom/dropbox/core/v2/files/bl;

    return-object v1

    .line 324
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/ap;
    .locals 2

    if-eqz p0, :cond_0

    .line 372
    new-instance v0, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ap$b;->TO:Lcom/dropbox/core/v2/files/ap$b;

    .line 1211
    new-instance v1, Lcom/dropbox/core/v2/files/ap;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ap;-><init>()V

    .line 1212
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    .line 1213
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ap;->n:Lcom/dropbox/core/v2/files/bl;

    return-object v1

    .line 370
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/bl;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ap;->m:Lcom/dropbox/core/v2/files/bl;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/bl;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ap;->n:Lcom/dropbox/core/v2/files/bl;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/am;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ap;->o:Lcom/dropbox/core/v2/files/am;

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

    .line 572
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ap;

    if-eqz v2, :cond_b

    .line 573
    check-cast p1, Lcom/dropbox/core/v2/files/ap;

    .line 574
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 577
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/ap$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ap$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 603
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ap;->o:Lcom/dropbox/core/v2/files/am;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ap;->o:Lcom/dropbox/core/v2/files/am;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/am;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    .line 583
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ap;->n:Lcom/dropbox/core/v2/files/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ap;->n:Lcom/dropbox/core/v2/files/bl;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0

    .line 581
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ap;->m:Lcom/dropbox/core/v2/files/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ap;->m:Lcom/dropbox/core/v2/files/bl;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v0

    .line 579
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ap;->l:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ap;->l:Lcom/dropbox/core/v2/files/ai;

    if-eq v2, p1, :cond_a

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ai;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    return v1

    :cond_a
    :goto_3
    return v0

    :cond_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 554
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ap;->l:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ap;->m:Lcom/dropbox/core/v2/files/bl;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ap;->n:Lcom/dropbox/core/v2/files/bl;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ap;->o:Lcom/dropbox/core/v2/files/am;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 617
    sget-object v0, Lcom/dropbox/core/v2/files/ap$a;->a:Lcom/dropbox/core/v2/files/ap$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ap$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
