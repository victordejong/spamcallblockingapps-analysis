.class public Lev$t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->h0(Lfv;Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lev$k0;

.field public final synthetic b:Lev;


# direct methods
.method public constructor <init>(Lev;Lev$k0;)V
    .locals 0

    iput-object p1, p0, Lev$t;->b:Lev;

    iput-object p2, p0, Lev$t;->a:Lev$k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    iget-object v0, p0, Lev$t;->b:Lev;

    iget-object v1, p0, Lev$t;->a:Lev$k0;

    invoke-virtual {v0, v1}, Lev;->Y(Lev$k0;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method
