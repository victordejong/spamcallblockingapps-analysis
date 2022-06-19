.class public final Landroidx/work/impl/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/g;


# instance fields
.field final a:Landroidx/work/impl/foreground/a;

.field final b:Landroidx/work/impl/model/WorkSpecDao;

.field private final c:Landroidx/work/impl/utils/b/a;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/a;Landroidx/work/impl/utils/b/a;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Landroidx/work/impl/utils/l;->a:Landroidx/work/impl/foreground/a;

    .line 66
    iput-object p3, p0, Landroidx/work/impl/utils/l;->c:Landroidx/work/impl/utils/b/a;

    .line 67
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/l;->b:Landroidx/work/impl/model/WorkSpecDao;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/f;)Lcom/google/common/util/concurrent/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroidx/work/f;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Landroidx/work/impl/utils/a/c;->a()Landroidx/work/impl/utils/a/c;

    move-result-object v6

    .line 78
    iget-object v7, p0, Landroidx/work/impl/utils/l;->c:Landroidx/work/impl/utils/b/a;

    new-instance v8, Landroidx/work/impl/utils/l$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/utils/l$1;-><init>(Landroidx/work/impl/utils/l;Landroidx/work/impl/utils/a/c;Ljava/util/UUID;Landroidx/work/f;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    return-object v6
.end method
