.class public final synthetic Lxf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/InputLayout;

.field public final synthetic b:Lcarbon/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/InputLayout;Lcarbon/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxf0;->a:Lcarbon/widget/InputLayout;

    iput-object p2, p0, Lxf0;->b:Lcarbon/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lxf0;->a:Lcarbon/widget/InputLayout;

    iget-object v1, p0, Lxf0;->b:Lcarbon/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcarbon/widget/InputLayout;->u(Lcarbon/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
