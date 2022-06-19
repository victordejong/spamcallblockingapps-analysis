.class public Lev$e0$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev$e0;->c(Lfv;Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lev$e0;


# direct methods
.method public constructor <init>(Lev$e0;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    iput-object p1, p0, Lev$e0$k;->d:Lev$e0;

    iput-object p2, p0, Lev$e0$k;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Lev$e0$k;->b:I

    iput p4, p0, Lev$e0$k;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lev$i0;)V
    .locals 4

    iget-object v0, p0, Lev$e0$k;->d:Lev$e0;

    iget-object v0, v0, Lev$e0;->a:Lev;

    iget-object v1, p0, Lev$e0$k;->a:Landroidx/media2/common/MediaItem;

    iget v2, p0, Lev$e0$k;->b:I

    iget v3, p0, Lev$e0$k;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lev$i0;->onInfo(Lev;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
