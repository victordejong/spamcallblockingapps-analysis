.class final synthetic Landroidx/media2/exoplayer/external/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:Landroidx/media2/exoplayer/external/a$b;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/m;->b:Landroidx/media2/exoplayer/external/a$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/m;->b:Landroidx/media2/exoplayer/external/a$b;

    .line 1701
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    return-void
.end method
