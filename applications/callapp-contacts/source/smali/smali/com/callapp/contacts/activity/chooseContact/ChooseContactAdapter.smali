.class public Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;
.super Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field public static final c:[Ljava/lang/Character;


# instance fields
.field private final d:I

.field private e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Ljava/lang/Character;

.field private final g:Landroid/widget/Filter;

.field private h:Ljava/lang/String;

.field private i:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Z

.field private final n:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Character;

    .line 49
    sput-object v0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->c:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;ZLcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;Z",
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;-><init>(Ljava/util/List;)V

    .line 53
    sget-object v0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->c:[Ljava/lang/Character;

    iput-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->f:[Ljava/lang/Character;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->l:Z

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->i:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 67
    iput-boolean p3, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->m:Z

    .line 68
    iput-object p4, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->n:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    .line 70
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const p3, 0x7f060088

    invoke-static {p1, p3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->d:I

    .line 1300
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->l:Z

    .line 1301
    iput-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->j:Ljava/util/List;

    .line 1302
    iput-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->k:Ljava/util/List;

    .line 73
    new-instance p1, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;

    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-direct {p2}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->g:Landroid/widget/Filter;

    .line 2078
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->e:Ljava/util/LinkedHashMap;

    .line 2081
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 2082
    iget-object v1, p4, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2083
    iget-object p4, p4, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 2085
    invoke-static {p4}, Lcom/callapp/framework/util/StringUtils;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p4, 0x23

    .line 2088
    :cond_0
    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2089
    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->e:Ljava/util/LinkedHashMap;

    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2096
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 2097
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Character;

    iput-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->f:[Ljava/lang/Character;

    .line 2098
    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->k:Ljava/util/List;

    return-object p1
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Landroid/view/View;)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->isInMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 212
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->notifyDataSetChanged()V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->n:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 214
    invoke-static {p3, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 215
    iget-object p3, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->n:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p2, p1}, Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;->onListItemInteracted(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic a(Landroid/view/View;)Z
    .locals 3

    .line 220
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "Contact List"

    const-string v1, "Long pressed on calling from contact list"

    const-string v2, "Long Click"

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Z
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->k:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic lambda$-sLCAH8FcEiyJTKrZc52ZkvZVCo(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$p3QV1iFzaHrqhrCghW1mlEHIz1w(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 7

    .line 48
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 2175
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 2176
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    .line 2177
    iget-object v1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->i:Lcom/callapp/contacts/activity/base/ScrollEvents;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    .line 2180
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2182
    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2183
    iget-object v2, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2185
    :cond_0
    iget-object v2, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->d:I

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;

    move-result-object v2

    .line 2189
    iget v3, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    .line 2190
    iget v4, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    .line 2191
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 2192
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-gt v3, v5, :cond_1

    .line 2193
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->d:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x12

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2198
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2199
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v4, 0x7f08037c

    invoke-direct {v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    const/4 v4, 0x1

    .line 2371
    iput-boolean v4, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    const v4, 0x7f060244

    .line 2200
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v3

    .line 2201
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v5, 0x7f06008a

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3354
    iput-object v4, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 4307
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_1

    .line 2204
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 2207
    :goto_1
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 2208
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    .line 2209
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v1, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseContactAdapter$p3QV1iFzaHrqhrCghW1mlEHIz1w;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseContactAdapter$p3QV1iFzaHrqhrCghW1mlEHIz1w;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 2219
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/callapp/contacts/activity/base/CallAppRow;

    sget-object p2, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseContactAdapter$-sLCAH8FcEiyJTKrZc52ZkvZVCo;->INSTANCE:Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseContactAdapter$-sLCAH8FcEiyJTKrZc52ZkvZVCo;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->g:Landroid/widget/Filter;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 2

    if-ltz p1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->f:[Ljava/lang/Character;

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->e:Ljava/util/LinkedHashMap;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->e:Ljava/util/LinkedHashMap;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->f:[Ljava/lang/Character;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 128
    iget-object v4, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->e:Ljava/util/LinkedHashMap;

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v0

    :cond_0
    if-ge v3, p1, :cond_1

    sub-int v3, p1, v3

    if-ge v3, v2, :cond_1

    move v1, v0

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->f:[Ljava/lang/Character;

    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 5104
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;

    new-instance v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_SEARCH_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 6079
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5105
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 7074
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5106
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method
