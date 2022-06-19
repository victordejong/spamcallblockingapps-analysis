.class public final Lcom/dropbox/core/v2/sharing/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/f$a;,
        Lcom/dropbox/core/v2/sharing/f$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/f;

.field public static final b:Lcom/dropbox/core/v2/sharing/f;

.field public static final c:Lcom/dropbox/core/v2/sharing/f;

.field public static final d:Lcom/dropbox/core/v2/sharing/f;


# instance fields
.field e:Lcom/dropbox/core/v2/sharing/f$b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/f$b;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/f;->a(Lcom/dropbox/core/v2/sharing/f$b;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/f;->a:Lcom/dropbox/core/v2/sharing/f;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/f$b;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/f;->a(Lcom/dropbox/core/v2/sharing/f$b;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/f;->b:Lcom/dropbox/core/v2/sharing/f;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/f$b;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/f;->a(Lcom/dropbox/core/v2/sharing/f$b;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/f;->c:Lcom/dropbox/core/v2/sharing/f;

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/f$b;->OTHER:Lcom/dropbox/core/v2/sharing/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/f;->a(Lcom/dropbox/core/v2/sharing/f$b;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/f;->d:Lcom/dropbox/core/v2/sharing/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/f$b;)Lcom/dropbox/core/v2/sharing/f;
    .locals 1

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    .line 115
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/f;
    .locals 2

    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/f$b;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/f$b;

    .line 1129
    new-instance v1, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    .line 1130
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    .line 1131
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/f;->f:Ljava/lang/String;

    return-object v1

    .line 230
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/f;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/f;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/f;
    .locals 2

    if-eqz p0, :cond_2

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    .line 287
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/f$b;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/f$b;

    .line 1147
    new-instance v1, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    .line 1148
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    .line 1149
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/f;->g:Ljava/lang/String;

    return-object v1

    .line 288
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/f;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/f;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/f;
    .locals 2

    if-eqz p0, :cond_1

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 345
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/f$b;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/f$b;

    .line 1165
    new-instance v1, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    .line 1166
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    .line 1167
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/f;->h:Ljava/lang/String;

    return-object v1

    .line 343
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/f;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/f;->h:Ljava/lang/String;

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

    .line 421
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/f;

    if-eqz v2, :cond_9

    .line 422
    check-cast p1, Lcom/dropbox/core/v2/sharing/f;

    .line 423
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 426
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/f$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/f$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 434
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/f;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/f;->h:Ljava/lang/String;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 432
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/f;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/f;->g:Ljava/lang/String;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0

    .line 430
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/f;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/f;->f:Ljava/lang/String;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 404
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/f;->f:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/f;->g:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/f;->h:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 452
    sget-object v0, Lcom/dropbox/core/v2/sharing/f$a;->a:Lcom/dropbox/core/v2/sharing/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/f$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
