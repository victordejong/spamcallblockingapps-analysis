.class Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Frame"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->a:I

    .line 118
    iput-wide p2, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->a:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)I
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->a:I

    return v0
.end method
