.class public final synthetic Lhb1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb1;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lhb1;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->g0(Landroid/view/View;)V

    return-void
.end method
