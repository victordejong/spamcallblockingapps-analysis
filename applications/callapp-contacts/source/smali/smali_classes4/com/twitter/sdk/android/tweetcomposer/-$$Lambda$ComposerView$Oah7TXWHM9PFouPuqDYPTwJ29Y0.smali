.class public final synthetic Lcom/twitter/sdk/android/tweetcomposer/-$$Lambda$ComposerView$Oah7TXWHM9PFouPuqDYPTwJ29Y0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/-$$Lambda$ComposerView$Oah7TXWHM9PFouPuqDYPTwJ29Y0;->f$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/-$$Lambda$ComposerView$Oah7TXWHM9PFouPuqDYPTwJ29Y0;->f$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {v0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->lambda$Oah7TXWHM9PFouPuqDYPTwJ29Y0(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
