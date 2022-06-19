.class final Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x1

    .line 122
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactId()J

    move-result-wide v2

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->getContactPhone()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->INSIGHTS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "InsightsFavoritePeople"

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "ContactDetailsActivity.c\u2026le\", ENTRYPOINT.INSIGHTS)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder$bind$3;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter$FavoritePeopleViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
