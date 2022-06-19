.class public final synthetic Lly;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/MediaRouteProviderService$b$a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService$b$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lly;->a:Landroidx/mediarouter/media/MediaRouteProviderService$b$a;

    iput-object p2, p0, Lly;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lly;->a:Landroidx/mediarouter/media/MediaRouteProviderService$b$a;

    iget-object v1, p0, Lly;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->p(Ljava/lang/String;)V

    return-void
.end method
