.class public final Lcom/dropbox/core/v2/files/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/be$a;,
        Lcom/dropbox/core/v2/files/be$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/be;

.field public static final b:Lcom/dropbox/core/v2/files/be;

.field public static final c:Lcom/dropbox/core/v2/files/be;


# instance fields
.field d:Lcom/dropbox/core/v2/files/be$b;

.field private e:Lcom/dropbox/core/v2/files/bf;

.field private f:Lcom/dropbox/core/v2/files/bl;

.field private g:Lcom/dropbox/core/v2/fileproperties/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/be$b;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/be$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/be;->a(Lcom/dropbox/core/v2/files/be$b;)Lcom/dropbox/core/v2/files/be;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/be;->a:Lcom/dropbox/core/v2/files/be;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/be$b;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/be$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/be;->a(Lcom/dropbox/core/v2/files/be$b;)Lcom/dropbox/core/v2/files/be;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/be;->b:Lcom/dropbox/core/v2/files/be;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/be$b;->OTHER:Lcom/dropbox/core/v2/files/be$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/be;->a(Lcom/dropbox/core/v2/files/be$b;)Lcom/dropbox/core/v2/files/be;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/be;->c:Lcom/dropbox/core/v2/files/be;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/fileproperties/c;)Lcom/dropbox/core/v2/files/be;
    .locals 2

    if-eqz p0, :cond_0

    .line 314
    new-instance v0, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/be$b;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/be$b;

    .line 1159
    new-instance v1, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/be;-><init>()V

    .line 1160
    iput-object v0, v1, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    .line 1161
    iput-object p0, v1, Lcom/dropbox/core/v2/files/be;->g:Lcom/dropbox/core/v2/fileproperties/c;

    return-object v1

    .line 312
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/be$b;)Lcom/dropbox/core/v2/files/be;
    .locals 1

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be;-><init>()V

    .line 112
    iput-object p0, v0, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bf;)Lcom/dropbox/core/v2/files/be;
    .locals 2

    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/be$b;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/be$b;

    .line 1126
    new-instance v1, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/be;-><init>()V

    .line 1127
    iput-object v0, v1, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    .line 1128
    iput-object p0, v1, Lcom/dropbox/core/v2/files/be;->e:Lcom/dropbox/core/v2/files/bf;

    return-object v1

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/be;
    .locals 2

    if-eqz p0, :cond_0

    .line 263
    new-instance v0, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/be$b;->PATH:Lcom/dropbox/core/v2/files/be$b;

    .line 1143
    new-instance v1, Lcom/dropbox/core/v2/files/be;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/be;-><init>()V

    .line 1144
    iput-object v0, v1, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    .line 1145
    iput-object p0, v1, Lcom/dropbox/core/v2/files/be;->f:Lcom/dropbox/core/v2/files/bl;

    return-object v1

    .line 261
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/be;)Lcom/dropbox/core/v2/files/bf;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/files/be;->e:Lcom/dropbox/core/v2/files/bf;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/be;)Lcom/dropbox/core/v2/files/bl;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/files/be;->f:Lcom/dropbox/core/v2/files/bl;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/files/be;)Lcom/dropbox/core/v2/fileproperties/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/files/be;->g:Lcom/dropbox/core/v2/fileproperties/c;

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

    .line 388
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/be;

    if-eqz v2, :cond_9

    .line 389
    check-cast p1, Lcom/dropbox/core/v2/files/be;

    .line 390
    iget-object v2, p0, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 393
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/be$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/be$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 399
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/be;->g:Lcom/dropbox/core/v2/fileproperties/c;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/be;->g:Lcom/dropbox/core/v2/fileproperties/c;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 397
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/be;->f:Lcom/dropbox/core/v2/files/bl;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/be;->f:Lcom/dropbox/core/v2/files/bl;

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

    .line 395
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/be;->e:Lcom/dropbox/core/v2/files/bf;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/be;->e:Lcom/dropbox/core/v2/files/bf;

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/bf;->equals(Ljava/lang/Object;)Z

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
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 371
    iget-object v1, p0, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/be;->e:Lcom/dropbox/core/v2/files/bf;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/be;->f:Lcom/dropbox/core/v2/files/bl;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/be;->g:Lcom/dropbox/core/v2/fileproperties/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 417
    sget-object v0, Lcom/dropbox/core/v2/files/be$a;->a:Lcom/dropbox/core/v2/files/be$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/be$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
