.class public final synthetic Lxg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg0;->a:Lcarbon/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lxg0;->a:Lcarbon/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcarbon/widget/Toolbar;->m(Landroid/view/View;)V

    return-void
.end method
