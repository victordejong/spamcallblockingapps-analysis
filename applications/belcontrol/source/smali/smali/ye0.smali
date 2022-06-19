.class public final synthetic Lye0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/Chip;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/Chip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lye0;->a:Lcarbon/widget/Chip;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lye0;->a:Lcarbon/widget/Chip;

    invoke-virtual {v0, p1}, Lcarbon/widget/Chip;->u(Landroid/view/View;)V

    return-void
.end method
