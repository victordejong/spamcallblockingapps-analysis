.class public final Lcom/dropbox/core/v2/fileproperties/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/c$a;,
        Lcom/dropbox/core/v2/fileproperties/c$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/c;

.field public static final b:Lcom/dropbox/core/v2/fileproperties/c;

.field public static final c:Lcom/dropbox/core/v2/fileproperties/c;

.field public static final d:Lcom/dropbox/core/v2/fileproperties/c;

.field public static final e:Lcom/dropbox/core/v2/fileproperties/c;

.field public static final f:Lcom/dropbox/core/v2/fileproperties/c;


# instance fields
.field g:Lcom/dropbox/core/v2/fileproperties/c$b;

.field private h:Ljava/lang/String;

.field private i:Lcom/dropbox/core/v2/fileproperties/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/c$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/c$b;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/c;->a:Lcom/dropbox/core/v2/fileproperties/c;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->OTHER:Lcom/dropbox/core/v2/fileproperties/c$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/c$b;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/c;->b:Lcom/dropbox/core/v2/fileproperties/c;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/c$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/c$b;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/c;->c:Lcom/dropbox/core/v2/fileproperties/c;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/c$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/c$b;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/c;->d:Lcom/dropbox/core/v2/fileproperties/c;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/c$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/c$b;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/c;->e:Lcom/dropbox/core/v2/fileproperties/c;

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->DUPLICATE_PROPERTY_GROUPS:Lcom/dropbox/core/v2/fileproperties/c$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/c$b;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/c;->f:Lcom/dropbox/core/v2/fileproperties/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/fileproperties/c$b;)Lcom/dropbox/core/v2/fileproperties/c;
    .locals 1

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    .line 121
    iput-object p0, v0, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/fileproperties/e;)Lcom/dropbox/core/v2/fileproperties/c;
    .locals 2

    if-eqz p0, :cond_0

    .line 278
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->PATH:Lcom/dropbox/core/v2/fileproperties/c$b;

    .line 1151
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    .line 1152
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    .line 1153
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/c;->i:Lcom/dropbox/core/v2/fileproperties/e;

    return-object v1

    .line 276
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/c;
    .locals 2

    if-eqz p0, :cond_2

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 204
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$b;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/c$b;

    .line 1136
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/c;-><init>()V

    .line 1137
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    .line 1138
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/c;->h:Ljava/lang/String;

    return-object v1

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/c;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/fileproperties/c;)Lcom/dropbox/core/v2/fileproperties/e;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/c;->i:Lcom/dropbox/core/v2/fileproperties/e;

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

    .line 359
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/c;

    if-eqz v2, :cond_7

    .line 360
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/c;

    .line 361
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 364
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/c$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/c$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 372
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/c;->i:Lcom/dropbox/core/v2/fileproperties/e;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/c;->i:Lcom/dropbox/core/v2/fileproperties/e;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    .line 366
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/c;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/c;->h:Ljava/lang/String;

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

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/c;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/c;->i:Lcom/dropbox/core/v2/fileproperties/e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 347
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 392
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$a;->a:Lcom/dropbox/core/v2/fileproperties/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/c$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
