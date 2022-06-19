.class public Lv51$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/CompoundButton;

.field public b:I

.field public final synthetic c:Lv51;


# direct methods
.method public constructor <init>(Lv51;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lv51$b;->c:Lv51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a02e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lv51$b;->a:Landroid/widget/CompoundButton;

    new-instance v1, Lv51$b$a;

    invoke-direct {v1, p0, p1}, Lv51$b$a;-><init>(Lv51$b;Lv51;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lv51;Landroid/view/View;Lv51$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv51$b;-><init>(Lv51;Landroid/view/View;)V

    return-void
.end method
