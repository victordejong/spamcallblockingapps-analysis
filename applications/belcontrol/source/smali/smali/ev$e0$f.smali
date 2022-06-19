.class public Lev$e0$f;
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
.field public final synthetic a:Lev$e0;


# direct methods
.method public constructor <init>(Lev$e0;)V
    .locals 0

    iput-object p1, p0, Lev$e0$f;->a:Lev$e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    iget-object v0, p0, Lev$e0$f;->a:Lev$e0;

    iget-object v0, v0, Lev$e0;->a:Lev;

    invoke-virtual {v0}, Lev;->C()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onTrackInfoChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V

    return-void
.end method
