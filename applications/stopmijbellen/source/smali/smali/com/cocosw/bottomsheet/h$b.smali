.class public Lcom/cocosw/bottomsheet/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocosw/bottomsheet/h;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cocosw/bottomsheet/h;


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/h$b;->a:Lcom/cocosw/bottomsheet/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h$b;->a:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->t:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cocosw/bottomsheet/h$b;->a:Lcom/cocosw/bottomsheet/h;

    .line 5
    iget v0, p1, Lcom/cocosw/bottomsheet/h;->n:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/h;->c()V

    :cond_1
    return-void
.end method
