.class Lcom/unknownphone/callblocker/a/a/a/e$3;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/e;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/e;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/e$3;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$3;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->r()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$3;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->onBackPressed()V

    .line 114
    :cond_0
    return-void
.end method
