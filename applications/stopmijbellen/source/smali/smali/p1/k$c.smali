.class public Lp1/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lw1/a;

.field public c:La2/a;

.field public d:Landroidx/work/a;

.field public e:Landroidx/work/impl/WorkDatabase;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;La2/a;Lw1/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Lp1/k$c;->h:Landroidx/work/WorkerParameters$a;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lp1/k$c;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lp1/k$c;->c:La2/a;

    .line 5
    iput-object p4, p0, Lp1/k$c;->b:Lw1/a;

    .line 6
    iput-object p2, p0, Lp1/k$c;->d:Landroidx/work/a;

    .line 7
    iput-object p5, p0, Lp1/k$c;->e:Landroidx/work/impl/WorkDatabase;

    .line 8
    iput-object p6, p0, Lp1/k$c;->f:Ljava/lang/String;

    return-void
.end method
