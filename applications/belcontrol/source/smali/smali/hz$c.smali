.class public Lhz$c;
.super Lgz$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lhz$b;",
        ">",
        "Lgz$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhz$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgz$b;-><init>(Lgz$a;)V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Lgz$b;->a:Lgz$a;

    check-cast p1, Lhz$b;

    invoke-interface {p1, p2}, Lhz$b;->i(Ljava/lang/Object;)V

    return-void
.end method
