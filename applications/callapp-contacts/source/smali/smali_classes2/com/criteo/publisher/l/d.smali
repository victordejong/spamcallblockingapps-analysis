.class public final Lcom/criteo/publisher/l/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/criteo/publisher/CriteoInterstitial;

.field final b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoInterstitialAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/logging/g;

.field private final d:Lcom/criteo/publisher/e/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoInterstitial;Lcom/criteo/publisher/CriteoInterstitialAdListener;Lcom/criteo/publisher/e/c;)V
    .locals 1

    const-string v0, "interstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runOnUiThreadExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1, v0, p3}, Lcom/criteo/publisher/l/d;-><init>(Lcom/criteo/publisher/CriteoInterstitial;Ljava/lang/ref/Reference;Lcom/criteo/publisher/e/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/CriteoInterstitial;Ljava/lang/ref/Reference;Lcom/criteo/publisher/e/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/CriteoInterstitial;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoInterstitialAdListener;",
            ">;",
            "Lcom/criteo/publisher/e/c;",
            ")V"
        }
    .end annotation

    const-string v0, "interstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerRef"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runOnUiThreadExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/l/d;->a:Lcom/criteo/publisher/CriteoInterstitial;

    iput-object p2, p0, Lcom/criteo/publisher/l/d;->b:Ljava/lang/ref/Reference;

    iput-object p3, p0, Lcom/criteo/publisher/l/d;->d:Lcom/criteo/publisher/e/c;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object p1

    const-string p2, "LoggerFactory.getLogger(javaClass)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/criteo/publisher/l/d;->c:Lcom/criteo/publisher/logging/g;

    return-void
.end method

.method private a(Lcom/criteo/publisher/logging/g;Lcom/criteo/publisher/o;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/criteo/publisher/o;->a:Lcom/criteo/publisher/o;

    if-ne p2, v0, :cond_0

    .line 86
    iget-object p2, p0, Lcom/criteo/publisher/l/d;->a:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-static {p2}, Lcom/criteo/publisher/j/b;->b(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/criteo/publisher/o;->b:Lcom/criteo/publisher/o;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/criteo/publisher/o;->c:Lcom/criteo/publisher/o;

    if-ne p2, v0, :cond_2

    .line 88
    :cond_1
    iget-object p2, p0, Lcom/criteo/publisher/l/d;->a:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-static {p2}, Lcom/criteo/publisher/j/b;->c(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/criteo/publisher/o;)V
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/l/d;->c:Lcom/criteo/publisher/logging/g;

    invoke-direct {p0, v0, p1}, Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/logging/g;Lcom/criteo/publisher/o;)V

    .line 62
    iget-object v0, p0, Lcom/criteo/publisher/l/d;->d:Lcom/criteo/publisher/e/c;

    new-instance v1, Lcom/criteo/publisher/l/d$a;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/l/d$a;-><init>(Lcom/criteo/publisher/l/d;Lcom/criteo/publisher/o;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
