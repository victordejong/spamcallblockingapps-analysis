.class final Landroidx/media2/player/c$14;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(F)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZF)V
    .locals 0

    .line 460
    iput-object p1, p0, Landroidx/media2/player/c$14;->b:Landroidx/media2/player/c;

    iput p4, p0, Landroidx/media2/player/c$14;->a:F

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 463
    iget-object v0, p0, Landroidx/media2/player/c$14;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget v1, p0, Landroidx/media2/player/c$14;->a:F

    .line 1362
    iget-object v0, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ak;->a(F)V

    return-void
.end method
