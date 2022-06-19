.class public final Landroidx/media2/session/ConnectionResultParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Lzv;
    .locals 4

    new-instance v0, Lzv;

    invoke-direct {v0}, Lzv;-><init>()V

    iget v1, v0, Lzv;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lzv;->a:I

    iget-object v1, v0, Lzv;->b:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->G(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lzv;->b:Landroid/os/IBinder;

    iget v1, v0, Lzv;->m:I

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lzv;->m:I

    iget v1, v0, Lzv;->n:I

    const/16 v2, 0xb

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lzv;->n:I

    iget-object v1, v0, Lzv;->o:Landroidx/media2/common/ParcelImplListSlice;

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Ld40;->A(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/ParcelImplListSlice;

    iput-object v1, v0, Lzv;->o:Landroidx/media2/common/ParcelImplListSlice;

    iget-object v1, v0, Lzv;->p:Landroidx/media2/session/SessionCommandGroup;

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommandGroup;

    iput-object v1, v0, Lzv;->p:Landroidx/media2/session/SessionCommandGroup;

    iget v1, v0, Lzv;->q:I

    const/16 v2, 0xe

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lzv;->q:I

    iget v1, v0, Lzv;->r:I

    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lzv;->r:I

    iget v1, v0, Lzv;->s:I

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lzv;->s:I

    iget-object v1, v0, Lzv;->t:Landroid/os/Bundle;

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Ld40;->k(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lzv;->t:Landroid/os/Bundle;

    iget-object v1, v0, Lzv;->u:Landroidx/media2/common/VideoSize;

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/VideoSize;

    iput-object v1, v0, Lzv;->u:Landroidx/media2/common/VideoSize;

    iget-object v1, v0, Lzv;->v:Ljava/util/List;

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ld40;->w(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lzv;->v:Ljava/util/List;

    iget-object v1, v0, Lzv;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld40;->A(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Lzv;->d:Landroid/app/PendingIntent;

    iget-object v1, v0, Lzv;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x14

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Lzv;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v1, v0, Lzv;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x15

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Lzv;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v1, v0, Lzv;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x17

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Lzv;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v1, v0, Lzv;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v2, 0x18

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object v1, v0, Lzv;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget v1, v0, Lzv;->e:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lzv;->e:I

    iget-object v1, v0, Lzv;->g:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    iput-object v1, v0, Lzv;->g:Landroidx/media2/common/MediaItem;

    iget-wide v1, v0, Lzv;->h:J

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Ld40;->y(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lzv;->h:J

    iget-wide v1, v0, Lzv;->i:J

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v2, v3}, Ld40;->y(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lzv;->i:J

    iget v1, v0, Lzv;->j:F

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ld40;->s(FI)F

    move-result v1

    iput v1, v0, Lzv;->j:F

    iget-wide v1, v0, Lzv;->k:J

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Ld40;->y(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lzv;->k:J

    iget-object v1, v0, Lzv;->l:Landroidx/media2/session/MediaController$PlaybackInfo;

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object p0

    check-cast p0, Landroidx/media2/session/MediaController$PlaybackInfo;

    iput-object p0, v0, Lzv;->l:Landroidx/media2/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Lzv;->d()V

    return-object v0
.end method

.method public static write(Lzv;Ld40;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    invoke-virtual {p1}, Ld40;->g()Z

    move-result v1

    invoke-virtual {p0, v1}, Lzv;->e(Z)V

    iget v1, p0, Lzv;->a:I

    invoke-virtual {p1, v1, v0}, Ld40;->Y(II)V

    iget-object v0, p0, Lzv;->b:Landroid/os/IBinder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->j0(Landroid/os/IBinder;I)V

    iget v0, p0, Lzv;->m:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget v0, p0, Lzv;->n:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-object v0, p0, Lzv;->o:Landroidx/media2/common/ParcelImplListSlice;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ld40;->d0(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lzv;->p:Landroidx/media2/session/SessionCommandGroup;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget v0, p0, Lzv;->q:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget v0, p0, Lzv;->r:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget v0, p0, Lzv;->s:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-object v0, p0, Lzv;->t:Landroid/os/Bundle;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ld40;->O(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lzv;->u:Landroidx/media2/common/VideoSize;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget-object v0, p0, Lzv;->v:Ljava/util/List;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Ld40;->Z(Ljava/util/List;I)V

    iget-object v0, p0, Lzv;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ld40;->d0(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lzv;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget-object v0, p0, Lzv;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget-object v0, p0, Lzv;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget-object v0, p0, Lzv;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget v0, p0, Lzv;->e:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-object v0, p0, Lzv;->g:Landroidx/media2/common/MediaItem;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget-wide v0, p0, Lzv;->h:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ld40;->b0(JI)V

    iget-wide v0, p0, Lzv;->i:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ld40;->b0(JI)V

    iget v0, p0, Lzv;->j:F

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ld40;->W(FI)V

    iget-wide v0, p0, Lzv;->k:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Ld40;->b0(JI)V

    iget-object p0, p0, Lzv;->l:Landroidx/media2/session/MediaController$PlaybackInfo;

    const/16 v0, 0x9

    invoke-virtual {p1, p0, v0}, Ld40;->m0(Lf40;I)V

    return-void
.end method
