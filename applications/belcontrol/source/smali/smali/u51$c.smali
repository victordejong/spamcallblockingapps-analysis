.class public Lu51$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public final synthetic i:Lu51;


# direct methods
.method public constructor <init>(Lu51;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lu51$c;->i:Lu51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu51$c;->a:Ljava/lang/Object;

    const v0, 0x7f0a01fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lu51$c;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a00a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lu51$c;->c:Landroid/view/View;

    const v0, 0x7f0a01ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lu51$c;->d:Landroid/widget/TextView;

    const v0, 0x7f0a04af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lu51$c;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0558

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lu51$c;->e:Landroid/view/ViewGroup;

    const v0, 0x7f0a01fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060203

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f0a023a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lu51$c;->h:Landroid/widget/TextView;

    new-instance v1, Lu51$c$a;

    invoke-direct {v1, p0, p1}, Lu51$c$a;-><init>(Lu51$c;Lu51;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lu51;Landroid/view/View;Lu51$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu51$c;-><init>(Lu51;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lu51$c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu51$c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lu51$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lu51$c;->g:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lu51$c;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0167

    iget-object v2, p0, Lu51$c;->e:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lu51$c;->e:Landroid/view/ViewGroup;

    const v1, 0x7f0a05a3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lu51$c;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "Unable to find sectionHeader in inflated view. Making stub."

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu51$c;->f:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lu51$c;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lu51$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
