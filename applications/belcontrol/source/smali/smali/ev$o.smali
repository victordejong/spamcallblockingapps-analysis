.class public Lev$o;
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
.field public final synthetic a:J

.field public final synthetic b:Lev;


# direct methods
.method public constructor <init>(Lev;J)V
    .locals 0

    iput-object p1, p0, Lev$o;->b:Lev;

    iput-wide p2, p0, Lev$o;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 3

    iget-object v0, p0, Lev$o;->b:Lev;

    iget-wide v1, p0, Lev$o;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/common/SessionPlayer$a;->onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V

    return-void
.end method
