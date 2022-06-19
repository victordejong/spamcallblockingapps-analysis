.class Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setIconClickUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

.field final synthetic val$iconClickUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$3;->this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$3;->val$iconClickUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 110
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$3;->val$iconClickUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 115
    invoke-static {}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error on click content info text"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
