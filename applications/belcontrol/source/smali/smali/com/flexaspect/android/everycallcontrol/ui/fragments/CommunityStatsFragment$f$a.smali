.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0378

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0a037b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->b:Landroid/widget/TextView;

    const p1, 0x7f0a0379

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0397

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;->d:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;Landroid/view/View;Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;Landroid/view/View;)V

    return-void
.end method
