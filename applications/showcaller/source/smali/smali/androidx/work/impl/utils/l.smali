.class public Landroidx/work/impl/utils/l;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Landroidx/work/f;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroidx/work/impl/utils/o/a;

.field final c:Landroidx/work/impl/foreground/a;

.field final d:Landroidx/work/impl/n/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    .line 1
    invoke-static {v0}, Landroidx/work/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/a;Landroidx/work/impl/utils/o/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/work/impl/utils/l;->c:Landroidx/work/impl/foreground/a;

    .line 3
    iput-object p3, p0, Landroidx/work/impl/utils/l;->b:Landroidx/work/impl/utils/o/a;

    .line 4
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->B()Landroidx/work/impl/n/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/l;->d:Landroidx/work/impl/n/q;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/e;)Lcom/google/common/util/concurrent/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroidx/work/e;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->u()Landroidx/work/impl/utils/futures/a;

    move-result-object v6

    .line 2
    iget-object v7, p0, Landroidx/work/impl/utils/l;->b:Landroidx/work/impl/utils/o/a;

    new-instance v8, Landroidx/work/impl/utils/l$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/utils/l$a;-><init>(Landroidx/work/impl/utils/l;Landroidx/work/impl/utils/futures/a;Ljava/util/UUID;Landroidx/work/e;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    return-object v6
.end method
