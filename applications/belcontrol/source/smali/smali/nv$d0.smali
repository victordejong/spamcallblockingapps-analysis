.class public Lnv$d0;
.super Lnv$k0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->Q(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Landroidx/media2/common/MediaItem;

.field public final synthetic h:Lnv;


# direct methods
.method public constructor <init>(Lnv;IZLandroidx/media2/common/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lnv$d0;->h:Lnv;

    iput-object p4, p0, Lnv$d0;->g:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p1, p2, p3}, Lnv$k0;-><init>(Lnv;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lnv$d0;->h:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    iget-object v1, p0, Lnv$d0;->g:Landroidx/media2/common/MediaItem;

    invoke-virtual {v0, v1}, Lpv;->O(Landroidx/media2/common/MediaItem;)V

    return-void
.end method
