.class public Lev$e0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev$e0;->d(Lfv;Landroidx/media2/common/MediaItem;Lgv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Lgv;

.field public final synthetic c:Lev$e0;


# direct methods
.method public constructor <init>(Lev$e0;Landroidx/media2/common/MediaItem;Lgv;)V
    .locals 0

    iput-object p1, p0, Lev$e0$a;->c:Lev$e0;

    iput-object p2, p0, Lev$e0$a;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Lev$e0$a;->b:Lgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lev$i0;)V
    .locals 3

    iget-object v0, p0, Lev$e0$a;->c:Lev$e0;

    iget-object v0, v0, Lev$e0;->a:Lev;

    iget-object v1, p0, Lev$e0$a;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Lev$e0$a;->b:Lgv;

    invoke-virtual {p1, v0, v1, v2}, Lev$i0;->onMediaTimeDiscontinuity(Lev;Landroidx/media2/common/MediaItem;Lgv;)V

    return-void
.end method
