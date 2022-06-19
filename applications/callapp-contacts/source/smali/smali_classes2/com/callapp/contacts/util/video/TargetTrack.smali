.class public Lcom/callapp/contacts/util/video/TargetTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Lcom/callapp/contacts/util/video/MediaTrackFormat;


# direct methods
.method public constructor <init>(IZZLcom/callapp/contacts/util/video/MediaTrackFormat;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/callapp/contacts/util/video/TargetTrack;->a:I

    .line 13
    iput-boolean p2, p0, Lcom/callapp/contacts/util/video/TargetTrack;->b:Z

    .line 14
    iput-boolean p3, p0, Lcom/callapp/contacts/util/video/TargetTrack;->c:Z

    .line 15
    iput-object p4, p0, Lcom/callapp/contacts/util/video/TargetTrack;->d:Lcom/callapp/contacts/util/video/MediaTrackFormat;

    return-void
.end method
