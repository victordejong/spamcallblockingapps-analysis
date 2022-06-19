.class public final synthetic Laf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/DropDown$d;

.field public final synthetic b:Lcarbon/widget/DropDown$e;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/DropDown$d;Lcarbon/widget/DropDown$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf0;->a:Lcarbon/widget/DropDown$d;

    iput-object p2, p0, Laf0;->b:Lcarbon/widget/DropDown$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laf0;->a:Lcarbon/widget/DropDown$d;

    iget-object v1, p0, Laf0;->b:Lcarbon/widget/DropDown$e;

    invoke-virtual {v0, v1, p1}, Lcarbon/widget/DropDown$d;->i(Lcarbon/widget/DropDown$e;Landroid/view/View;)V

    return-void
.end method
