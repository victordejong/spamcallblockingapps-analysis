.class public Lnv$y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnv$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->p(Landroidx/media2/common/MediaItem;Lgv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Lgv;

.field public final synthetic c:Lnv;


# direct methods
.method public constructor <init>(Lnv;Landroidx/media2/common/MediaItem;Lgv;)V
    .locals 0

    iput-object p1, p0, Lnv$y;->c:Lnv;

    iput-object p2, p0, Lnv$y;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Lnv$y;->b:Lgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfv$b;)V
    .locals 3

    iget-object v0, p0, Lnv$y;->c:Lnv;

    iget-object v1, p0, Lnv$y;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Lnv$y;->b:Lgv;

    invoke-virtual {p1, v0, v1, v2}, Lfv$b;->d(Lfv;Landroidx/media2/common/MediaItem;Lgv;)V

    return-void
.end method
