.class public Lcom/millennialmedia/internal/utils/VideoTrackingEvent;
.super Lcom/millennialmedia/internal/utils/TrackingEvent;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoTrackingEvent"


# instance fields
.field public position:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/utils/TrackingEvent;I)V
    .locals 1

    iget-object v0, p1, Lcom/millennialmedia/internal/utils/TrackingEvent;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/millennialmedia/internal/utils/TrackingEvent;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/millennialmedia/internal/utils/VideoTrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/utils/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/millennialmedia/internal/utils/VideoTrackingEvent;->position:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/millennialmedia/internal/utils/VideoTrackingEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
