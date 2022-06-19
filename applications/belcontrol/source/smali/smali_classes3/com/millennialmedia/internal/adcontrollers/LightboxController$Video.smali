.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field public trackingEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/utils/TrackingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/utils/TrackingEvent;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    return-void
.end method
