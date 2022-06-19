.class final Landroidx/room/l$3;
.super Landroidx/room/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/l;-><init>(Landroidx/room/h;Landroidx/room/d;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/room/l;


# direct methods
.method constructor <init>(Landroidx/room/l;[Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Landroidx/room/l$3;->b:Landroidx/room/l;

    invoke-direct {p0, p2}, Landroidx/room/e$b;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-static {}, Landroidx/a/a/a/a;->a()Landroidx/a/a/a/a;

    move-result-object p1

    iget-object v0, p0, Landroidx/room/l$3;->b:Landroidx/room/l;

    iget-object v0, v0, Landroidx/room/l;->o:Ljava/lang/Runnable;

    .line 1054
    invoke-virtual {p1}, Landroidx/a/a/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1057
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/a/a/a/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method
