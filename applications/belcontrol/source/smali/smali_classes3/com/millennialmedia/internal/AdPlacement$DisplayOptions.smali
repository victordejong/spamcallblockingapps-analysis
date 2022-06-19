.class public Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayOptions"
.end annotation


# instance fields
.field private enterAnimationId:Ljava/lang/Integer;

.field private exitAnimationId:Ljava/lang/Integer;

.field private immersive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->immersive:Z

    return-void
.end method


# virtual methods
.method public getEnterAnimationId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->enterAnimationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExitAnimationId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->exitAnimationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public isImmersive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->immersive:Z

    return v0
.end method

.method public setImmersive(Z)Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->immersive:Z

    return-object p0
.end method

.method public setTransitionAnimation(II)Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->enterAnimationId:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->exitAnimationId:Ljava/lang/Integer;

    return-object p0
.end method
