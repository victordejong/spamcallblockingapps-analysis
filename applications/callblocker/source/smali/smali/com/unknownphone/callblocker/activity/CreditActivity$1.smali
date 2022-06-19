.class Lcom/unknownphone/callblocker/activity/CreditActivity$1;
.super Ljava/lang/Object;
.source "CreditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/CreditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/CreditActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/CreditActivity;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/CreditActivity$1;->a:Lcom/unknownphone/callblocker/activity/CreditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/CreditActivity$1;->a:Lcom/unknownphone/callblocker/activity/CreditActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/CreditActivity;->finish()V

    .line 20
    return-void
.end method
