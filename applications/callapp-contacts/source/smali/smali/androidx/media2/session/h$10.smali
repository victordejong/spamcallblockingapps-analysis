.class final Landroidx/media2/session/h$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/h;->a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;Landroid/view/Surface;)V
    .locals 0

    .line 785
    iput-object p1, p0, Landroidx/media2/session/h$10;->b:Landroidx/media2/session/h;

    iput-object p2, p0, Landroidx/media2/session/h$10;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    iget-object v0, p0, Landroidx/media2/session/h$10;->b:Landroidx/media2/session/h;

    iget-object v0, v0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    iget-object v1, p0, Landroidx/media2/session/h$10;->a:Landroid/view/Surface;

    invoke-interface {p1, v0, p2, v1}, Landroidx/media2/session/c;->a(Landroidx/media2/session/b;ILandroid/view/Surface;)V

    return-void
.end method
