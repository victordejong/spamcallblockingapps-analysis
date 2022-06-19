.class public final synthetic Lof0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/FloatingActionButton;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/FloatingActionButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lof0;->a:Lcarbon/widget/FloatingActionButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lof0;->a:Lcarbon/widget/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcarbon/widget/FloatingActionButton;->u(Landroid/view/View;)V

    return-void
.end method
