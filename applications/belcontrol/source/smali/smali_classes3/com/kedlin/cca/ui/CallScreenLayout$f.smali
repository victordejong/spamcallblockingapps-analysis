.class public Lcom/kedlin/cca/ui/CallScreenLayout$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$f;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$f;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->d:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    return-void
.end method
