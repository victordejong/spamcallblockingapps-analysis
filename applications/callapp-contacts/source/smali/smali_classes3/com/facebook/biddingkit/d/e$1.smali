.class final Lcom/facebook/biddingkit/d/e$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/d/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/facebook/biddingkit/d/e;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/biddingkit/d/e;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/d/e;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/facebook/biddingkit/d/e$1;->a:Lcom/facebook/biddingkit/d/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 210
    check-cast p1, [Lcom/facebook/biddingkit/d/e;

    const/4 v0, 0x0

    .line 1213
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/facebook/biddingkit/d/f;->a(Lcom/facebook/biddingkit/d/e;)V

    const/4 p1, 0x0

    return-object p1
.end method
