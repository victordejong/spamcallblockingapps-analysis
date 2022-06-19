.class public Lcf1;
.super Lbf1;
.source ""


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lmf1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lre1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcf1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lbf1;-><init>()V

    sget-object v0, Lcf1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkf1;

    invoke-direct {v0}, Lkf1;-><init>()V

    :try_start_0
    new-instance v1, Lnf1;

    sget-object v2, Lef1;->a:Lef1;

    invoke-direct {v1, v2}, Lnf1;-><init>(Ldf1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Luf1;->a(Ljava/lang/Exception;)V

    :goto_0
    sget-object v1, Lcf1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lse1;

    sget-object v1, Lcf1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf1;

    invoke-direct {v0, p1, v1}, Lse1;-><init>(Landroid/app/Activity;Lmf1;)V

    iput-object v0, p0, Lcf1;->a:Lre1;

    invoke-interface {v0}, Lre1;->a()V

    return-void
.end method

.method public static synthetic d(Lcf1;)Lre1;
    .locals 0

    iget-object p0, p0, Lcf1;->a:Lre1;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lgf1;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcf1;->e(Ljava/lang/String;)Lgf1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Luf1;->a(Ljava/lang/Exception;)V

    new-instance p1, Ljf1;

    invoke-direct {p1}, Ljf1;-><init>()V

    return-object p1
.end method

.method public c(Landroid/webkit/WebView;)Lrf1;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcf1;->f(Landroid/webkit/WebView;)Lrf1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Luf1;->a(Ljava/lang/Exception;)V

    new-instance p1, Llf1;

    invoke-direct {p1}, Llf1;-><init>()V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Lgf1;
    .locals 2

    sget-object v0, Lcf1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf1;

    new-instance v1, Lcf1$b;

    invoke-direct {v1, p0, v0, p1}, Lcf1$b;-><init>(Lcf1;Lmf1;Ljava/lang/String;)V

    new-instance p1, Lhf1$a;

    invoke-direct {p1}, Lhf1$a;-><init>()V

    invoke-static {v0, v1, p1}, Lof1;->f(Lmf1;Lof1$b;Lof1$d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgf1;

    return-object p1
.end method

.method public final f(Landroid/webkit/WebView;)Lrf1;
    .locals 2

    invoke-static {p1}, Ltf1;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lcf1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf1;

    new-instance v1, Lcf1$a;

    invoke-direct {v1, p0, v0, p1}, Lcf1$a;-><init>(Lcf1;Ljava/lang/ref/WeakReference;Lmf1;)V

    new-instance v0, Lsf1$a;

    invoke-direct {v0}, Lsf1$a;-><init>()V

    invoke-static {p1, v1, v0}, Lof1;->f(Lmf1;Lof1$b;Lof1$d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrf1;

    return-object p1
.end method
