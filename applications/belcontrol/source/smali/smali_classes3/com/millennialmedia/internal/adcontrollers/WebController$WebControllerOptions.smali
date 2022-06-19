.class public Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebControllerOptions"
.end annotation


# instance fields
.field public final enableEnhancedAdControl:Z

.field public final enableMoat:Z

.field public final immersive:Z

.field public final interstitial:Z

.field public final twoPart:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;-><init>(ZZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;-><init>(ZZZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->interstitial:Z

    iput-boolean p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableMoat:Z

    iput-boolean p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableEnhancedAdControl:Z

    iput-boolean p4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->twoPart:Z

    iput-boolean p5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->immersive:Z

    return-void
.end method
