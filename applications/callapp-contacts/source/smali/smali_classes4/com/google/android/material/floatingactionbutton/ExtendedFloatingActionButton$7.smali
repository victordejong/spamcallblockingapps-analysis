.class final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$7;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 770
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 770
    check-cast p1, Landroid/view/View;

    .line 1784
    invoke-static {p1}, Landroidx/core/view/v;->j(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 770
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    .line 2775
    invoke-static {p1}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result v0

    .line 2776
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 2777
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    .line 2778
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 2773
    invoke-static {p1, v0, v1, p2, v2}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    return-void
.end method
