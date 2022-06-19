.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;,
        Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;,
        Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;,
        Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;,
        Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;,
        Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\u0018\u0000 +2\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001:\u0006)*+,-.B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001c\u0010\u0016\u001a\u00020\u00112\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u001c\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rH\u0016J\u0014\u0010\u001c\u001a\u00020\u00112\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001dJP\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020 2\u0006\u0010(\u001a\u00020\"H\u0002R*\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006/"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;",
        "()V",
        "items",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
        "Lkotlin/collections/ArrayList;",
        "getItems",
        "()Ljava/util/ArrayList;",
        "setItems",
        "(Ljava/util/ArrayList;)V",
        "getItemCount",
        "",
        "getItemViewType",
        "position",
        "handleDuration",
        "",
        "item",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
        "binding",
        "Landroidx/viewbinding/ViewBinding;",
        "onBindViewHolder",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "replaceItems",
        "",
        "setDurationText",
        "showDay",
        "",
        "day",
        "",
        "showHour",
        "hour",
        "showMin",
        "min",
        "showSec",
        "sec",
        "BaseViewHolder",
        "CallDurationViewHolder",
        "Companion",
        "FavoritePeopleViewHolder",
        "NumberOfCallsViewHolder",
        "ProfilePictureViewHolder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Landroidx/m/a;ZJZJZJZJ)V
    .locals 18

    move-object/from16 v0, p0

    .line 184
    instance-of v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    const-string v2, "s"

    const-string v3, "m"

    const-string v4, "h"

    const-string v5, "d"

    const-string v6, "binding.durationSecTime"

    const-string v7, "binding.durationSec"

    const-string v8, "binding.durationMinTime"

    const-string v9, "binding.durationMin"

    const-string v10, "binding.durationHourTime"

    const-string v11, "binding.durationHour"

    const-string v12, "binding.durationDayTime"

    const-string v13, "binding.durationDay"

    const/4 v14, 0x0

    const/16 v15, 0x8

    const v16, 0x7f0601ec

    const v17, 0x7f0601cc

    if-eqz v1, :cond_4

    .line 185
    check-cast v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->c:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->d:Landroid/widget/TextView;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->d:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->e:Landroid/widget/TextView;

    invoke-static {v1, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->e:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->f:Landroid/widget/TextView;

    invoke-static {v1, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->f:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->g:Landroid/widget/TextView;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->g:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->h:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->h:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->i:Landroid/widget/TextView;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->i:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->j:Landroid/widget/TextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->j:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p10, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 210
    :goto_0
    iget-object v2, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->i:Landroid/widget/TextView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v2, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->j:Landroid/widget/TextView;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 214
    :goto_1
    iget-object v2, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->e:Landroid/widget/TextView;

    invoke-static {v2, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v2, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->f:Landroid/widget/TextView;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p7, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    .line 218
    :goto_2
    iget-object v2, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->h:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v2, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->g:Landroid/widget/TextView;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v14, 0x8

    .line 222
    :goto_3
    iget-object v1, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->d:Landroid/widget/TextView;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v0, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 226
    :cond_4
    instance-of v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    if-eqz v1, :cond_9

    .line 227
    check-cast v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->b:Landroid/widget/TextView;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->b:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->c:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->d:Landroid/widget/TextView;

    invoke-static {v1, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->d:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->e:Landroid/widget/TextView;

    invoke-static {v1, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->e:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->f:Landroid/widget/TextView;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->f:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->g:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->g:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->h:Landroid/widget/TextView;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->h:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->i:Landroid/widget/TextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->i:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p10, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    .line 252
    :goto_4
    iget-object v2, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->h:Landroid/widget/TextView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v2, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->i:Landroid/widget/TextView;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_6

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    const/16 v1, 0x8

    .line 256
    :goto_5
    iget-object v2, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->d:Landroid/widget/TextView;

    invoke-static {v2, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v2, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->e:Landroid/widget/TextView;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p7, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    const/16 v1, 0x8

    .line 260
    :goto_6
    iget-object v2, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->g:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v2, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->f:Landroid/widget/TextView;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    const/16 v14, 0x8

    .line 264
    :goto_7
    iget-object v1, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->b:Landroid/widget/TextView;

    invoke-static {v0, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private static a(Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;Landroidx/m/a;)V
    .locals 28

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getCallTimeDuration()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    rem-int/lit8 v0, v0, 0x3c

    int-to-long v10, v0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getCallTimeDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    rem-int/lit8 v0, v0, 0x3c

    int-to-long v13, v0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getCallTimeDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v1, v0, 0xe10

    :cond_2
    int-to-long v0, v1

    const-wide/16 v2, 0x63

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    const-wide/16 v2, 0x18

    .line 157
    div-long v6, v0, v2

    .line 158
    rem-long/2addr v0, v2

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    cmp-long v2, v10, v4

    if-nez v2, :cond_4

    cmp-long v2, v13, v4

    if-nez v2, :cond_4

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const-wide/16 v23, 0x0

    const/16 v25, 0x1

    const-wide/16 v26, 0x0

    move-object/from16 v15, p1

    .line 163
    invoke-static/range {v15 .. v27}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Landroidx/m/a;ZJZJZJZJ)V

    return-void

    :cond_4
    const-wide/16 v2, 0x1

    cmp-long v4, v6, v2

    if-ltz v4, :cond_5

    const/4 v3, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-wide v4, v6

    move v6, v8

    move-wide v7, v0

    .line 166
    invoke-static/range {v2 .. v14}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Landroidx/m/a;ZJZJZJZJ)V

    return-void

    :cond_5
    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-wide v4, v6

    move v6, v8

    move-wide v7, v0

    .line 169
    invoke-static/range {v2 .. v14}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Landroidx/m/a;ZJZJZJZJ)V

    return-void

    :cond_6
    cmp-long v4, v10, v2

    if-ltz v4, :cond_7

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-object/from16 v2, p1

    move-wide v4, v6

    move v6, v8

    move-wide v7, v0

    .line 172
    invoke-static/range {v2 .. v14}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Landroidx/m/a;ZJZJZJZJ)V

    return-void

    :cond_7
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object/from16 v2, p1

    move-wide v4, v6

    move v6, v8

    move-wide v7, v0

    .line 174
    invoke-static/range {v2 .. v14}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Landroidx/m/a;ZJZJZJZJ)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->b:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->getType()I

    move-result p1

    return p1
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 17

    .line 31
    move-object/from16 v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;

    const-string v1, "holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 1394
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->b:Ljava/util/ArrayList;

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "items[position]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;

    .line 1396
    instance-of v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

    const-string v4, "binding.separatorFavorite"

    const-string v5, "binding.contactPhone"

    const-string v6, "binding.leftText"

    const v7, 0x7f060110

    const-string v8, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.progressGraph.data.FavoriteCallersData"

    const v10, 0x7f0803cf

    const v11, 0x7f0601ec

    const-string v12, "item"

    const v13, 0x7f0601cc

    const/4 v14, 0x1

    const-string v15, "binding.progressBar"

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactImage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2106
    iget-object v8, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v8, v8, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->k:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 2107
    new-instance v12, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v12, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 2371
    iput-boolean v14, v12, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 2449
    iput-boolean v14, v12, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 2107
    invoke-virtual {v8, v12}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 2108
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v8, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    if-nez v8, :cond_2

    .line 2110
    :cond_0
    move-object v3, v0

    check-cast v3, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

    .line 2111
    iget-object v3, v3, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->k:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 2112
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2113
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 2114
    invoke-virtual {v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    goto :goto_0

    .line 2116
    :cond_1
    new-instance v8, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v8, v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 2121
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;

    invoke-direct {v8, v0, v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;)V

    check-cast v8, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2126
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->l:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getMaxProgress()F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setMax(F)V

    .line 2127
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->l:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressBackgroundColor(I)V

    .line 2128
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->j:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2129
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->j:Landroid/widget/TextView;

    invoke-static {v11}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2130
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->l:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getColor()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    .line 2131
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->a:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactPhone()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->a:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2134
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->l:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getProgress()Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(F)V

    .line 2135
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    check-cast v3, Landroidx/m/a;

    .line 3031
    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;Landroidx/m/a;)V

    .line 2137
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getShowSeparator()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2138
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v2, v2, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->m:Landroid/view/View;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2139
    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->r:Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    iget-object v0, v0, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->m:Landroid/view/View;

    const v2, 0x7f0600f3

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void

    .line 1397
    :cond_4
    instance-of v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;

    const v16, 0x7f1204c9

    if-eqz v3, :cond_b

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;

    const-string v3, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.progressGraph.data.NumberOfCallsProgressBarData"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3050
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->a:Landroid/widget/TextView;

    const-string v4, "binding.LeftTitle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getLeftTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3051
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->a:Landroid/widget/TextView;

    invoke-static {v11}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3052
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->f:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getProgress()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(F)V

    .line 3053
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->f:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressBackgroundColor(I)V

    .line 3054
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->f:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    .line 3055
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->d:Landroid/widget/TextView;

    const-string v4, "binding.numberOfCalls"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getNumberOfCalls()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3056
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->d:Landroid/widget/TextView;

    invoke-static {v11}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3058
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getArrowResource()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3059
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v5, v5, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3060
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->b:Landroid/widget/ImageView;

    invoke-static {v13}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3062
    :cond_5
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    const-string v5, "binding.changeValue"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v6, v14, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getChangeValue()Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%.0f%%"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3063
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3065
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getShowSeparator()Z

    move-result v3

    const-string v6, "binding.separatorCalls"

    const/4 v7, 0x4

    if-eqz v3, :cond_6

    .line 3066
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->g:Landroid/view/View;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3067
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->g:Landroid/view/View;

    const v6, 0x7f0600f3

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 3069
    :cond_6
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->g:Landroid/view/View;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3071
    :goto_1
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getShowTotal()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3072
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->d:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 3074
    :cond_7
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->d:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3076
    :goto_2
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getShowProgress()Z

    move-result v3

    const-string v4, "binding.arrow"

    if-eqz v3, :cond_8

    .line 3077
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->b:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3078
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 3080
    :cond_8
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->b:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3081
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3084
    :goto_3
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->isEmptyState()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3085
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->b:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3086
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3087
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3088
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const-string v8, "CallAppApplication.get()"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070184

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3091
    :cond_9
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->getChangeValue()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Float;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3092
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v2, v2, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->b:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3093
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v2, v2, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3094
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v2, v2, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1204c7

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3095
    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;->r:Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    iget-object v0, v0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-string v3, "CallAppApplication.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_a
    return-void

    .line 1398
    :cond_b
    instance-of v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;

    if-eqz v3, :cond_f

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;

    const-string v3, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.progressGraph.data.ProfilePictureProgressBarData"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3277
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

    invoke-virtual {v3}, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->getRoot()Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    move-result-object v3

    const v4, 0x7f0a06ea

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 3278
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->getContactImage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 3280
    new-instance v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v5, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 3371
    iput-boolean v14, v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 3449
    iput-boolean v14, v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 3280
    invoke-virtual {v3, v5}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 3281
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_e

    .line 3285
    :cond_c
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->getContactName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3286
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 3287
    invoke-virtual {v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    goto :goto_4

    .line 3289
    :cond_d
    new-instance v4, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v4, v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 3293
    :cond_e
    :goto_4
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder$bind$3;

    invoke-direct {v4, v0, v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder$bind$3;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3298
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->a:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->getMaxProgress()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->setMax(F)V

    .line 3299
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->a:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->getColors()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->setProgressColors([I)V

    .line 3301
    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->a:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    invoke-static {v0, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->getProgress()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->setProgress(F)V

    return-void

    .line 1399
    :cond_f
    instance-of v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;

    if-eqz v3, :cond_16

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;

    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4309
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactImage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 4310
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v7, v7, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->n:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 4311
    new-instance v8, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v8, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 4371
    iput-boolean v14, v8, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 4449
    iput-boolean v14, v8, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 4311
    invoke-virtual {v7, v8}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 4312
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    if-nez v7, :cond_12

    .line 4314
    :cond_10
    move-object v3, v0

    check-cast v3, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;

    .line 4315
    iget-object v3, v3, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->n:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 4316
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4317
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 4318
    invoke-virtual {v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    goto :goto_5

    .line 4320
    :cond_11
    new-instance v7, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v7, v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 4325
    :cond_12
    :goto_5
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->itemView:Landroid/view/View;

    new-instance v7, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder$bind$3;

    invoke-direct {v7, v0, v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder$bind$3;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4330
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->k:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactName()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4331
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->k:Landroid/widget/TextView;

    invoke-static {v11}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4333
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->a:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactPhone()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4334
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->a:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4336
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getCallTimeDuration()Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "binding.timeLayout"

    const/16 v6, 0x8

    const-string v7, "binding.noData"

    if-nez v3, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_14

    .line 4337
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->m:Landroid/widget/TextView;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4338
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->m:Landroid/widget/TextView;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4339
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->m:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4340
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->p:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 4342
    :cond_14
    :goto_6
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->m:Landroid/widget/TextView;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4343
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->p:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4344
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    check-cast v3, Landroidx/m/a;

    .line 5031
    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;Landroidx/m/a;)V

    .line 4346
    :goto_7
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getShowSeparator()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4347
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v2, v2, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->o:Landroid/view/View;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4348
    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;->r:Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->o:Landroid/view/View;

    const v2, 0x7f0600f3

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_15
    return-void

    .line 1401
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    const-string v0, "parent"

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 1371
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/databinding/CallDurationItemBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallDurationItemBinding;

    move-result-object p1

    const-string p2, "CallDurationItemBinding.\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1372
    new-instance p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$CallDurationViewHolder;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationItemBinding;)V

    check-cast p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;

    goto :goto_0

    .line 1375
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid view type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1366
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

    move-result-object p1

    const-string p2, "CallDurationGraphItemBin\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1367
    new-instance p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$ProfilePictureViewHolder;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;)V

    check-cast p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;

    goto :goto_0

    .line 1361
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;

    move-result-object p1

    const-string p2, "FavoritePeopleListItemBi\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    new-instance p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/FavoritePeopleListItemBinding;)V

    check-cast p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;

    goto :goto_0

    .line 1357
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    move-result-object p1

    const-string p2, "NumberOfCallsItemBinding\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    new-instance p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$NumberOfCallsViewHolder;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;)V

    check-cast p2, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$BaseViewHolder;

    .line 31
    :goto_0
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$v;

    return-object p2
.end method
