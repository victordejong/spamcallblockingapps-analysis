.class public final Lcom/dropbox/core/v2/sharing/az;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/az$a;,
        Lcom/dropbox/core/v2/sharing/az$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/az;

.field public static final b:Lcom/dropbox/core/v2/sharing/az;

.field public static final c:Lcom/dropbox/core/v2/sharing/az;

.field public static final d:Lcom/dropbox/core/v2/sharing/az;

.field public static final e:Lcom/dropbox/core/v2/sharing/az;

.field public static final f:Lcom/dropbox/core/v2/sharing/az;

.field public static final g:Lcom/dropbox/core/v2/sharing/az;

.field public static final h:Lcom/dropbox/core/v2/sharing/az;

.field public static final i:Lcom/dropbox/core/v2/sharing/az;

.field public static final j:Lcom/dropbox/core/v2/sharing/az;

.field public static final k:Lcom/dropbox/core/v2/sharing/az;

.field public static final l:Lcom/dropbox/core/v2/sharing/az;

.field public static final m:Lcom/dropbox/core/v2/sharing/az;

.field public static final n:Lcom/dropbox/core/v2/sharing/az;


# instance fields
.field o:Lcom/dropbox/core/v2/sharing/az$b;

.field private p:Lcom/dropbox/core/v2/sharing/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->IS_FILE:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->a:Lcom/dropbox/core/v2/sharing/az;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->b:Lcom/dropbox/core/v2/sharing/az;

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->c:Lcom/dropbox/core/v2/sharing/az;

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->d:Lcom/dropbox/core/v2/sharing/az;

    .line 124
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->e:Lcom/dropbox/core/v2/sharing/az;

    .line 128
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->f:Lcom/dropbox/core/v2/sharing/az;

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->g:Lcom/dropbox/core/v2/sharing/az;

    .line 136
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->h:Lcom/dropbox/core/v2/sharing/az;

    .line 141
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->i:Lcom/dropbox/core/v2/sharing/az;

    .line 145
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->j:Lcom/dropbox/core/v2/sharing/az;

    .line 149
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->k:Lcom/dropbox/core/v2/sharing/az;

    .line 153
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->l:Lcom/dropbox/core/v2/sharing/az;

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->IS_VAULT:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->m:Lcom/dropbox/core/v2/sharing/az;

    .line 165
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->OTHER:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/az;->n:Lcom/dropbox/core/v2/sharing/az;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/sharing/az$b;)Lcom/dropbox/core/v2/sharing/az;
    .locals 1

    .line 182
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    .line 183
    iput-object p0, v0, Lcom/dropbox/core/v2/sharing/az;->o:Lcom/dropbox/core/v2/sharing/az$b;

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/be;)Lcom/dropbox/core/v2/sharing/az;
    .locals 2

    if-eqz p0, :cond_0

    .line 349
    new-instance v0, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/az$b;

    .line 1197
    new-instance v1, Lcom/dropbox/core/v2/sharing/az;

    invoke-direct {v1}, Lcom/dropbox/core/v2/sharing/az;-><init>()V

    .line 1198
    iput-object v0, v1, Lcom/dropbox/core/v2/sharing/az;->o:Lcom/dropbox/core/v2/sharing/az$b;

    .line 1199
    iput-object p0, v1, Lcom/dropbox/core/v2/sharing/az;->p:Lcom/dropbox/core/v2/sharing/be;

    return-object v1

    .line 347
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/az;)Lcom/dropbox/core/v2/sharing/be;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/az;->p:Lcom/dropbox/core/v2/sharing/be;

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

    .line 443
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/az;

    if-eqz v2, :cond_5

    .line 444
    check-cast p1, Lcom/dropbox/core/v2/sharing/az;

    .line 445
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/az;->o:Lcom/dropbox/core/v2/sharing/az$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/az;->o:Lcom/dropbox/core/v2/sharing/az$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 448
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/az$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/az;->o:Lcom/dropbox/core/v2/sharing/az$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/az$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 468
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/az;->p:Lcom/dropbox/core/v2/sharing/be;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/az;->p:Lcom/dropbox/core/v2/sharing/be;

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/be;->equals(Ljava/lang/Object;)Z

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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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

    .line 428
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/az;->o:Lcom/dropbox/core/v2/sharing/az$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/az;->p:Lcom/dropbox/core/v2/sharing/be;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 490
    sget-object v0, Lcom/dropbox/core/v2/sharing/az$a;->a:Lcom/dropbox/core/v2/sharing/az$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/az$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
