.class public final Lcom/dropbox/core/v2/sharing/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/an$a;,
        Lcom/dropbox/core/v2/sharing/an$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/an;

.field public static final b:Lcom/dropbox/core/v2/sharing/an;

.field public static final c:Lcom/dropbox/core/v2/sharing/an;

.field public static final d:Lcom/dropbox/core/v2/sharing/an;

.field public static final e:Lcom/dropbox/core/v2/sharing/an;


# instance fields
.field f:Lcom/dropbox/core/v2/sharing/an$b;

.field private g:Lcom/dropbox/core/v2/sharing/bc;

.field private h:Lcom/dropbox/core/v2/sharing/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/an$b;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/an$b;)Lcom/dropbox/core/v2/sharing/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/an;->a:Lcom/dropbox/core/v2/sharing/an;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/an$b;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/an$b;)Lcom/dropbox/core/v2/sharing/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/an;->b:Lcom/dropbox/core/v2/sharing/an;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/an$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/an$b;)Lcom/dropbox/core/v2/sharing/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/an;->c:Lcom/dropbox/core/v2/sharing/an;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/an$b;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/an$b;)Lcom/dropbox/core/v2/sharing/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/an;->d:Lcom/dropbox/core/v2/sharing/an;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/an$b;->OTHER:Lcom/dropbox/core/v2/sharing/an$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/an$b;)Lcom/dropbox/core/v2/sharing/an;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/an;->e:Lcom/dropbox/core/v2/sharing/an;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/an$b;)Lcom/dropbox/core/v2/sharing/an;
    .locals 1

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    .line 117
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/an;
    .locals 2

    if-eqz p0, :cond_0

    .line 198
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/an$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/an$b;

    .line 1130
    new-instance v1, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    .line 1131
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    .line 1132
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/an;->g:Lcom/dropbox/core/v2/sharing/bc;

    return-object v1

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/w;)Lcom/dropbox/core/v2/sharing/an;
    .locals 2

    if-eqz p0, :cond_0

    .line 257
    new-instance v0, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/an$b;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/an$b;

    .line 1146
    new-instance v1, Lcom/dropbox/core/v2/sharing/an;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/an;-><init>()V

    .line 1147
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    .line 1148
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/an;->h:Lcom/dropbox/core/v2/sharing/w;

    return-object v1

    .line 255
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/an;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/an;->g:Lcom/dropbox/core/v2/sharing/bc;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/an;)Lcom/dropbox/core/v2/sharing/w;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/an;->h:Lcom/dropbox/core/v2/sharing/w;

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

    .line 340
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/an;

    if-eqz v2, :cond_7

    .line 341
    check-cast p1, Lcom/dropbox/core/v2/sharing/an;

    .line 342
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 345
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/an$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/an$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 351
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/an;->h:Lcom/dropbox/core/v2/sharing/w;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/an;->h:Lcom/dropbox/core/v2/sharing/w;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/w;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    .line 347
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/an;->g:Lcom/dropbox/core/v2/sharing/bc;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/an;->g:Lcom/dropbox/core/v2/sharing/bc;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bc;->equals(Ljava/lang/Object;)Z

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

    .line 324
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/an;->g:Lcom/dropbox/core/v2/sharing/bc;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/an;->h:Lcom/dropbox/core/v2/sharing/w;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 371
    sget-object v0, Lcom/dropbox/core/v2/sharing/an$a;->a:Lcom/dropbox/core/v2/sharing/an$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/an$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
