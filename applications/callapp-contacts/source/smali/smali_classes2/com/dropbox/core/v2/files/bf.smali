.class public final Lcom/dropbox/core/v2/files/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/bf$a;,
        Lcom/dropbox/core/v2/files/bf$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bf;

.field public static final b:Lcom/dropbox/core/v2/files/bf;

.field public static final c:Lcom/dropbox/core/v2/files/bf;

.field public static final d:Lcom/dropbox/core/v2/files/bf;

.field public static final e:Lcom/dropbox/core/v2/files/bf;


# instance fields
.field f:Lcom/dropbox/core/v2/files/bf$b;

.field private g:Lcom/dropbox/core/v2/files/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bf$b;->NOT_FOUND:Lcom/dropbox/core/v2/files/bf$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bf;->a(Lcom/dropbox/core/v2/files/bf$b;)Lcom/dropbox/core/v2/files/bf;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bf;->a:Lcom/dropbox/core/v2/files/bf;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bf$b;->CLOSED:Lcom/dropbox/core/v2/files/bf$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bf;->a(Lcom/dropbox/core/v2/files/bf$b;)Lcom/dropbox/core/v2/files/bf;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bf;->b:Lcom/dropbox/core/v2/files/bf;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bf$b;->NOT_CLOSED:Lcom/dropbox/core/v2/files/bf$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bf;->a(Lcom/dropbox/core/v2/files/bf$b;)Lcom/dropbox/core/v2/files/bf;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bf;->c:Lcom/dropbox/core/v2/files/bf;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bf$b;->TOO_LARGE:Lcom/dropbox/core/v2/files/bf$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bf;->a(Lcom/dropbox/core/v2/files/bf$b;)Lcom/dropbox/core/v2/files/bf;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bf;->d:Lcom/dropbox/core/v2/files/bf;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bf$b;->OTHER:Lcom/dropbox/core/v2/files/bf$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/bf;->a(Lcom/dropbox/core/v2/files/bf$b;)Lcom/dropbox/core/v2/files/bf;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/bf;->e:Lcom/dropbox/core/v2/files/bf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/files/bf$b;)Lcom/dropbox/core/v2/files/bf;
    .locals 1

    .line 117
    new-instance v0, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    .line 118
    iput-object p0, v0, Lcom/dropbox/core/v2/files/bf;->f:Lcom/dropbox/core/v2/files/bf$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bg;)Lcom/dropbox/core/v2/files/bf;
    .locals 2

    if-eqz p0, :cond_0

    .line 201
    new-instance v0, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/bf$b;->INCORRECT_OFFSET:Lcom/dropbox/core/v2/files/bf$b;

    .line 1135
    new-instance v1, Lcom/dropbox/core/v2/files/bf;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/bf;-><init>()V

    .line 1136
    iput-object v0, v1, Lcom/dropbox/core/v2/files/bf;->f:Lcom/dropbox/core/v2/files/bf$b;

    .line 1137
    iput-object p0, v1, Lcom/dropbox/core/v2/files/bf;->g:Lcom/dropbox/core/v2/files/bg;

    return-object v1

    .line 199
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/bf;)Lcom/dropbox/core/v2/files/bg;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/bf;->g:Lcom/dropbox/core/v2/files/bg;

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

    .line 286
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/bf;

    if-eqz v2, :cond_5

    .line 287
    check-cast p1, Lcom/dropbox/core/v2/files/bf;

    .line 288
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bf;->f:Lcom/dropbox/core/v2/files/bf$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bf;->f:Lcom/dropbox/core/v2/files/bf$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 291
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/bf$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/bf;->f:Lcom/dropbox/core/v2/files/bf$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/bf$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 295
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bf;->g:Lcom/dropbox/core/v2/files/bg;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/bf;->g:Lcom/dropbox/core/v2/files/bg;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bg;->equals(Ljava/lang/Object;)Z

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
        :pswitch_1
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

    .line 271
    iget-object v1, p0, Lcom/dropbox/core/v2/files/bf;->f:Lcom/dropbox/core/v2/files/bf$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/bf;->g:Lcom/dropbox/core/v2/files/bg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/files/bf$a;->a:Lcom/dropbox/core/v2/files/bf$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/bf$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
