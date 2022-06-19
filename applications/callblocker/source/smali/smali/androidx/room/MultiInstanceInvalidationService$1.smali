.class Landroidx/room/MultiInstanceInvalidationService$1;
.super Landroid/os/RemoteCallbackList;
.source "MultiInstanceInvalidationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/MultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroidx/room/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$1;->a:Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/room/c;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$1;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/HashMap;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Landroidx/room/c;

    invoke-virtual {p0, p1, p2}, Landroidx/room/MultiInstanceInvalidationService$1;->a(Landroidx/room/c;Ljava/lang/Object;)V

    return-void
.end method
