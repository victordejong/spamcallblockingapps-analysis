.class final Lio/bidmachine/core/Utils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/core/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$postMethod:Ljava/lang/Runnable;

.field final synthetic val$validUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lio/bidmachine/core/Utils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/core/Utils$3;->val$validUrl:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/core/Utils$3;->val$postMethod:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 595
    iget-object v0, p0, Lio/bidmachine/core/Utils$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/core/Utils$3;->val$validUrl:Ljava/lang/String;

    invoke-static {v1}, Lio/bidmachine/core/Utils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lio/bidmachine/core/Utils$3;->val$postMethod:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 597
    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
