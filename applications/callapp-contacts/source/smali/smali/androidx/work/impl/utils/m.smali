.class public final Landroidx/work/impl/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/p;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:Landroidx/work/impl/WorkDatabase;

.field final c:Landroidx/work/impl/utils/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkProgressUpdater"

    .line 48
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/b/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/work/impl/utils/m;->b:Landroidx/work/impl/WorkDatabase;

    .line 62
    iput-object p2, p0, Landroidx/work/impl/utils/m;->c:Landroidx/work/impl/utils/b/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;Landroidx/work/d;)Lcom/google/common/util/concurrent/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/d;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {}, Landroidx/work/impl/utils/a/c;->a()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    .line 72
    iget-object v1, p0, Landroidx/work/impl/utils/m;->c:Landroidx/work/impl/utils/b/a;

    new-instance v2, Landroidx/work/impl/utils/m$1;

    invoke-direct {v2, p0, p1, p2, v0}, Landroidx/work/impl/utils/m$1;-><init>(Landroidx/work/impl/utils/m;Ljava/util/UUID;Landroidx/work/d;Landroidx/work/impl/utils/a/c;)V

    invoke-interface {v1, v2}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method
