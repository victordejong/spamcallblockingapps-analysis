.class public Lev$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->q0(Landroidx/media2/common/MediaItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:I

.field public final synthetic c:Lev;


# direct methods
.method public constructor <init>(Lev;Landroidx/media2/common/MediaItem;I)V
    .locals 0

    iput-object p1, p0, Lev$l;->c:Lev;

    iput-object p2, p0, Lev$l;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Lev$l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 3

    iget-object v0, p0, Lev$l;->c:Lev;

    iget-object v1, p0, Lev$l;->a:Landroidx/media2/common/MediaItem;

    iget v2, p0, Lev$l;->b:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/common/SessionPlayer$a;->onBufferingStateChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;I)V

    return-void
.end method
