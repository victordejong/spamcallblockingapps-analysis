.class public final Lcom/dropbox/core/v2/sharing/am;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/am$a;,
        Lcom/dropbox/core/v2/sharing/am$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/am;

.field public static final b:Lcom/dropbox/core/v2/sharing/am;

.field public static final c:Lcom/dropbox/core/v2/sharing/am;

.field public static final d:Lcom/dropbox/core/v2/sharing/am;

.field public static final e:Lcom/dropbox/core/v2/sharing/am;


# instance fields
.field f:Lcom/dropbox/core/v2/sharing/am$b;

.field private g:Lcom/dropbox/core/v2/sharing/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/am$b;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/am$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/am;->a(Lcom/dropbox/core/v2/sharing/am$b;)Lcom/dropbox/core/v2/sharing/am;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/am;->a:Lcom/dropbox/core/v2/sharing/am;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/am$b;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/am$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/am;->a(Lcom/dropbox/core/v2/sharing/am$b;)Lcom/dropbox/core/v2/sharing/am;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/am;->b:Lcom/dropbox/core/v2/sharing/am;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/am$b;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/am$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/am;->a(Lcom/dropbox/core/v2/sharing/am$b;)Lcom/dropbox/core/v2/sharing/am;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/am;->c:Lcom/dropbox/core/v2/sharing/am;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/am$b;->OTHER:Lcom/dropbox/core/v2/sharing/am$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/am;->a(Lcom/dropbox/core/v2/sharing/am$b;)Lcom/dropbox/core/v2/sharing/am;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/am;->d:Lcom/dropbox/core/v2/sharing/am;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/am$b;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/am$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/am;->a(Lcom/dropbox/core/v2/sharing/am$b;)Lcom/dropbox/core/v2/sharing/am;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/am;->e:Lcom/dropbox/core/v2/sharing/am;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/am$b;)Lcom/dropbox/core/v2/sharing/am;
    .locals 1

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    .line 107
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/am;->f:Lcom/dropbox/core/v2/sharing/am$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bl;)Lcom/dropbox/core/v2/sharing/am;
    .locals 2

    if-eqz p0, :cond_0

    .line 214
    new-instance v0, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/am$b;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/am$b;

    .line 1121
    new-instance v1, Lcom/dropbox/core/v2/sharing/am;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/am;-><init>()V

    .line 1122
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/am;->f:Lcom/dropbox/core/v2/sharing/am$b;

    .line 1123
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/am;->g:Lcom/dropbox/core/v2/sharing/bl;

    return-object v1

    .line 212
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/am;)Lcom/dropbox/core/v2/sharing/bl;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/am;->g:Lcom/dropbox/core/v2/sharing/bl;

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

    .line 264
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/am;

    if-eqz v2, :cond_5

    .line 265
    check-cast p1, Lcom/dropbox/core/v2/sharing/am;

    .line 266
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/am;->f:Lcom/dropbox/core/v2/sharing/am$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/am;->f:Lcom/dropbox/core/v2/sharing/am$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 269
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/am$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/am;->f:Lcom/dropbox/core/v2/sharing/am$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/am$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 279
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/am;->g:Lcom/dropbox/core/v2/sharing/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/am;->g:Lcom/dropbox/core/v2/sharing/bl;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/am;->f:Lcom/dropbox/core/v2/sharing/am$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/am;->g:Lcom/dropbox/core/v2/sharing/bl;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 252
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 293
    sget-object v0, Lcom/dropbox/core/v2/sharing/am$a;->a:Lcom/dropbox/core/v2/sharing/am$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/am$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
