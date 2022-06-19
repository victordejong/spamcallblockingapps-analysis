.class public final Lcom/dropbox/core/v2/fileproperties/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/n$a;,
        Lcom/dropbox/core/v2/fileproperties/n$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/n;

.field public static final b:Lcom/dropbox/core/v2/fileproperties/n;

.field public static final c:Lcom/dropbox/core/v2/fileproperties/n;

.field public static final d:Lcom/dropbox/core/v2/fileproperties/n;

.field public static final e:Lcom/dropbox/core/v2/fileproperties/n;

.field public static final f:Lcom/dropbox/core/v2/fileproperties/n;


# instance fields
.field g:Lcom/dropbox/core/v2/fileproperties/n$b;

.field private h:Ljava/lang/String;

.field private i:Lcom/dropbox/core/v2/fileproperties/e;

.field private j:Lcom/dropbox/core/v2/fileproperties/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/n$b;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/n;->a:Lcom/dropbox/core/v2/fileproperties/n;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->OTHER:Lcom/dropbox/core/v2/fileproperties/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/n$b;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/n;->b:Lcom/dropbox/core/v2/fileproperties/n;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/n$b;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/n;->c:Lcom/dropbox/core/v2/fileproperties/n;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/n$b;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/n;->d:Lcom/dropbox/core/v2/fileproperties/n;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/n$b;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/n;->e:Lcom/dropbox/core/v2/fileproperties/n;

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->DUPLICATE_PROPERTY_GROUPS:Lcom/dropbox/core/v2/fileproperties/n$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/n$b;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/n;->f:Lcom/dropbox/core/v2/fileproperties/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/fileproperties/d;)Lcom/dropbox/core/v2/fileproperties/n;
    .locals 2

    if-eqz p0, :cond_0

    .line 385
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 1168
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    .line 1169
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 1170
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/n;->j:Lcom/dropbox/core/v2/fileproperties/d;

    return-object v1

    .line 383
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/fileproperties/e;)Lcom/dropbox/core/v2/fileproperties/n;
    .locals 2

    if-eqz p0, :cond_0

    .line 295
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->PATH:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 1153
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    .line 1154
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 1155
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/n;->i:Lcom/dropbox/core/v2/fileproperties/e;

    return-object v1

    .line 293
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/fileproperties/n$b;)Lcom/dropbox/core/v2/fileproperties/n;
    .locals 1

    .line 122
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    .line 123
    iput-object p0, v0, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/n;
    .locals 2

    if-eqz p0, :cond_2

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 221
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$b;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 1138
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/n;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/n;-><init>()V

    .line 1139
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 1140
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/n;->h:Ljava/lang/String;

    return-object v1

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/n;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/n;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/fileproperties/n;)Lcom/dropbox/core/v2/fileproperties/e;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/n;->i:Lcom/dropbox/core/v2/fileproperties/e;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/fileproperties/n;)Lcom/dropbox/core/v2/fileproperties/d;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/n;->j:Lcom/dropbox/core/v2/fileproperties/d;

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

    .line 424
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/n;

    if-eqz v2, :cond_9

    .line 425
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/n;

    .line 426
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 429
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/n$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/n$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 447
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/n;->j:Lcom/dropbox/core/v2/fileproperties/d;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/n;->j:Lcom/dropbox/core/v2/fileproperties/d;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_1
    return v0

    .line 437
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/n;->i:Lcom/dropbox/core/v2/fileproperties/e;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/n;->i:Lcom/dropbox/core/v2/fileproperties/e;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    :pswitch_3
    return v0

    .line 431
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/n;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/n;->h:Ljava/lang/String;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/n;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/n;->i:Lcom/dropbox/core/v2/fileproperties/e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/n;->j:Lcom/dropbox/core/v2/fileproperties/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 412
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 459
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$a;->a:Lcom/dropbox/core/v2/fileproperties/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/n$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
