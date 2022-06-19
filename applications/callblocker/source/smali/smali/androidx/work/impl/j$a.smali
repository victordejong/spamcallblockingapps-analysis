.class public Landroidx/work/impl/j$a;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroidx/work/ListenableWorker;

.field c:Landroidx/work/impl/foreground/a;

.field d:Landroidx/work/impl/utils/b/a;

.field e:Landroidx/work/b;

.field f:Landroidx/work/impl/WorkDatabase;

.field g:Ljava/lang/String;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/j$a;->i:Landroidx/work/WorkerParameters$a;

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j$a;->a:Landroid/content/Context;

    .line 635
    iput-object p3, p0, Landroidx/work/impl/j$a;->d:Landroidx/work/impl/utils/b/a;

    .line 636
    iput-object p4, p0, Landroidx/work/impl/j$a;->c:Landroidx/work/impl/foreground/a;

    .line 637
    iput-object p2, p0, Landroidx/work/impl/j$a;->e:Landroidx/work/b;

    .line 638
    iput-object p5, p0, Landroidx/work/impl/j$a;->f:Landroidx/work/impl/WorkDatabase;

    .line 639
    iput-object p6, p0, Landroidx/work/impl/j$a;->g:Ljava/lang/String;

    .line 640
    return-void
.end method


# virtual methods
.method public a(Landroidx/work/WorkerParameters$a;)Landroidx/work/impl/j$a;
    .locals 0

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 661
    iput-object p1, p0, Landroidx/work/impl/j$a;->i:Landroidx/work/WorkerParameters$a;

    .line 663
    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/List;)Landroidx/work/impl/j$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;)",
            "Landroidx/work/impl/j$a;"
        }
    .end annotation

    .prologue
    .line 648
    iput-object p1, p0, Landroidx/work/impl/j$a;->h:Ljava/util/List;

    .line 649
    return-object p0
.end method

.method public a()Landroidx/work/impl/j;
    .locals 1

    .prologue
    .line 682
    new-instance v0, Landroidx/work/impl/j;

    invoke-direct {v0, p0}, Landroidx/work/impl/j;-><init>(Landroidx/work/impl/j$a;)V

    return-object v0
.end method
