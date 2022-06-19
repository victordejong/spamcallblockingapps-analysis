.class public Lw51$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lw51;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw51$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw51$b;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lw51;->a(Lw51;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a030a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lw51$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lw51;Landroid/view/View;Lw51$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw51$b;-><init>(Lw51;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lw51$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lw51$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(Lw51$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lw51$b;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic c(Lw51$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lw51$b;->b:Landroid/widget/TextView;

    return-object p0
.end method
