.class public Lcom/millennialmedia/NativeAd$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/NativeAd$5;

.field public final synthetic val$localNativeListener:Lcom/millennialmedia/NativeAd$NativeListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd$5;Lcom/millennialmedia/NativeAd$NativeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$5$1;->this$1:Lcom/millennialmedia/NativeAd$5;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$5$1;->val$localNativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$5$1;->val$localNativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$5$1;->this$1:Lcom/millennialmedia/NativeAd$5;

    iget-object v2, v1, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v3, v1, Lcom/millennialmedia/NativeAd$5;->val$componentName:Lcom/millennialmedia/NativeAd$ComponentName;

    iget v1, v1, Lcom/millennialmedia/NativeAd$5;->val$index:I

    invoke-interface {v0, v2, v3, v1}, Lcom/millennialmedia/NativeAd$NativeListener;->onClicked(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$ComponentName;I)V

    return-void
.end method
