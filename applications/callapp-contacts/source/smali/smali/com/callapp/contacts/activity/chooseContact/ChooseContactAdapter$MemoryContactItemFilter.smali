.class Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryContactItemFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

.field private b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    return-void
.end method

.method private a(Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->b(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->b(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 239
    :try_start_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 242
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a(Landroid/widget/Filter$FilterResults;)V

    .line 243
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a()V

    return-object v0

    .line 248
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 249
    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->b(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 251
    iget-object v4, v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9NoZero:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->c(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Z

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "search"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1026
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1027
    invoke-static {v2, v4}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 1029
    :cond_4
    invoke-static {v2, v4}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1026
    :goto_1
    iput-object v4, v2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    .line 1031
    iput-object v3, v2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b:Ljava/lang/String;

    .line 1032
    new-instance v3, Landroid/util/Pair;

    iget-object v4, v2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    iget-object v1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object p1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 262
    iget-object p1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 263
    :cond_6
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 264
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a(Landroid/widget/Filter$FilterResults;)V

    .line 265
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 267
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 268
    iput v5, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 269
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 272
    :cond_8
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a(Landroid/widget/Filter$FilterResults;)V

    .line 273
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "PERFORM FILTERING"

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "publishResults from filter: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;Ljava/util/List;)Ljava/util/List;

    .line 294
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter$MemoryContactItemFilter;->a:Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->d(Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
