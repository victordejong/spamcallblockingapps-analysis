.class final Lcom/google/android/exoplayer2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/z;

.field private final b:Lcom/google/android/exoplayer2/k$a;

.field private c:Lcom/google/android/exoplayer2/af;

.field private d:Lcom/google/android/exoplayer2/util/p;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k$a;Lcom/google/android/exoplayer2/util/c;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/k;->b:Lcom/google/android/exoplayer2/k$a;

    .line 59
    new-instance p1, Lcom/google/android/exoplayer2/util/z;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/z;-><init>(Lcom/google/android/exoplayer2/util/c;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k;->e:Z

    return-void
.end method


# virtual methods
.method public final B_()J
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k;->e:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/z;->B_()J

    move-result-wide v0

    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/p;->B_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Z)J
    .locals 6

    .line 1195
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->c:Lcom/google/android/exoplayer2/af;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1196
    invoke-interface {v0}, Lcom/google/android/exoplayer2/af;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->c:Lcom/google/android/exoplayer2/af;

    .line 1197
    invoke-interface {v0}, Lcom/google/android/exoplayer2/af;->y()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->c:Lcom/google/android/exoplayer2/af;

    .line 1198
    invoke-interface {p1}, Lcom/google/android/exoplayer2/af;->g()Z

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

    .line 1160
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/k;->e:Z

    .line 1161
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/k;->f:Z

    if-eqz p1, :cond_5

    .line 1162
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/z;->a()V

    goto :goto_2

    .line 1168
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/p;

    .line 1169
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p;->B_()J

    move-result-wide v2

    .line 1170
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k;->e:Z

    if-eqz v0, :cond_4

    .line 1172
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/z;->B_()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 1173
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/z;->b()V

    goto :goto_2

    .line 1176
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/k;->e:Z

    .line 1177
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k;->f:Z

    if-eqz v0, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/z;->a()V

    .line 1182
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/z;->a(J)V

    .line 1183
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object p1

    .line 1184
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    .line 2103
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    .line 1184
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1185
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/z;->a(Lcom/google/android/exoplayer2/aa;)V

    .line 1186
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->b:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/k$a;->a(Lcom/google/android/exoplayer2/aa;)V

    .line 130
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k;->B_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k;->f:Z

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/z;->a()V

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/z;->a(J)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/p;->a(Lcom/google/android/exoplayer2/aa;)V

    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object p1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/z;->a(Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Lcom/google/android/exoplayer2/af;->c()Lcom/google/android/exoplayer2/util/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 103
    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer2/k;->c:Lcom/google/android/exoplayer2/af;

    .line 105
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    .line 1103
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    .line 105
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/p;->a(Lcom/google/android/exoplayer2/aa;)V

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k;->f:Z

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/z;->b()V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/af;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->c:Lcom/google/android/exoplayer2/af;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    .line 118
    iput-object p1, p0, Lcom/google/android/exoplayer2/k;->c:Lcom/google/android/exoplayer2/af;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k;->e:Z

    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/exoplayer2/aa;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->d:Lcom/google/android/exoplayer2/util/p;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/p;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/util/z;

    .line 3103
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    return-object v0
.end method
