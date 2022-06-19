.class public Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCallsHolder"
.end annotation


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/ImageView;

.field D:Landroid/widget/LinearLayout;

.field E:Landroid/widget/LinearLayout;

.field F:Landroid/widget/LinearLayout;

.field G:Landroid/widget/TextView;

.field H:Landroid/widget/TextView;

.field I:Landroid/widget/LinearLayout;

.field final synthetic J:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/ImageView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/TextView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;Landroid/view/View;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->J:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    .line 182
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01b3

    .line 183
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->r:Landroid/widget/TextView;

    const p1, 0x7f0a0446

    .line 184
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->s:Landroid/widget/ImageView;

    const p1, 0x7f0a035d

    .line 185
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->v:Landroid/widget/TextView;

    const p1, 0x7f0a035c

    .line 186
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->w:Landroid/widget/TextView;

    const p1, 0x7f0a035b

    .line 187
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->t:Landroid/widget/TextView;

    const p1, 0x7f0a035a

    .line 188
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->u:Landroid/widget/TextView;

    const p1, 0x7f0a0360

    .line 189
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->x:Landroid/widget/TextView;

    const p1, 0x7f0a035f

    .line 190
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->y:Landroid/widget/TextView;

    const p1, 0x7f0a0362

    .line 191
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->z:Landroid/widget/TextView;

    const p1, 0x7f0a0361

    .line 192
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->A:Landroid/widget/TextView;

    const p1, 0x7f0a0448

    .line 193
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->B:Landroid/widget/TextView;

    const p1, 0x7f0a0449

    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->C:Landroid/widget/ImageView;

    const p1, 0x7f0a01b2

    .line 195
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->D:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0447

    .line 196
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->F:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0135

    .line 197
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->E:Landroid/widget/LinearLayout;

    const p1, 0x7f0a08df

    .line 198
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->G:Landroid/widget/TextView;

    const p1, 0x7f0a062d

    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->H:Landroid/widget/TextView;

    const p1, 0x7f0a035e

    .line 200
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->I:Landroid/widget/LinearLayout;

    return-void
.end method
