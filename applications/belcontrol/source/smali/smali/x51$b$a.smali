.class public Lx51$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx51$b;-><init>(Lx51;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx51$b;


# direct methods
.method public constructor <init>(Lx51$b;Lx51;)V
    .locals 0

    iput-object p1, p0, Lx51$b$a;->a:Lx51$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lx51$b$a;->a:Lx51$b;

    iget-object p1, p1, Lx51$b;->c:Lx51;

    invoke-static {p1}, Lx51;->a(Lx51;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lx51$b$a;->a:Lx51$b;

    iget-wide v0, v0, Lx51$b;->a:J

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lx51$b$a;->a:Lx51$b;

    iget-object p1, p1, Lx51$b;->c:Lx51;

    invoke-static {p1}, Lx51;->a(Lx51;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lx51$b$a;->a:Lx51$b;

    iget-wide v0, v0, Lx51$b;->a:J

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lx51$b$a;->a:Lx51$b;

    iget-object p1, p1, Lx51$b;->c:Lx51;

    invoke-static {p1}, Lx51;->a(Lx51;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lx51$b$a;->a:Lx51$b;

    iget-object p1, p1, Lx51$b;->c:Lx51;

    invoke-static {p1}, Lx51;->a(Lx51;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lx51$b$a;->a:Lx51$b;

    iget-object v0, v0, Lx51$b;->c:Lx51;

    invoke-static {v0}, Lx51;->a(Lx51;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lx51$b$a;->a:Lx51$b;

    iget-wide v1, v1, Lx51$b;->a:J

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1102f1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lx51$b$a;->a:Lx51$b;

    iget-object p1, p1, Lx51$b;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    sget-object p1, Lr71$a;->f1:Lr71$a;

    iget-object v0, p0, Lx51$b$a;->a:Lx51$b;

    invoke-static {v0}, Lx51$b;->a(Lx51$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->o(Ljava/lang/String;)V

    return-void
.end method
