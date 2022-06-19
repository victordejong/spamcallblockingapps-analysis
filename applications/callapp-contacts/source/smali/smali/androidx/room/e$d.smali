.class final Landroidx/room/e$d;
.super Landroidx/room/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final b:Landroidx/room/e;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/room/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/room/e;Landroidx/room/e$b;)V
    .locals 1

    .line 837
    iget-object v0, p2, Landroidx/room/e$b;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/e$b;-><init>([Ljava/lang/String;)V

    .line 838
    iput-object p1, p0, Landroidx/room/e$d;->b:Landroidx/room/e;

    .line 839
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/room/e$d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Landroidx/room/e$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/e$b;

    if-nez v0, :cond_0

    .line 846
    iget-object p1, p0, Landroidx/room/e$d;->b:Landroidx/room/e;

    invoke-virtual {p1, p0}, Landroidx/room/e;->b(Landroidx/room/e$b;)V

    return-void

    .line 848
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/room/e$b;->a(Ljava/util/Set;)V

    return-void
.end method
