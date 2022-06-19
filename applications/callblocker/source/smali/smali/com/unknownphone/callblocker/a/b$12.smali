.class Lcom/unknownphone/callblocker/a/b$12;
.super Landroidx/recyclerview/widget/RecyclerView$c;
.source "BlockedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$12;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$12;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->c(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$12;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$12;->a:Lcom/unknownphone/callblocker/a/b;

    .line 153
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->b(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 152
    :goto_0
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
