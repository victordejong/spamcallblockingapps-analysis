.class public Lev$e0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev$e0;->e(Lfv;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media2/common/MediaItem;

.field public final synthetic c:Landroidx/media2/common/SubtitleData;

.field public final synthetic d:Lev$e0;


# direct methods
.method public constructor <init>(Lev$e0;ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    iput-object p1, p0, Lev$e0$b;->d:Lev$e0;

    iput p2, p0, Lev$e0$b;->a:I

    iput-object p3, p0, Lev$e0$b;->b:Landroidx/media2/common/MediaItem;

    iput-object p4, p0, Lev$e0$b;->c:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 4

    iget-object v0, p0, Lev$e0$b;->d:Lev$e0;

    iget-object v0, v0, Lev$e0;->a:Lev;

    iget v1, p0, Lev$e0$b;->a:I

    invoke-virtual {v0, v1}, Lev;->f0(I)Lev$k0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lev;->Y(Lev$k0;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    iget-object v1, p0, Lev$e0$b;->d:Lev$e0;

    iget-object v1, v1, Lev$e0;->a:Lev;

    iget-object v2, p0, Lev$e0$b;->b:Landroidx/media2/common/MediaItem;

    iget-object v3, p0, Lev$e0$b;->c:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroidx/media2/common/SessionPlayer$a;->onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method
