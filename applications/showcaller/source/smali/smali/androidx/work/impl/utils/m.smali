.class public Landroidx/work/impl/utils/m;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Landroidx/work/m;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:Landroidx/work/impl/WorkDatabase;

.field final c:Landroidx/work/impl/utils/o/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkProgressUpdater"

    .line 1
    invoke-static {v0}, Landroidx/work/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/o/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/m;->c:Landroidx/work/impl/utils/o/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/d;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroidx/work/d;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->u()Landroidx/work/impl/utils/futures/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/m;->c:Landroidx/work/impl/utils/o/a;

    new-instance v1, Landroidx/work/impl/utils/m$a;

    invoke-direct {v1, p0, p2, p3, p1}, Landroidx/work/impl/utils/m$a;-><init>(Landroidx/work/impl/utils/m;Ljava/util/UUID;Landroidx/work/d;Landroidx/work/impl/utils/futures/a;)V

    invoke-interface {v0, v1}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    return-object p1
.end method
