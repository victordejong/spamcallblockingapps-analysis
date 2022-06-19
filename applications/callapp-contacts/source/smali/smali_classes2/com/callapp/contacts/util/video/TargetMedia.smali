.class public Lcom/callapp/contacts/util/video/TargetMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/video/TargetTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/video/MediaTrackFormat;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/TargetMedia;->b:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/util/video/TargetMedia;->a:Ljava/io/File;

    .line 17
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/util/video/TargetMedia;->setTracks(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getIncludedTrackCount()I
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TargetMedia;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/video/TargetTrack;

    .line 39
    iget-boolean v2, v2, Lcom/callapp/contacts/util/video/TargetTrack;->b:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setTracks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/video/MediaTrackFormat;",
            ">;)V"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/TargetMedia;->b:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/video/MediaTrackFormat;

    const/4 v1, 0x0

    .line 24
    instance-of v2, v0, Lcom/callapp/contacts/util/video/VideoTrackFormat;

    if-eqz v2, :cond_0

    .line 25
    new-instance v1, Lcom/callapp/contacts/util/video/VideoTrackFormat;

    move-object v2, v0

    check-cast v2, Lcom/callapp/contacts/util/video/VideoTrackFormat;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/video/VideoTrackFormat;-><init>(Lcom/callapp/contacts/util/video/VideoTrackFormat;)V

    .line 26
    new-instance v2, Lcom/callapp/contacts/util/video/TargetVideoTrack;

    iget v0, v0, Lcom/callapp/contacts/util/video/MediaTrackFormat;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/callapp/contacts/util/video/TargetVideoTrack;-><init>(IZZLcom/callapp/contacts/util/video/VideoTrackFormat;)V

    move-object v1, v2

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TargetMedia;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
