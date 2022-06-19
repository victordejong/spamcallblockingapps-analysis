.class public Lcom/kedlin/cca/ui/help/overlay/recent_calls/HelpOverlayRecentCalls_PT;
.super Lcom/kedlin/cca/ui/help/overlay/recent_calls/HelpOverlayRecentCalls;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/ui/help/overlay/recent_calls/HelpOverlayRecentCalls;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Lcom/kedlin/cca/ui/HelpOverlayView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Lrb1;->v()Lsb1;

    move-result-object v0

    invoke-virtual {v0}, Lsb1;->f()Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object v2

    const v0, 0x7f11039f

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/kedlin/cca/ui/HelpOverlayView$h;->j:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v6, 0x10

    const/16 v7, 0x8

    move-object v1, p2

    move-object v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->o(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    invoke-virtual {p1}, Lrb1;->v()Lsb1;

    move-result-object v1

    sget-object v2, Lsb1$c;->m:Lsb1$c;

    invoke-virtual {v1, v2}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    const v1, 0x7f110390

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v9, -0xa

    const/16 v10, 0x20

    move-object v4, p2

    move-object v7, p3

    move-object v8, v0

    invoke-virtual/range {v4 .. v10}, Lcom/kedlin/cca/ui/HelpOverlayView;->j(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    invoke-virtual {p1}, Lrb1;->v()Lsb1;

    move-result-object v1

    sget-object v2, Lsb1$c;->k:Lsb1$c;

    invoke-virtual {v1, v2}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    const v1, 0x7f1103a2

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-virtual/range {v4 .. v10}, Lcom/kedlin/cca/ui/HelpOverlayView;->j(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    instance-of v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lrb1;->v()Lsb1;

    move-result-object v1

    sget-object v2, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {v1, v2}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f1103a9

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/kedlin/cca/ui/HelpOverlayView$h;->c:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v8, 0xe

    const/16 v9, 0x8

    const/16 v10, 0x10

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/kedlin/cca/ui/HelpOverlayView;->k(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;III)V

    :cond_0
    if-eqz p4, :cond_1

    const v1, 0x7f0a0498

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f1103a1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/kedlin/cca/ui/HelpOverlayView$h;->d:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/kedlin/cca/ui/HelpOverlayView;->k(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;III)V

    if-nez v0, :cond_1

    const v0, 0x7f0a0645

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const p4, 0x7f110395

    invoke-virtual {p1, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/kedlin/cca/ui/HelpOverlayView$h;->b:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->m(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    :cond_1
    return-void
.end method
