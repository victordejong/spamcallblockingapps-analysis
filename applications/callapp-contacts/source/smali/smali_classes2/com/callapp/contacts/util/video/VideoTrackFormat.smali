.class public Lcom/callapp/contacts/util/video/VideoTrackFormat;
.super Lcom/callapp/contacts/util/video/MediaTrackFormat;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/video/MediaTrackFormat;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/util/video/VideoTrackFormat;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/video/MediaTrackFormat;-><init>(Lcom/callapp/contacts/util/video/MediaTrackFormat;)V

    .line 21
    iget v0, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->c:I

    iput v0, p0, Lcom/callapp/contacts/util/video/VideoTrackFormat;->c:I

    .line 22
    iget v0, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->d:I

    iput v0, p0, Lcom/callapp/contacts/util/video/VideoTrackFormat;->d:I

    .line 23
    iget v0, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->e:I

    iput v0, p0, Lcom/callapp/contacts/util/video/VideoTrackFormat;->e:I

    .line 24
    iget v0, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->f:I

    iput v0, p0, Lcom/callapp/contacts/util/video/VideoTrackFormat;->f:I

    .line 25
    iget v0, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->g:I

    iput v0, p0, Lcom/callapp/contacts/util/video/VideoTrackFormat;->g:I

    .line 26
    iget-wide v0, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->h:J

    iput-wide v0, p0, Lcom/callapp/contacts/util/video/VideoTrackFormat;->h:J

    .line 27
    iget p1, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->i:I

    iput p1, p0, Lcom/callapp/contacts/util/video/VideoTrackFormat;->i:I

    return-void
.end method
