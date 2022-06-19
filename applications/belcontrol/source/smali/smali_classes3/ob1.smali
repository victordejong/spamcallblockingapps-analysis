.class public final synthetic Lob1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;


# direct methods
.method public synthetic constructor <init>(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob1;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lob1;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->d(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
