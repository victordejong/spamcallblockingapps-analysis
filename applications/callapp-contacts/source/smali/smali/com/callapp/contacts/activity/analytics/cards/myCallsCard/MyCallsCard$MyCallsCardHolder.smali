.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallsCardHolder"
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Landroid/view/View;)V
    .locals 12

    .line 203
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->c:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->d:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->a:Ljava/util/Map;

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->b:Ljava/util/Map;

    .line 204
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    const v3, 0x7f0a081c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    const v3, 0x7f0a081d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    const v3, 0x7f0a0632

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f0a0932

    .line 208
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0933

    .line 209
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0931

    .line 210
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0601ec

    .line 211
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0a08b5

    .line 215
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a08b6

    .line 216
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a08b2

    .line 217
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0601cc

    .line 219
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v10, 0x7f12064e

    .line 223
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f120650

    .line 224
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f12064d

    .line 225
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f12064f

    .line 227
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget-object v10, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 242
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 243
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 244
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsSpaceDecoration;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsSpaceDecoration;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const/4 v1, 0x1

    .line 245
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0a092f

    .line 248
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->e:Landroid/widget/TextView;

    .line 249
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a08b1

    .line 250
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->f:Landroid/widget/TextView;

    .line 251
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0333

    .line 252
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->g:Landroid/view/View;

    const p2, 0x7f0600f3

    .line 253
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->f:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method
