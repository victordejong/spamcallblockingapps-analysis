.class public Lcom/callapp/contacts/util/video/CallAppExoPlayerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/exoplayer2/m;
    .locals 6

    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/l;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/l;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1211
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/l;->b:Z

    .line 2151
    iput v1, v0, Lcom/google/android/exoplayer2/l;->a:I

    .line 18
    new-instance v2, Lcom/google/android/exoplayer2/aj$a;

    .line 19
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/aj$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;)V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/aj$a;->a()Lcom/google/android/exoplayer2/aj;

    move-result-object v0

    .line 22
    new-instance v2, Lcom/google/android/exoplayer2/audio/d$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/d$a;-><init>()V

    const/16 v3, 0xc

    .line 3081
    iput v3, v2, Lcom/google/android/exoplayer2/audio/d$a;->b:I

    const/4 v3, 0x2

    .line 4065
    iput v3, v2, Lcom/google/android/exoplayer2/audio/d$a;->a:I

    .line 25
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/d$a;->a()Lcom/google/android/exoplayer2/audio/d;

    move-result-object v2

    .line 4912
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 4913
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/aj;->v:Z

    if-nez v4, :cond_1

    .line 4916
    iget-object v4, v0, Lcom/google/android/exoplayer2/aj;->p:Lcom/google/android/exoplayer2/audio/d;

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4917
    iput-object v2, v0, Lcom/google/android/exoplayer2/aj;->p:Lcom/google/android/exoplayer2/audio/d;

    const/4 v4, 0x3

    .line 4918
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    .line 4919
    iget-object v4, v0, Lcom/google/android/exoplayer2/aj;->j:Lcom/google/android/exoplayer2/ak;

    iget v5, v2, Lcom/google/android/exoplayer2/audio/d;->d:I

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->f(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/ak;->a(I)V

    .line 4920
    iget-object v4, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/audio/d;)V

    .line 4921
    iget-object v2, v0, Lcom/google/android/exoplayer2/aj;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 4926
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/audio/d;)V

    .line 4927
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/aj;->r()Z

    move-result v2

    .line 4929
    iget-object v4, v0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/aj;->n()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/google/android/exoplayer2/c;->a(ZI)I

    move-result v4

    .line 4931
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/aj;->a(ZI)I

    move-result v5

    .line 4930
    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/aj;->a(ZII)V

    .line 27
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Z)V

    .line 4983
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/aj;->M()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 4984
    invoke-static {v2, v2, v1}, Lcom/google/android/exoplayer2/util/af;->a(FFF)F

    move-result v1

    .line 4985
    iget v2, v0, Lcom/google/android/exoplayer2/aj;->q:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 4988
    iput v1, v0, Lcom/google/android/exoplayer2/aj;->q:F

    .line 4989
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/aj;->L()V

    .line 4990
    iget-object v2, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/a/a;->a(F)V

    .line 4991
    iget-object v1, v0, Lcom/google/android/exoplayer2/aj;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/aj;->a(I)V

    return-object v0
.end method
