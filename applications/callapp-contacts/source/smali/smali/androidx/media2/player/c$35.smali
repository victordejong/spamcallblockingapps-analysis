.class final Landroidx/media2/player/c$35;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(JI)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZJI)V
    .locals 0

    .line 269
    iput-object p1, p0, Landroidx/media2/player/c$35;->c:Landroidx/media2/player/c;

    iput-wide p4, p0, Landroidx/media2/player/c$35;->a:J

    iput p6, p0, Landroidx/media2/player/c$35;->b:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 272
    iget-object v0, p0, Landroidx/media2/player/c$35;->c:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget-wide v1, p0, Landroidx/media2/player/c$35;->a:J

    iget v3, p0, Landroidx/media2/player/c$35;->b:I

    .line 1222
    iget-object v4, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-static {v3}, Landroidx/media2/player/d;->a(I)Landroidx/media2/exoplayer/external/aj;

    move-result-object v3

    .line 2194
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 2195
    iget-object v4, v4, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    if-nez v3, :cond_0

    .line 2366
    sget-object v3, Landroidx/media2/exoplayer/external/aj;->e:Landroidx/media2/exoplayer/external/aj;

    .line 2368
    :cond_0
    iget-object v5, v4, Landroidx/media2/exoplayer/external/h;->l:Landroidx/media2/exoplayer/external/aj;

    invoke-virtual {v5, v3}, Landroidx/media2/exoplayer/external/aj;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2369
    iput-object v3, v4, Landroidx/media2/exoplayer/external/h;->l:Landroidx/media2/exoplayer/external/aj;

    .line 2370
    iget-object v4, v4, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    .line 3211
    iget-object v4, v4, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v3}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1223
    :cond_1
    iget-object v0, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/ak;->a(J)V

    return-void
.end method
