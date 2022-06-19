.class Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;
.super Ljava/lang/Object;
.source "ArcMenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->addArcMenuItemsWithListeners(Landroid/content/Context;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

.field final synthetic val$arcMenuItem:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;->this$0:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;->val$arcMenuItem:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;->this$0:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->access$000(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;)Lcom/capricorn/ArcMenu;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/capricorn/ArcMenu;->closeArcMenu(Z)V

    .line 89
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;->this$0:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->access$100(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;->this$0:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->access$100(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;->val$arcMenuItem:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    invoke-interface {p1, v0}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;->onArcMenuItemClicked(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;)V

    :cond_0
    return-void
.end method
