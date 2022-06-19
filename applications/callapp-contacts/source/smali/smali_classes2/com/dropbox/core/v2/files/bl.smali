.class public final Lcom/dropbox/core/v2/files/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/bl$a;,
        Lcom/dropbox/core/v2/files/bl$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bl;

.field public static final b:Lcom/dropbox/core/v2/files/bl;

.field public static final c:Lcom/dropbox/core/v2/files/bl;

.field public static final d:Lcom/dropbox/core/v2/files/bl;

.field public static final e:Lcom/dropbox/core/v2/files/bl;

.field public static final f:Lcom/dropbox/core/v2/files/bl;


# instance fields
.field g:Lcom/dropbox/core/v2/files/bl$b;

.field private h:Ljava/lang/String;

.field private i:Lcom/dropbox/core/v2/files/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/bl$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bl$b;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bl;->a:Lcom/dropbox/core/v2/files/bl;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/bl$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bl$b;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bl;->b:Lcom/dropbox/core/v2/files/bl;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/bl$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bl$b;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bl;->c:Lcom/dropbox/core/v2/files/bl;

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/bl$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bl$b;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bl;->d:Lcom/dropbox/core/v2/files/bl;

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/bl$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bl$b;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bl;->e:Lcom/dropbox/core/v2/files/bl;

    .line 109
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->OTHER:Lcom/dropbox/core/v2/files/bl$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bl$b;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bl;->f:Lcom/dropbox/core/v2/files/bl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dropbox/core/v2/files/bl;
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-static {v0}, Lcom/dropbox/core/v2/files/bl;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bk;)Lcom/dropbox/core/v2/files/bl;
    .locals 2

    if-eqz p0, :cond_0

    .line 276
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->CONFLICT:Lcom/dropbox/core/v2/files/bl$b;

    .line 1157
    new-instance v1, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    .line 1158
    iput-object v0, v1, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    .line 1159
    iput-object p0, v1, Lcom/dropbox/core/v2/files/bl;->i:Lcom/dropbox/core/v2/files/bk;

    return-object v1

    .line 274
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/bl$b;)Lcom/dropbox/core/v2/files/bl;
    .locals 1

    .line 127
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    .line 128
    iput-object p0, v0, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/bl;
    .locals 2

    .line 207
    new-instance v0, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bl$b;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/bl$b;

    .line 1141
    new-instance v1, Lcom/dropbox/core/v2/files/bl;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/bl;-><init>()V

    .line 1142
    iput-object v0, v1, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    .line 1143
    iput-object p0, v1, Lcom/dropbox/core/v2/files/bl;->h:Ljava/lang/String;

    return-object v1
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/bl;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/bl;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/bk;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/bl;->i:Lcom/dropbox/core/v2/files/bk;

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

    .line 380
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/bl;

    if-eqz v2, :cond_7

    .line 381
    check-cast p1, Lcom/dropbox/core/v2/files/bl;

    .line 382
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 385
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/bl$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/bl$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 389
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bl;->i:Lcom/dropbox/core/v2/files/bk;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/bl;->i:Lcom/dropbox/core/v2/files/bk;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bk;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 387
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bl;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/bl;->h:Ljava/lang/String;

    if-eq v2, p1, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 364
    iget-object v1, p0, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/bl;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/bl;->i:Lcom/dropbox/core/v2/files/bk;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 413
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/bl$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
