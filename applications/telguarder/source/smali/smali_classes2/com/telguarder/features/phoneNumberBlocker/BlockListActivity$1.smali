.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$1;
.super Ljava/lang/Object;
.source "BlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 78
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-static {p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x41700000    # 15.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    return-void
.end method
