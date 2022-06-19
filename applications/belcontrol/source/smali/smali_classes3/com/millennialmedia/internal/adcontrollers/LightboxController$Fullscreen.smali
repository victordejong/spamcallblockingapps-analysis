.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fullscreen"
.end annotation


# instance fields
.field public imageUri:Ljava/lang/String;

.field public trackingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/utils/TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field public webContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/utils/TrackingEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->webContent:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->imageUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    return-void
.end method
