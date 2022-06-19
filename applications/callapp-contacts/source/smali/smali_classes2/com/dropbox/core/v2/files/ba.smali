.class public final Lcom/dropbox/core/v2/files/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ba$a;,
        Lcom/dropbox/core/v2/files/ba$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ba;

.field public static final b:Lcom/dropbox/core/v2/files/ba;

.field public static final c:Lcom/dropbox/core/v2/files/ba;

.field public static final d:Lcom/dropbox/core/v2/files/ba;

.field public static final e:Lcom/dropbox/core/v2/files/ba;

.field public static final f:Lcom/dropbox/core/v2/files/ba;


# instance fields
.field g:Lcom/dropbox/core/v2/files/ba$b;

.field private h:Lcom/dropbox/core/v2/files/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ba$b;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ba$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ba$b;)Lcom/dropbox/core/v2/files/ba;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ba;->a:Lcom/dropbox/core/v2/files/ba;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ba$b;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ba$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ba$b;)Lcom/dropbox/core/v2/files/ba;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ba;->b:Lcom/dropbox/core/v2/files/ba;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ba$b;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ba$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ba$b;)Lcom/dropbox/core/v2/files/ba;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ba;->c:Lcom/dropbox/core/v2/files/ba;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ba$b;->ACCESS_DENIED:Lcom/dropbox/core/v2/files/ba$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ba$b;)Lcom/dropbox/core/v2/files/ba;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ba;->d:Lcom/dropbox/core/v2/files/ba;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ba$b;->NOT_FOUND:Lcom/dropbox/core/v2/files/ba$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ba$b;)Lcom/dropbox/core/v2/files/ba;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ba;->e:Lcom/dropbox/core/v2/files/ba;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ba$b;->OTHER:Lcom/dropbox/core/v2/files/ba$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ba$b;)Lcom/dropbox/core/v2/files/ba;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ba;->f:Lcom/dropbox/core/v2/files/ba;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/ba;)Lcom/dropbox/core/v2/files/ai;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ba;->h:Lcom/dropbox/core/v2/files/ai;

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ba;
    .locals 2

    if-eqz p0, :cond_0

    .line 182
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/files/ba$b;->PATH:Lcom/dropbox/core/v2/files/ba$b;

    .line 1130
    new-instance v1, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v1}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    .line 1131
    iput-object v0, v1, Lcom/dropbox/core/v2/files/ba;->g:Lcom/dropbox/core/v2/files/ba$b;

    .line 1132
    iput-object p0, v1, Lcom/dropbox/core/v2/files/ba;->h:Lcom/dropbox/core/v2/files/ai;

    return-object v1

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/dropbox/core/v2/files/ba$b;)Lcom/dropbox/core/v2/files/ba;
    .locals 1

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/files/ba;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba;-><init>()V

    .line 116
    iput-object p0, v0, Lcom/dropbox/core/v2/files/ba;->g:Lcom/dropbox/core/v2/files/ba$b;

    return-object v0
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

    .line 285
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ba;

    if-eqz v2, :cond_5

    .line 286
    check-cast p1, Lcom/dropbox/core/v2/files/ba;

    .line 287
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ba;->g:Lcom/dropbox/core/v2/files/ba$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ba;->g:Lcom/dropbox/core/v2/files/ba$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 290
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/ba$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ba;->g:Lcom/dropbox/core/v2/files/ba$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ba$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 292
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ba;->h:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ba;->h:Lcom/dropbox/core/v2/files/ai;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ai;->equals(Ljava/lang/Object;)Z

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

    .line 270
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ba;->g:Lcom/dropbox/core/v2/files/ba$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ba;->h:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/files/ba$a;->a:Lcom/dropbox/core/v2/files/ba$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ba$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
