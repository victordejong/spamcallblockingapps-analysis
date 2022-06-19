.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$a;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->A(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
