.class public Lp50$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/ListenableWorker;

.field public c:Lv70;

.field public d:Lr40;

.field public e:Landroidx/work/impl/WorkDatabase;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk50;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr40;Lv70;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Lp50$c;->h:Landroidx/work/WorkerParameters$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lp50$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lp50$c;->c:Lv70;

    iput-object p2, p0, Lp50$c;->d:Lr40;

    iput-object p4, p0, Lp50$c;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p5, p0, Lp50$c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lp50;
    .locals 1

    new-instance v0, Lp50;

    invoke-direct {v0, p0}, Lp50;-><init>(Lp50$c;)V

    return-object v0
.end method

.method public b(Landroidx/work/WorkerParameters$a;)Lp50$c;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lp50$c;->h:Landroidx/work/WorkerParameters$a;

    :cond_0
    return-object p0
.end method

.method public c(Ljava/util/List;)Lp50$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk50;",
            ">;)",
            "Lp50$c;"
        }
    .end annotation

    iput-object p1, p0, Lp50$c;->g:Ljava/util/List;

    return-object p0
.end method
