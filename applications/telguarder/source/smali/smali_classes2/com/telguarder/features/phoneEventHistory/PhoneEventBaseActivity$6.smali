.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
