.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightboxAd"
.end annotation


# instance fields
.field public fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

.field public inline:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;

.field public video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->inline:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    return-void
.end method
