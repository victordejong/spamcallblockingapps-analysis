.class public Lev$e0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev$e0;->f(Lfv;Landroidx/media2/common/MediaItem;Liv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Liv;

.field public final synthetic c:Lev$e0;


# direct methods
.method public constructor <init>(Lev$e0;Landroidx/media2/common/MediaItem;Liv;)V
    .locals 0

    iput-object p1, p0, Lev$e0$d;->c:Lev$e0;

    iput-object p2, p0, Lev$e0$d;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Lev$e0$d;->b:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lev$i0;)V
    .locals 3

    iget-object v0, p0, Lev$e0$d;->c:Lev$e0;

    iget-object v0, v0, Lev$e0;->a:Lev;

    iget-object v1, p0, Lev$e0$d;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Lev$e0$d;->b:Liv;

    invoke-virtual {p1, v0, v1, v2}, Lev$i0;->onTimedMetaDataAvailable(Lev;Landroidx/media2/common/MediaItem;Liv;)V

    return-void
.end method
