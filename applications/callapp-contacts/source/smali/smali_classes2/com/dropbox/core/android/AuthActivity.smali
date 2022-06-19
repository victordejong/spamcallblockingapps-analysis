.class public Lcom/dropbox/core/android/AuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/android/AuthActivity$b;,
        Lcom/dropbox/core/android/AuthActivity$c;,
        Lcom/dropbox/core/android/AuthActivity$a;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Intent; = null

.field private static final b:Ljava/lang/String; = "com.dropbox.core.android.AuthActivity"

.field private static c:Lcom/dropbox/core/android/AuthActivity$a;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:[Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Lcom/dropbox/core/o;

.field private static k:Lcom/dropbox/core/h;

.field private static l:Lcom/dropbox/core/e;

.field private static m:Ljava/lang/String;

.field private static n:Lcom/dropbox/core/m;


# instance fields
.field private A:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/dropbox/core/o;

.field private u:Lcom/dropbox/core/g;

.field private v:Lcom/dropbox/core/h;

.field private w:Lcom/dropbox/core/e;

.field private x:Ljava/lang/String;

.field private y:Lcom/dropbox/core/m;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lcom/dropbox/core/android/AuthActivity$1;

    invoke-direct {v0}, Lcom/dropbox/core/android/AuthActivity$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->c:Lcom/dropbox/core/android/AuthActivity$a;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 178
    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/dropbox/core/android/AuthActivity;->A:Z

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/h;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->v:Lcom/dropbox/core/h;

    return-object p0
.end method

.method static a()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1236
    invoke-static/range {v0 .. v10}, Lcom/dropbox/core/android/AuthActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/o;Lcom/dropbox/core/h;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/m;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 0

    .line 660
    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->a:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 661
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    .line 662
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->a()V

    .line 663
    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    .locals 7

    .line 7668
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 7669
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7674
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->r:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 7676
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "k"

    aput-object v5, v4, v3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/dropbox/core/android/AuthActivity;->o:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "n"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v0, 0x4

    const-string v5, "api"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    iget-object v5, p0, Lcom/dropbox/core/android/AuthActivity;->p:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "state"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    aput-object p1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7683
    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->t:Lcom/dropbox/core/o;

    if-eqz p1, :cond_1

    const-string p1, "extra_query_params"

    .line 7684
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7685
    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7688
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->w:Lcom/dropbox/core/e;

    .line 8077
    iget-object v0, v0, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    .line 7689
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "1/connect"

    .line 7688
    invoke-static {p1, v0, v2, v1}, Lcom/dropbox/core/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7691
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7692
    invoke-virtual {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/o;Lcom/dropbox/core/h;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/m;)V
    .locals 0

    .line 249
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->e:Ljava/lang/String;

    const/4 p0, 0x0

    .line 250
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->g:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 251
    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->h:[Ljava/lang/String;

    .line 252
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->i:Ljava/lang/String;

    .line 253
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->f:Ljava/lang/String;

    .line 254
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->j:Lcom/dropbox/core/o;

    .line 255
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->k:Lcom/dropbox/core/h;

    .line 264
    sget-object p1, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->l:Lcom/dropbox/core/e;

    .line 266
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->m:Ljava/lang/String;

    .line 267
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->n:Lcom/dropbox/core/m;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/android/AuthActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->w:Lcom/dropbox/core/e;

    return-object p0
.end method

.method private static c()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 698
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oauth2:"

    .line 700
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 702
    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->u:Lcom/dropbox/core/g;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 8

    .line 726
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->t:Lcom/dropbox/core/o;

    if-eqz v0, :cond_2

    .line 731
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "code_challenge"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->u:Lcom/dropbox/core/g;

    .line 7084
    iget-object v2, v2, Lcom/dropbox/core/g;->b:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "code_challenge_method"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "S256"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v6, "token_access_type"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    .line 733
    iget-object v6, p0, Lcom/dropbox/core/android/AuthActivity;->t:Lcom/dropbox/core/o;

    .line 735
    invoke-virtual {v6}, Lcom/dropbox/core/o;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string v6, "response_type"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string v6, "code"

    aput-object v6, v1, v2

    const-string v2, "%s=%s&%s=%s&%s=%s&%s=%s"

    .line 731
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->x:Ljava/lang/String;

    const-string v2, "&%s=%s"

    if-eqz v1, :cond_0

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "scope"

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->x:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v0, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->y:Lcom/dropbox/core/m;

    if-eqz v1, :cond_1

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "include_granted_scopes"

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->y:Lcom/dropbox/core/m;

    .line 745
    invoke-virtual {v3}, Lcom/dropbox/core/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 744
    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    .line 727
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Extra Query Param should only be used in short live token flow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getOfficialAuthIntent()Landroid/content/Intent;
    .locals 2

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.android.AUTHENTICATE_V2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.dropbox.android"

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 429
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Lcom/dropbox/core/android/AuthActivity$a;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method private static getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$a;
    .locals 2

    .line 423
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->c:Lcom/dropbox/core/android/AuthActivity$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 425
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 438
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->o:Ljava/lang/String;

    .line 439
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->p:Ljava/lang/String;

    .line 440
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->q:Ljava/lang/String;

    .line 441
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->h:[Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->r:[Ljava/lang/String;

    .line 442
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->s:Ljava/lang/String;

    .line 443
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->j:Lcom/dropbox/core/o;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->t:Lcom/dropbox/core/o;

    .line 444
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->k:Lcom/dropbox/core/h;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->v:Lcom/dropbox/core/h;

    .line 445
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->l:Lcom/dropbox/core/e;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->w:Lcom/dropbox/core/e;

    .line 446
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->x:Ljava/lang/String;

    .line 447
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->n:Lcom/dropbox/core/m;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->y:Lcom/dropbox/core/m;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 450
    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->a:Landroid/content/Intent;

    .line 451
    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    .line 452
    new-instance v0, Lcom/dropbox/core/g;

    invoke-direct {v0}, Lcom/dropbox/core/g;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->u:Lcom/dropbox/core/g;

    goto :goto_0

    :cond_0
    const-string v0, "SIS_KEY_AUTH_STATE_NONCE"

    .line 454
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    .line 455
    new-instance v0, Lcom/dropbox/core/g;

    const-string v1, "SIS_KEY_PKCE_CODE_VERIFIER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/core/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->u:Lcom/dropbox/core/g;

    :goto_0
    const v0, 0x1030010

    .line 458
    invoke-virtual {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->setTheme(I)V

    .line 460
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 10

    .line 578
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 579
    invoke-direct {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->a(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "ACCESS_TOKEN"

    .line 585
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "UID"

    const-string v4, "ACCESS_SECRET"

    if-eqz v2, :cond_1

    .line 587
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 589
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AUTH_STATE"

    .line 590
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 593
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 595
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/connect"

    .line 596
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "oauth_token"

    .line 598
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v5, "oauth_token_secret"

    .line 599
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v6, "uid"

    .line 600
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v7, "state"

    .line 601
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_0
    move-object v6, v1

    goto :goto_1

    :catch_1
    move-object v5, v1

    goto :goto_0

    :catch_2
    move-object v2, v1

    move-object v5, v2

    :goto_0
    move-object v6, v5

    :catch_3
    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_2
    move-object p1, v1

    move-object v2, p1

    move-object v5, v2

    move-object v6, v5

    :goto_2
    if-eqz v2, :cond_7

    const-string v7, ""

    .line 608
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v5, :cond_7

    .line 609
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v6, :cond_7

    .line 610
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz p1, :cond_7

    .line 611
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 614
    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 615
    invoke-direct {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->a(Landroid/content/Intent;)V

    return-void

    .line 620
    :cond_3
    sget-object p1, Lcom/dropbox/core/android/AuthActivity$c;->OAUTH2:Lcom/dropbox/core/android/AuthActivity$c;

    invoke-virtual {p1}, Lcom/dropbox/core/android/AuthActivity$c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 622
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 623
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 626
    :cond_4
    sget-object p1, Lcom/dropbox/core/android/AuthActivity$c;->OAUTH2CODE:Lcom/dropbox/core/android/AuthActivity$c;

    invoke-virtual {p1}, Lcom/dropbox/core/android/AuthActivity$c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 628
    new-instance p1, Lcom/dropbox/core/android/AuthActivity$b;

    invoke-direct {p1, p0, v5, v1}, Lcom/dropbox/core/android/AuthActivity$b;-><init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;Lcom/dropbox/core/android/AuthActivity$1;)V

    const/4 v2, 0x0

    :try_start_4
    new-array v2, v2, [Ljava/lang/Void;

    .line 630
    invoke-virtual {p1, v2}, Lcom/dropbox/core/android/AuthActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/c;

    if-nez p1, :cond_5

    goto :goto_4

    .line 635
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4097
    iget-object v5, p1, Lcom/dropbox/core/c;->a:Ljava/lang/String;

    .line 638
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5097
    iget-object v0, p1, Lcom/dropbox/core/c;->a:Ljava/lang/String;

    .line 639
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "REFRESH_TOKEN"

    .line 5126
    iget-object v4, p1, Lcom/dropbox/core/c;->c:Ljava/lang/String;

    .line 640
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXPIRES_AT"

    .line 6110
    iget-object v4, p1, Lcom/dropbox/core/c;->b:Ljava/lang/Long;

    if-nez v4, :cond_6

    move-object v4, v1

    goto :goto_3

    .line 6113
    :cond_6
    iget-wide v4, p1, Lcom/dropbox/core/c;->h:J

    iget-object v6, p1, Lcom/dropbox/core/c;->b:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 641
    :goto_3
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6136
    iget-object v0, p1, Lcom/dropbox/core/c;->d:Ljava/lang/String;

    .line 642
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CONSUMER_KEY"

    .line 643
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SCOPE"

    .line 6168
    iget-object p1, p1, Lcom/dropbox/core/c;->i:Ljava/lang/String;

    .line 644
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v2

    .line 656
    :catch_4
    :cond_7
    :goto_4
    invoke-direct {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 489
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 491
    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 504
    invoke-direct {p0, v3}, Lcom/dropbox/core/android/AuthActivity;->a(Landroid/content/Intent;)V

    return-void

    .line 508
    :cond_3
    sput-object v3, Lcom/dropbox/core/android/AuthActivity;->a:Landroid/content/Intent;

    .line 510
    iget-boolean v0, p0, Lcom/dropbox/core/android/AuthActivity;->A:Z

    if-eqz v0, :cond_4

    .line 511
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->b:Ljava/lang/String;

    const-string v1, "onResume called again before Handler run"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 521
    :cond_4
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getOfficialAuthIntent()Landroid/content/Intent;

    move-result-object v0

    .line 523
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->t:Lcom/dropbox/core/o;

    if-eqz v3, :cond_7

    .line 3708
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/dropbox/core/android/AuthActivity;->u:Lcom/dropbox/core/g;

    .line 4084
    iget-object v5, v5, Lcom/dropbox/core/g;->b:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v1, "S256"

    aput-object v1, v4, v2

    const/4 v1, 0x2

    .line 3709
    iget-object v5, p0, Lcom/dropbox/core/android/AuthActivity;->t:Lcom/dropbox/core/o;

    .line 3711
    invoke-virtual {v5}, Lcom/dropbox/core/o;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "oauth2code:%s:%s:%s"

    .line 3708
    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3714
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->x:Ljava/lang/String;

    const-string v4, ":"

    if-eqz v3, :cond_5

    .line 3715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->x:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3718
    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->y:Lcom/dropbox/core/m;

    if-eqz v3, :cond_6

    .line 3719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->y:Lcom/dropbox/core/m;

    invoke-virtual {v1}, Lcom/dropbox/core/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    :cond_6
    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTH_QUERY_PARAMS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 529
    :cond_7
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->c()Ljava/lang/String;

    move-result-object v1

    .line 532
    :goto_2
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->o:Ljava/lang/String;

    const-string v4, "CONSUMER_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CONSUMER_SIG"

    const-string v4, ""

    .line 533
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CALLING_PACKAGE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CALLING_CLASS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "AUTH_STATE"

    .line 536
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->q:Ljava/lang/String;

    const-string v4, "DESIRED_UID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->r:[Ljava/lang/String;

    const-string v4, "ALREADY_AUTHED_UIDS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->s:Ljava/lang/String;

    const-string v4, "SESSION_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/dropbox/core/android/AuthActivity$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/dropbox/core/android/AuthActivity$2;-><init>(Lcom/dropbox/core/android/AuthActivity;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    iput-boolean v2, p0, Lcom/dropbox/core/android/AuthActivity;->A:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 465
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 466
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->z:Ljava/lang/String;

    const-string v1, "SIS_KEY_AUTH_STATE_NONCE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->u:Lcom/dropbox/core/g;

    .line 3077
    iget-object v0, v0, Lcom/dropbox/core/g;->a:Ljava/lang/String;

    const-string v1, "SIS_KEY_PKCE_CODE_VERIFIER"

    .line 467
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
