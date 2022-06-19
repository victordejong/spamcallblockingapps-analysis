.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->onStart()V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->g:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;

    return-void
.end method
