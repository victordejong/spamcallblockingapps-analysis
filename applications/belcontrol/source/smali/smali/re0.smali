.class public final synthetic Lre0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/BottomBar;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/BottomBar;Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lre0;->a:Lcarbon/widget/BottomBar;

    iput-object p2, p0, Lre0;->b:Landroid/view/View;

    iput-object p3, p0, Lre0;->c:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lre0;->a:Lcarbon/widget/BottomBar;

    iget-object v1, p0, Lre0;->b:Landroid/view/View;

    iget-object v2, p0, Lre0;->c:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2, p1}, Lcarbon/widget/BottomBar;->y(Landroid/view/View;Landroid/view/MenuItem;Landroid/view/View;)V

    return-void
.end method
