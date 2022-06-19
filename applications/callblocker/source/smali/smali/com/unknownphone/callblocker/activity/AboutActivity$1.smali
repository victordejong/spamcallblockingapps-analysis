.class Lcom/unknownphone/callblocker/activity/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/AboutActivity;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/AboutActivity$1;->a:Lcom/unknownphone/callblocker/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/AboutActivity$1;->a:Lcom/unknownphone/callblocker/activity/AboutActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/AboutActivity;->finish()V

    .line 24
    return-void
.end method
