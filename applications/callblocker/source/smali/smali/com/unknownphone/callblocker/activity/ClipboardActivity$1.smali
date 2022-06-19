.class Lcom/unknownphone/callblocker/activity/ClipboardActivity$1;
.super Ljava/lang/Object;
.source "ClipboardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/ClipboardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/ClipboardActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/ClipboardActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$1;->a:Lcom/unknownphone/callblocker/activity/ClipboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$1;->a:Lcom/unknownphone/callblocker/activity/ClipboardActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->finish()V

    .line 40
    return-void
.end method
