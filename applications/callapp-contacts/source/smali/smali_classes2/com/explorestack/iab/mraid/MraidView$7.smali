.class final Lcom/explorestack/iab/mraid/MraidView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$7;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$7;->a:Lcom/explorestack/iab/mraid/MraidView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->access$4400(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/Runnable;)V

    return-void
.end method
