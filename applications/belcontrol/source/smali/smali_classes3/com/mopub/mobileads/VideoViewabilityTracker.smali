.class public Lcom/mopub/mobileads/VideoViewabilityTracker;
.super Lcom/mopub/mobileads/VastTracker;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;,
        Lcom/mopub/mobileads/VideoViewabilityTracker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VideoViewabilityTracker$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final f:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playtime_ms"
    .end annotation
.end field

.field public final g:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percent_viewable"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VideoViewabilityTracker$Companion;-><init>(Lok1;)V

    sput-object v0, Lcom/mopub/mobileads/VideoViewabilityTracker;->Companion:Lcom/mopub/mobileads/VideoViewabilityTracker$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V
    .locals 1

    const-string v0, "content"

    invoke-static {p3, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p4, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V

    iput p1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->f:I

    iput p2, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->g:I

    return-void
.end method


# virtual methods
.method public final getPercentViewable()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->g:I

    return v0
.end method

.method public final getViewablePlaytimeMS()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->f:I

    return v0
.end method
