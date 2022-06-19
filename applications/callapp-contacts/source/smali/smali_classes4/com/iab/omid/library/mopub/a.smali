.class public final Lcom/iab/omid/library/mopub/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iab/omid/library/mopub/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/mopub/c;

    invoke-direct {v0}, Lcom/iab/omid/library/mopub/c;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mopub/a;->a:Lcom/iab/omid/library/mopub/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.4-Mopub"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/iab/omid/library/mopub/a;->a:Lcom/iab/omid/library/mopub/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "Application Context cannot be null"

    .line 2000
    invoke-static {p0, v1}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-boolean v1, v0, Lcom/iab/omid/library/mopub/c;->a:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 4000
    iput-boolean v1, v0, Lcom/iab/omid/library/mopub/c;->a:Z

    .line 1000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/f;->a()Lcom/iab/omid/library/mopub/b/f;

    move-result-object v0

    .line 6000
    new-instance v1, Lcom/iab/omid/library/mopub/a/a;

    invoke-direct {v1}, Lcom/iab/omid/library/mopub/a/a;-><init>()V

    .line 5000
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 7000
    new-instance v3, Lcom/iab/omid/library/mopub/a/d;

    invoke-direct {v3, v2, p0, v1, v0}, Lcom/iab/omid/library/mopub/a/d;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/mopub/a/a;Lcom/iab/omid/library/mopub/a/c;)V

    .line 5000
    iput-object v3, v0, Lcom/iab/omid/library/mopub/b/f;->b:Lcom/iab/omid/library/mopub/a/d;

    .line 1000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/b;->a()Lcom/iab/omid/library/mopub/b/b;

    move-result-object v0

    .line 8000
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/iab/omid/library/mopub/b/b;->a:Landroid/content/Context;

    .line 1000
    invoke-static {p0}, Lcom/iab/omid/library/mopub/d/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/mopub/b/d;->a()Lcom/iab/omid/library/mopub/b/d;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 9000
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v0, Lcom/iab/omid/library/mopub/b/d;->a:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/iab/omid/library/mopub/a;->a:Lcom/iab/omid/library/mopub/c;

    .line 11000
    iget-boolean v0, v0, Lcom/iab/omid/library/mopub/c;->a:Z

    return v0
.end method
