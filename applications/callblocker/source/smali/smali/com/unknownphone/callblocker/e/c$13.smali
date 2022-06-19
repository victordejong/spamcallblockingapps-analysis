.class Lcom/unknownphone/callblocker/e/c$13;
.super Landroidx/recyclerview/widget/RecyclerView$c;
.source "HomeFragment.java"


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
    .line 198
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$13;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$13;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->d(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$13;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 203
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
