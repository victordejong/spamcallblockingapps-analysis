.class public Lev$e0$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$j0;


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

.field public final synthetic b:Lev$e0;


# direct methods
.method public constructor <init>(Lev$e0;Landroidx/media2/common/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lev$e0$g;->b:Lev$e0;

    iput-object p2, p0, Lev$e0$g;->a:Landroidx/media2/common/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    iget-object v0, p0, Lev$e0$g;->b:Lev$e0;

    iget-object v0, v0, Lev$e0;->a:Lev;

    iget-object v1, p0, Lev$e0$g;->a:Landroidx/media2/common/MediaItem;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V

    return-void
.end method
