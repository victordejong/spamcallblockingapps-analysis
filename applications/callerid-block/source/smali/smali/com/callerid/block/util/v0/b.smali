.class public Lcom/callerid/block/util/v0/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/util/v0/b;


# instance fields
.field private a:Lcom/google/android/gms/ads/w/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callerid/block/util/v0/b;

    invoke-direct {v0}, Lcom/callerid/block/util/v0/b;-><init>()V

    sput-object v0, Lcom/callerid/block/util/v0/b;->b:Lcom/callerid/block/util/v0/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/util/v0/b;)Lcom/google/android/gms/ads/w/a;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/util/v0/b;->a:Lcom/google/android/gms/ads/w/a;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/util/v0/b;Lcom/google/android/gms/ads/w/a;)Lcom/google/android/gms/ads/w/a;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/v0/b;->a:Lcom/google/android/gms/ads/w/a;

    return-object p1
.end method

.method public static c()Lcom/callerid/block/util/v0/b;
    .locals 1

    sget-object v0, Lcom/callerid/block/util/v0/b;->b:Lcom/callerid/block/util/v0/b;

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 1

    new-instance v0, Lcom/callerid/block/util/v0/b$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/v0/b$a;-><init>(Lcom/callerid/block/util/v0/b;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/util/v0/b;->a:Lcom/google/android/gms/ads/w/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/app/Activity;)V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u5c55\u793a\u63d2\u5c4f\u5e7f\u544a>\u8fd8\u8981\u770b\u540e\u9762\u5224\u65ad"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/callerid/block/util/v0/b$b;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/util/v0/b$b;-><init>(Lcom/callerid/block/util/v0/b;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    return-void
.end method
