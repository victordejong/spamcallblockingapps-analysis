.class final Landroidx/media2/session/MediaController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaController$b;

.field final synthetic b:Landroidx/media2/session/MediaController;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaController;Landroidx/media2/session/MediaController$b;)V
    .locals 0

    .line 1414
    iput-object p1, p0, Landroidx/media2/session/MediaController$1;->b:Landroidx/media2/session/MediaController;

    iput-object p2, p0, Landroidx/media2/session/MediaController$1;->a:Landroidx/media2/session/MediaController$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1417
    iget-object v0, p0, Landroidx/media2/session/MediaController$1;->a:Landroidx/media2/session/MediaController$b;

    iget-object v1, p0, Landroidx/media2/session/MediaController$1;->b:Landroidx/media2/session/MediaController;

    iget-object v1, v1, Landroidx/media2/session/MediaController;->e:Landroidx/media2/session/MediaController$a;

    invoke-interface {v0, v1}, Landroidx/media2/session/MediaController$b;->run(Landroidx/media2/session/MediaController$a;)V

    return-void
.end method
