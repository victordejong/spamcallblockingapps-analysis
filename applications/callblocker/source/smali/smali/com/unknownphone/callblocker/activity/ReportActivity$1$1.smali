.class Lcom/unknownphone/callblocker/activity/ReportActivity$1$1;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/ReportActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/ReportActivity$1;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/ReportActivity$1;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$1$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity$1;

    iget-object v0, v0, Lcom/unknownphone/callblocker/activity/ReportActivity$1;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->c(Lcom/unknownphone/callblocker/activity/ReportActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 127
    return-void
.end method
