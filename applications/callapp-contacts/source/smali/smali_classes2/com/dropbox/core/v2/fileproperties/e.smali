.class public final Lcom/dropbox/core/v2/fileproperties/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/e$a;,
        Lcom/dropbox/core/v2/fileproperties/e$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/e;

.field public static final b:Lcom/dropbox/core/v2/fileproperties/e;

.field public static final c:Lcom/dropbox/core/v2/fileproperties/e;

.field public static final d:Lcom/dropbox/core/v2/fileproperties/e;

.field public static final e:Lcom/dropbox/core/v2/fileproperties/e;


# instance fields
.field f:Lcom/dropbox/core/v2/fileproperties/e$b;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$b;->NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/e;->a(Lcom/dropbox/core/v2/fileproperties/e$b;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/e;->a:Lcom/dropbox/core/v2/fileproperties/e;

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$b;->NOT_FILE:Lcom/dropbox/core/v2/fileproperties/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/e;->a(Lcom/dropbox/core/v2/fileproperties/e$b;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/e;->b:Lcom/dropbox/core/v2/fileproperties/e;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$b;->NOT_FOLDER:Lcom/dropbox/core/v2/fileproperties/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/e;->a(Lcom/dropbox/core/v2/fileproperties/e$b;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/e;->c:Lcom/dropbox/core/v2/fileproperties/e;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$b;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/e;->a(Lcom/dropbox/core/v2/fileproperties/e$b;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/e;->d:Lcom/dropbox/core/v2/fileproperties/e;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$b;->OTHER:Lcom/dropbox/core/v2/fileproperties/e$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/e;->a(Lcom/dropbox/core/v2/fileproperties/e$b;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/e;->e:Lcom/dropbox/core/v2/fileproperties/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/fileproperties/e$b;)Lcom/dropbox/core/v2/fileproperties/e;
    .locals 1

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    .line 112
    iput-object p0, v0, Lcom/dropbox/core/v2/fileproperties/e;->f:Lcom/dropbox/core/v2/fileproperties/e$b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/e;
    .locals 2

    if-eqz p0, :cond_0

    .line 177
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$b;->MALFORMED_PATH:Lcom/dropbox/core/v2/fileproperties/e$b;

    .line 1125
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-direct {v1}, Lcom/dropbox/core/v2/fileproperties/e;-><init>()V

    .line 1126
    iput-object v0, v1, Lcom/dropbox/core/v2/fileproperties/e;->f:Lcom/dropbox/core/v2/fileproperties/e$b;

    .line 1127
    iput-object p0, v1, Lcom/dropbox/core/v2/fileproperties/e;->g:Ljava/lang/String;

    return-object v1

    .line 175
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/e;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/e;->g:Ljava/lang/String;

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

    .line 268
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/e;

    if-eqz v2, :cond_5

    .line 269
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/e;

    .line 270
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/e;->f:Lcom/dropbox/core/v2/fileproperties/e$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/e;->f:Lcom/dropbox/core/v2/fileproperties/e$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 273
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/e$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/e;->f:Lcom/dropbox/core/v2/fileproperties/e$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/e$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/e;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/e;->g:Ljava/lang/String;

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
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/e;->f:Lcom/dropbox/core/v2/fileproperties/e$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/e;->g:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 297
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/e$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
