.class final Lcom/facebook/internal/FeatureManager$1;
.super Ljava/lang/Object;
.source "FeatureManager.java"

# interfaces
.implements Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/internal/FeatureManager$Callback;

.field final synthetic val$feature:Lcom/facebook/internal/FeatureManager$Feature;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FeatureManager$Callback;Lcom/facebook/internal/FeatureManager$Feature;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/facebook/internal/FeatureManager$1;->val$callback:Lcom/facebook/internal/FeatureManager$Callback;

    iput-object p2, p0, Lcom/facebook/internal/FeatureManager$1;->val$feature:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/facebook/internal/FeatureManager$1;->val$callback:Lcom/facebook/internal/FeatureManager$Callback;

    iget-object v1, p0, Lcom/facebook/internal/FeatureManager$1;->val$feature:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v1}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/FeatureManager$Callback;->onCompleted(Z)V

    return-void
.end method
