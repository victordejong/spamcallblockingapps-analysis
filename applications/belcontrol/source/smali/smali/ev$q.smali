.class public Lev$q;
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
.field public final synthetic a:F

.field public final synthetic b:Lev;


# direct methods
.method public constructor <init>(Lev;F)V
    .locals 0

    iput-object p1, p0, Lev$q;->b:Lev;

    iput p2, p0, Lev$q;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    iget-object v0, p0, Lev$q;->b:Lev;

    iget v1, p0, Lev$q;->a:F

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V

    return-void
.end method
