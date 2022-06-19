.class final Landroidx/media2/session/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/h;->l()Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;)V
    .locals 0

    .line 663
    iput-object p1, p0, Landroidx/media2/session/h$5;->a:Landroidx/media2/session/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroidx/media2/session/h$5;->a:Landroidx/media2/session/h;

    iget-object v0, v0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    invoke-interface {p1, v0, p2}, Landroidx/media2/session/c;->i(Landroidx/media2/session/b;I)V

    return-void
.end method
