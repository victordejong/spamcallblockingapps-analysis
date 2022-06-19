.class Lcom/unknownphone/callblocker/a/a/a/c$1;
.super Ljava/lang/Object;
.source "ContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/c;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/c$1;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c$1;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c$1;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->onBackPressed()V

    .line 107
    :cond_0
    return-void
.end method
