.class public final Lcom/dropbox/core/v2/team/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/be$a;,
        Lcom/dropbox/core/v2/team/be$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/be;

.field public static final b:Lcom/dropbox/core/v2/team/be;

.field public static final c:Lcom/dropbox/core/v2/team/be;

.field public static final d:Lcom/dropbox/core/v2/team/be;


# instance fields
.field e:Lcom/dropbox/core/v2/team/be$b;

.field private f:Lcom/dropbox/core/v2/team/aw;

.field private g:Lcom/dropbox/core/v2/team/ba;

.field private h:Lcom/dropbox/core/v2/team/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/be$b;->OTHER:Lcom/dropbox/core/v2/team/be$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/be$b;)Lcom/dropbox/core/v2/team/be;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/be;->a:Lcom/dropbox/core/v2/team/be;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/be$b;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/be$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/be$b;)Lcom/dropbox/core/v2/team/be;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/be;->b:Lcom/dropbox/core/v2/team/be;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/be$b;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/be$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/be$b;)Lcom/dropbox/core/v2/team/be;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/be;->c:Lcom/dropbox/core/v2/team/be;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/be$b;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/be$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/be$b;)Lcom/dropbox/core/v2/team/be;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/be;->d:Lcom/dropbox/core/v2/team/be;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/be;)Lcom/dropbox/core/v2/team/aw;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/be;->f:Lcom/dropbox/core/v2/team/aw;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/aw;)Lcom/dropbox/core/v2/team/be;
    .locals 2

    if-eqz p0, :cond_0

    .line 189
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/be$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/be$b;

    .line 1110
    new-instance v1, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/be;-><init>()V

    .line 1111
    iput-object v0, v1, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    .line 1112
    iput-object p0, v1, Lcom/dropbox/core/v2/team/be;->f:Lcom/dropbox/core/v2/team/aw;

    return-object v1

    .line 187
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/team/ba;)Lcom/dropbox/core/v2/team/be;
    .locals 2

    if-eqz p0, :cond_0

    .line 236
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/be$b;->STATUS_ERROR:Lcom/dropbox/core/v2/team/be$b;

    .line 1125
    new-instance v1, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/be;-><init>()V

    .line 1126
    iput-object v0, v1, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    .line 1127
    iput-object p0, v1, Lcom/dropbox/core/v2/team/be;->g:Lcom/dropbox/core/v2/team/ba;

    return-object v1

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/team/be$b;)Lcom/dropbox/core/v2/team/be;
    .locals 1

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    .line 97
    iput-object p0, v0, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/team/bf;)Lcom/dropbox/core/v2/team/be;
    .locals 2

    if-eqz p0, :cond_0

    .line 283
    new-instance v0, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/team/be$b;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/be$b;

    .line 1140
    new-instance v1, Lcom/dropbox/core/v2/team/be;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/be;-><init>()V

    .line 1141
    iput-object v0, v1, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    .line 1142
    iput-object p0, v1, Lcom/dropbox/core/v2/team/be;->h:Lcom/dropbox/core/v2/team/bf;

    return-object v1

    .line 281
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/be;)Lcom/dropbox/core/v2/team/ba;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/be;->g:Lcom/dropbox/core/v2/team/ba;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/be;)Lcom/dropbox/core/v2/team/bf;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/be;->h:Lcom/dropbox/core/v2/team/bf;

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

    .line 367
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/be;

    if-eqz v2, :cond_9

    .line 368
    check-cast p1, Lcom/dropbox/core/v2/team/be;

    .line 369
    iget-object v2, p0, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 372
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/be$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/be$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 378
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/be;->h:Lcom/dropbox/core/v2/team/bf;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/be;->h:Lcom/dropbox/core/v2/team/bf;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/bf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 376
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/be;->g:Lcom/dropbox/core/v2/team/ba;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/be;->g:Lcom/dropbox/core/v2/team/ba;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/ba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0

    .line 374
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/be;->f:Lcom/dropbox/core/v2/team/aw;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/be;->f:Lcom/dropbox/core/v2/team/aw;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/aw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v0

    :cond_9
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/be;->f:Lcom/dropbox/core/v2/team/aw;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/be;->g:Lcom/dropbox/core/v2/team/ba;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/be;->h:Lcom/dropbox/core/v2/team/bf;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 355
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 398
    sget-object v0, Lcom/dropbox/core/v2/team/be$a;->a:Lcom/dropbox/core/v2/team/be$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/be$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
