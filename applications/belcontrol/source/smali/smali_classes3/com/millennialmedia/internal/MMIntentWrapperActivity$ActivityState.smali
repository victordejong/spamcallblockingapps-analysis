.class public Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMIntentWrapperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityState"
.end annotation


# instance fields
.field public intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

.field public onCreateLatch:Ljava/util/concurrent/CountDownLatch;

.field public wrappedIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->wrappedIntent:Landroid/content/Intent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;)V

    return-void
.end method
