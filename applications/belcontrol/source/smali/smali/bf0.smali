.class public final synthetic Lbf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/DropDown;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/DropDown;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbf0;->a:Lcarbon/widget/DropDown;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lbf0;->a:Lcarbon/widget/DropDown;

    invoke-virtual {v0}, Lcarbon/widget/DropDown;->M()V

    return-void
.end method
