.class public Lcarbon/widget/DropDown$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/DropDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/DropDown;


# direct methods
.method public constructor <init>(Lcarbon/widget/DropDown;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/DropDown$a;->a:Lcarbon/widget/DropDown;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcarbon/widget/DropDown$a;->a:Lcarbon/widget/DropDown;

    invoke-virtual {p1}, Lcarbon/widget/DropDown;->O()V

    const/4 p1, 0x1

    return p1
.end method
