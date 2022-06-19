.class Lcom/callerid/block/mvc/controller/ContactActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/ContactActivity;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/ContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/util/d0;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->R(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/util/d0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->T(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->U(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "call_announcer_show"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    const v0, 0x7f090194

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    const v1, 0x7f090489

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    const v2, 0x7f0903c7

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/ContactActivity;->V(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->V(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/callerid/block/util/d0;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/d0;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$g;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/util/d0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->s(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    :cond_0
    return-void
.end method
