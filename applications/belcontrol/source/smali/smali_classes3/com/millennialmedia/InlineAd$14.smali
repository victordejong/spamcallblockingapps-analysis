.class public Lcom/millennialmedia/InlineAd$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->onAbortFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InlineAd;

.field public final synthetic val$localInlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$14;->this$0:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$14;->val$localInlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$14;->val$localInlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$14;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAbortListener;->onAbortFailed(Lcom/millennialmedia/InlineAd;)V

    return-void
.end method
