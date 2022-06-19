.class public final Lcom/dropbox/core/v2/fileproperties/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/f$a;,
        Lcom/dropbox/core/v2/fileproperties/f$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/f;

.field public static final b:Lcom/dropbox/core/v2/fileproperties/f;

.field public static final c:Lcom/dropbox/core/v2/fileproperties/f;

.field public static final d:Lcom/dropbox/core/v2/fileproperties/f;

.field public static final e:Lcom/dropbox/core/v2/fileproperties/f;

.field public static final f:Lcom/dropbox/core/v2/fileproperties/f;


# instance fields
.field g:Lcom/dropbox/core/v2/fileproperties/f$b;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$b;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/f;->a(Lcom/dropbox/core/v2/fileproperties/f$b;)Lcom/dropbox/core/v2/fileproperties/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/f;->a:Lcom/dropbox/core/v2/fileproperties/f;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$b;->OTHER:Lcom/dropbox/core/v2/fileproperties/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/f;->a(Lcom/dropbox/core/v2/fileproperties/f$b;)Lcom/dropbox/core/v2/fileproperties/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/f;->b:Lcom/dropbox/core/v2/fileproperties/f;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$b;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/f;->a(Lcom/dropbox/core/v2/fileproperties/f$b;)Lcom/dropbox/core/v2/fileproperties/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/f;->c:Lcom/dropbox/core/v2/fileproperties/f;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$b;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/f;->a(Lcom/dropbox/core/v2/fileproperties/f$b;)Lcom/dropbox/core/v2/fileproperties/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/f;->d:Lcom/dropbox/core/v2/fileproperties/f;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$b;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/f;->a(Lcom/dropbox/core/v2/fileproperties/f$b;)Lcom/dropbox/core/v2/fileproperties/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/f;->e:Lcom/dropbox/core/v2/fileproperties/f;

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$b;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/f$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/f;->a(Lcom/dropbox/core/v2/fileproperties/f$b;)Lcom/dropbox/core/v2/fileproperties/f;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/f;->f:Lcom/dropbox/core/v2/fileproperties/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/fileproperties/f$b;)Lcom/dropbox/core/v2/fileproperties/f;
    .locals 1

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    .line 117
    iput-object p0, v0, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/f;
    .locals 2

    if-eqz p0, :cond_2

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 185
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$b;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/f$b;

    .line 1132
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/f;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/f;-><init>()V

    .line 1133
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    .line 1134
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/f;->h:Ljava/lang/String;

    return-object v1

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/f;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/f;->h:Ljava/lang/String;

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

    .line 293
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/f;

    if-eqz v2, :cond_5

    .line 294
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/f;

    .line 295
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 298
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/f$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/f$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 300
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/f;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/f;->h:Ljava/lang/String;

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

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/f;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 281
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 324
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$a;->a:Lcom/dropbox/core/v2/fileproperties/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/f$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
