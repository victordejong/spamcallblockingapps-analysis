.class public Lcarbon/beta/MarshmallowEditText$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/beta/MarshmallowEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcarbon/beta/MarshmallowEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
