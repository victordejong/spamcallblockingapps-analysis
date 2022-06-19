.class public final synthetic Lgz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;

    iput-object p2, p0, Lgz0;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lgz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;

    iget-object v1, p0, Lgz0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->P(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method
