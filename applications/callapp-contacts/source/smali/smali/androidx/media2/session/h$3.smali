.class final Landroidx/media2/session/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/h;->a(F)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;F)V
    .locals 0

    .line 460
    iput-object p1, p0, Landroidx/media2/session/h$3;->b:Landroidx/media2/session/h;

    iput p2, p0, Landroidx/media2/session/h$3;->a:F

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

    .line 463
    iget-object v0, p0, Landroidx/media2/session/h$3;->b:Landroidx/media2/session/h;

    iget-object v0, v0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    iget v1, p0, Landroidx/media2/session/h$3;->a:F

    invoke-interface {p1, v0, p2, v1}, Landroidx/media2/session/c;->a(Landroidx/media2/session/b;IF)V

    return-void
.end method
