.class Lcom/unknownphone/callblocker/activity/ReportActivity$8;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/ReportActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/unknownphone/callblocker/activity/ReportActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/ReportActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$8;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$8;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$8;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 367
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$8;->b:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->d(Lcom/unknownphone/callblocker/activity/ReportActivity;)V

    .line 368
    return-void
.end method
