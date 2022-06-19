.class public Lcom/millennialmedia/internal/MMActivity$ActivityState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityState"
.end annotation


# instance fields
.field public activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

.field public configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

.field public onCreateLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/MMActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    return-void
.end method
