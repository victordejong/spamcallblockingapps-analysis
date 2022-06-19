.class Lcom/unknownphone/callblocker/e/c$18;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$18;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$18;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$18;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/app/Activity;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$18;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->f(Lcom/unknownphone/callblocker/e/c;)V

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
