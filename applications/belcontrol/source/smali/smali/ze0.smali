.class public final synthetic Lze0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/DropDown$c;

.field public final synthetic b:Lcarbon/widget/DropDown$k;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/DropDown$c;Lcarbon/widget/DropDown$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lze0;->a:Lcarbon/widget/DropDown$c;

    iput-object p2, p0, Lze0;->b:Lcarbon/widget/DropDown$k;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lze0;->a:Lcarbon/widget/DropDown$c;

    iget-object v1, p0, Lze0;->b:Lcarbon/widget/DropDown$k;

    invoke-virtual {v0, v1, p1}, Lcarbon/widget/DropDown$c;->i(Lcarbon/widget/DropDown$k;Landroid/view/View;)V

    return-void
.end method
