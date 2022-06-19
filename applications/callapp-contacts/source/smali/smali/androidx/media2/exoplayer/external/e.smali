.class final Landroidx/media2/exoplayer/external/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/v;

.field private final b:Landroidx/media2/exoplayer/external/e$a;

.field private c:Landroidx/media2/exoplayer/external/ag;

.field private d:Landroidx/media2/exoplayer/external/util/l;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/e$a;Landroidx/media2/exoplayer/external/util/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/media2/exoplayer/external/e;->b:Landroidx/media2/exoplayer/external/e$a;

    .line 67
    new-instance p1, Landroidx/media2/exoplayer/external/util/v;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/v;-><init>(Landroidx/media2/exoplayer/external/util/b;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/e;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 6

    .line 1198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->c:Landroidx/media2/exoplayer/external/ag;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1199
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/ag;->y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->c:Landroidx/media2/exoplayer/external/ag;

    .line 1200
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/ag;->x()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->c:Landroidx/media2/exoplayer/external/ag;

    .line 1201
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/ag;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1166
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/e;->e:Z

    .line 1167
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/e;->f:Z

    if-eqz p1, :cond_5

    .line 1168
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/v;->a()V

    goto :goto_2

    .line 1172
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/l;->h_()J

    move-result-wide v2

    .line 1173
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/e;->e:Z

    if-eqz p1, :cond_4

    .line 1175
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/v;->h_()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_3

    .line 1176
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/v;->b()V

    goto :goto_2

    .line 1179
    :cond_3
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/e;->e:Z

    .line 1180
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/e;->f:Z

    if-eqz p1, :cond_4

    .line 1181
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/v;->a()V

    .line 1185
    :cond_4
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {p1, v2, v3}, Landroidx/media2/exoplayer/external/util/v;->a(J)V

    .line 1186
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/l;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object p1

    .line 1187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    .line 2107
    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    .line 1187
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/v;->a(Landroidx/media2/exoplayer/external/ad;)V

    .line 1189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->b:Landroidx/media2/exoplayer/external/e$a;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/e$a;->a(Landroidx/media2/exoplayer/external/ad;)V

    .line 138
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/e;->h_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/e;->f:Z

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/v;->a()V

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/v;->a(J)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ad;)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/util/l;->a(Landroidx/media2/exoplayer/external/ad;)V

    .line 152
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/l;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object p1

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/v;->a(Landroidx/media2/exoplayer/external/ad;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/ag;->c()Landroidx/media2/exoplayer/external/util/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 111
    iput-object v0, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    .line 112
    iput-object p1, p0, Landroidx/media2/exoplayer/external/e;->c:Landroidx/media2/exoplayer/external/ag;

    .line 113
    iget-object p1, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    .line 1107
    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    .line 113
    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/util/l;->a(Landroidx/media2/exoplayer/external/ad;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/e;->f:Z

    .line 84
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/v;->b()V

    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/ag;)V
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->c:Landroidx/media2/exoplayer/external/ag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    .line 126
    iput-object p1, p0, Landroidx/media2/exoplayer/external/e;->c:Landroidx/media2/exoplayer/external/ag;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/e;->e:Z

    :cond_0
    return-void
.end method

.method public final d()Landroidx/media2/exoplayer/external/ad;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/l;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    .line 3107
    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    return-object v0
.end method

.method public final h_()J
    .locals 2

    .line 145
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/e;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->a:Landroidx/media2/exoplayer/external/util/v;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/v;->h_()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/e;->d:Landroidx/media2/exoplayer/external/util/l;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/l;->h_()J

    move-result-wide v0

    return-wide v0
.end method
