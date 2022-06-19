.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 2

    .line 276
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hk:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hk:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hg:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x46

    if-nez v0, :cond_2

    .line 277
    :cond_1
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;)V

    const/16 v1, 0x4b0

    .line 282
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    .line 284
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hg:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 1039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 285
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hk:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 286
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$502(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_3
    return-void
.end method
