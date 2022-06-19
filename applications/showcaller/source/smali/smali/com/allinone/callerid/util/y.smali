.class public Lcom/allinone/callerid/util/y;
.super Ljava/lang/Object;
.source "InitApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/y$b;
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/util/y$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/util/y;)Lcom/allinone/callerid/util/y$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/util/y;->a:Lcom/allinone/callerid/util/y$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/util/y$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/util/y$a;-><init>(Lcom/allinone/callerid/util/y;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/allinone/callerid/util/y$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/y;->a:Lcom/allinone/callerid/util/y$b;

    return-void
.end method
