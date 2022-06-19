.class Lcom/rey/material/app/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/rey/material/app/a;


# direct methods
.method constructor <init>(Lcom/rey/material/app/a;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/a$a;->b:Lcom/rey/material/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/a$a;->b:Lcom/rey/material/app/a;

    iget-object v0, v0, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/rey/material/app/Dialog;->C:I

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/rey/material/app/a$a;->b:Lcom/rey/material/app/a;

    iget-object v0, p1, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    invoke-interface {v0, p1}, Lcom/rey/material/app/a$b;->d(Lcom/rey/material/app/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/rey/material/app/Dialog;->D:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/rey/material/app/a$a;->b:Lcom/rey/material/app/a;

    iget-object v0, p1, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    invoke-interface {v0, p1}, Lcom/rey/material/app/a$b;->a(Lcom/rey/material/app/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/rey/material/app/Dialog;->E:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/rey/material/app/a$a;->b:Lcom/rey/material/app/a;

    iget-object v0, p1, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    invoke-interface {v0, p1}, Lcom/rey/material/app/a$b;->b(Lcom/rey/material/app/a;)V

    :cond_3
    :goto_0
    return-void
.end method
