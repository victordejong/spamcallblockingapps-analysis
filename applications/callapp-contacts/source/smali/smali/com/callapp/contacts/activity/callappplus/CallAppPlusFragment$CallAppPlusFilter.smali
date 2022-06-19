.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallAppPlusFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 320
    iget-object v2, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 321
    iget-object v2, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v2, -0x1

    .line 322
    iput v2, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    .line 323
    iput v2, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    .line 326
    iget-object v3, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->d(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;

    move-result-object v3

    invoke-interface {v3}, Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;->isAllSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1300
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 1303
    iget-object v1, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1304
    iget-object v1, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1305
    iput v2, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    .line 1306
    iput v2, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    goto :goto_1

    .line 328
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 332
    :cond_2
    iget-object v2, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v2, v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget v2, v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->imNameStringResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 348
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->d(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;->isAllSelected()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v2, v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget v2, v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->imNameStringResId:I

    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 352
    :goto_2
    iget-object v5, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v5, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    .line 354
    iget-object v6, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, " "

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-static {v6, v8, p3, v7}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 356
    :goto_3
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 357
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-static {v5, v8, p3, v7}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-nez v6, :cond_5

    .line 361
    iget-object v4, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    :cond_5
    if-nez v3, :cond_6

    .line 365
    iget-object v4, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    :cond_6
    if-eqz v2, :cond_0

    if-nez v6, :cond_7

    if-eqz v3, :cond_0

    .line 374
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 263
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->d(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;->getActiveFilter()Ljava/util/List;

    move-result-object v2

    .line 268
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-direct {p0, v1, v2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 279
    :cond_1
    :goto_0
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 286
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter$1;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;Landroid/widget/Filter$FilterResults;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
