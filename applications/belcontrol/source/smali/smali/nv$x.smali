.class public Lnv$x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnv$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->o(Landroidx/media2/common/MediaItem;Liv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Liv;

.field public final synthetic c:Lnv;


# direct methods
.method public constructor <init>(Lnv;Landroidx/media2/common/MediaItem;Liv;)V
    .locals 0

    iput-object p1, p0, Lnv$x;->c:Lnv;

    iput-object p2, p0, Lnv$x;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Lnv$x;->b:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfv$b;)V
    .locals 3

    iget-object v0, p0, Lnv$x;->c:Lnv;

    iget-object v1, p0, Lnv$x;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Lnv$x;->b:Liv;

    invoke-virtual {p1, v0, v1, v2}, Lfv$b;->f(Lfv;Landroidx/media2/common/MediaItem;Liv;)V

    return-void
.end method
