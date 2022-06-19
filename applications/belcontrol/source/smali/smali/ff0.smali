.class public final synthetic Lff0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/EditText;

.field public final synthetic b:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/EditText;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lff0;->a:Lcarbon/widget/EditText;

    iput-object p2, p0, Lff0;->b:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lff0;->a:Lcarbon/widget/EditText;

    iget-object v1, p0, Lff0;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, p1, p2}, Lcarbon/widget/EditText;->B(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
