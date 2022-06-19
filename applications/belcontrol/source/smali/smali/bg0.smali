.class public final synthetic Lbg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/PagerTabStrip;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/PagerTabStrip;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbg0;->a:Lcarbon/widget/PagerTabStrip;

    iput p2, p0, Lbg0;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbg0;->a:Lcarbon/widget/PagerTabStrip;

    iget v1, p0, Lbg0;->b:I

    invoke-virtual {v0, v1, p1}, Lcarbon/widget/PagerTabStrip;->o(ILandroid/view/View;)V

    return-void
.end method
