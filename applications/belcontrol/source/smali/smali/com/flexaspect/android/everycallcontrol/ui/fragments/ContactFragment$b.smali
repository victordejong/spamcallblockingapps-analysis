.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iget-object v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    return-void
.end method
