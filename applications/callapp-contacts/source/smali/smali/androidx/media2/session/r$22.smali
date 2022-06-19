.class final Landroidx/media2/session/r$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILandroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroid/view/Surface;)V
    .locals 0

    .line 944
    iput-object p1, p0, Landroidx/media2/session/r$22;->b:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$22;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$b;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 947
    iget-object p1, p0, Landroidx/media2/session/r$22;->b:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    iget-object v0, p0, Landroidx/media2/session/r$22;->a:Landroid/view/Surface;

    invoke-interface {p1, v0}, Landroidx/media2/session/MediaSession$c;->a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
