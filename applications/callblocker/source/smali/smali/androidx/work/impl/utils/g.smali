.class public Landroidx/work/impl/utils/g;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroidx/work/impl/i;

.field private b:Ljava/lang/String;

.field private c:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/work/impl/utils/g;->a:Landroidx/work/impl/i;

    .line 40
    iput-object p2, p0, Landroidx/work/impl/utils/g;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Landroidx/work/impl/utils/g;->c:Landroidx/work/WorkerParameters$a;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Landroidx/work/impl/utils/g;->a:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/g;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/utils/g;->c:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/c;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    .line 47
    return-void
.end method
