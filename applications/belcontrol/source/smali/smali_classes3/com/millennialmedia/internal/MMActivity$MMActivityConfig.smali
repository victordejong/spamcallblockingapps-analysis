.class public Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMActivityConfig"
.end annotation


# instance fields
.field private audioSource:I

.field private enterAnimationId:Ljava/lang/Integer;

.field private exitAnimationId:Ljava/lang/Integer;

.field private immersive:Z

.field private orientation:I

.field private transparent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->audioSource:I

    iput v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->orientation:I

    return-void
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->enterAnimationId:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->exitAnimationId:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->audioSource:I

    return p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->immersive:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->transparent:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->orientation:I

    return p0
.end method

.method public static synthetic access$702(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;I)I
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->orientation:I

    return p1
.end method


# virtual methods
.method public setAudioSource(I)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->audioSource:I

    return-object p0
.end method

.method public setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->immersive:Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->orientation:I

    return-object p0
.end method

.method public setTransitionAnimation(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->enterAnimationId:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->exitAnimationId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTransparent(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->transparent:Z

    return-object p0
.end method
