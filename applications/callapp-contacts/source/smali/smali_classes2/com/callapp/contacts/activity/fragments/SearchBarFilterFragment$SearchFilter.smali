.class public Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;


# direct methods
.method protected constructor <init>(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    .line 163
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v2, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 168
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;-><init>(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;Landroid/widget/Filter$FilterResults;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
