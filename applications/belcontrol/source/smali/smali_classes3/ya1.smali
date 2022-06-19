.class public final synthetic Lya1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lya1;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lya1;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->e0(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
