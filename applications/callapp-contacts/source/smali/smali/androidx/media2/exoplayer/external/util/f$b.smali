.class final Landroidx/media2/exoplayer/external/util/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Z

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/f$b;->c:Landroid/os/Handler;

    .line 90
    iput-object p2, p0, Landroidx/media2/exoplayer/external/util/f$b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/util/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/f$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/f$b;->c:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/util/g;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/util/g;-><init>(Landroidx/media2/exoplayer/external/util/f$b;Landroidx/media2/exoplayer/external/util/f$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
