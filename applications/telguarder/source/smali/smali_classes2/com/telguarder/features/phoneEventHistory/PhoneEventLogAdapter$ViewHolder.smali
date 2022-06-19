.class public Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PhoneEventLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public callLoading:Landroid/widget/ProgressBar;

.field public callType:Landroid/widget/ImageView;

.field public dateTime:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public phoneNumber:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Landroid/view/View;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    .line 92
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0800a4

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const p1, 0x7f0800a5

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    const p1, 0x7f0800a2

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    const p1, 0x7f0800a1

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callLoading:Landroid/widget/ProgressBar;

    const p1, 0x7f0800a3

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->dateTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(ILcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;)V
    .locals 9

    .line 101
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$000(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 103
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "[a-zA-Z]+"

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 106
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;

    invoke-direct {v2, p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$2;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$3;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$200(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Z

    move-result p2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$300(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v6, 0x7f050046

    invoke-static {p2, v6}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v6, 0x7f050130

    invoke-static {p2, v6}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_1
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result p1

    const p2, 0x3f19999a    # 0.6f

    const v6, 0x7f050119

    const-string v7, ""

    if-eqz p1, :cond_3

    .line 162
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const v6, 0x7f050118

    :goto_2
    invoke-static {p1, v6}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p1

    .line 163
    iget-object v6, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v6, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 166
    :cond_3
    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 167
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p1

    .line 168
    iget-object v6, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v6, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 172
    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v6, 0x7f05012a

    invoke-static {p2, v6}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v6, 0x7f050128

    invoke-static {p2, v6}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 177
    :goto_3
    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 178
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 179
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_5

    .line 181
    :cond_5
    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 182
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v3, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/telguarder/helpers/contact/ContactUtils;->getUnknownNumberWithRegionDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_5

    .line 185
    :cond_6
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/helpers/contact/ContactUtils;->getHiddenNumberDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_5

    .line 189
    :cond_7
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 192
    :goto_5
    iget p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->counter:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_9

    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 194
    :cond_9
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_c

    .line 195
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 197
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 198
    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 199
    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 200
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 201
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 202
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 203
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1000b7

    invoke-static {p2, v1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 206
    :cond_a
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 210
    :cond_b
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 214
    :cond_c
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 215
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 216
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 217
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamDateShort()Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_6
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$400(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;)V

    .line 224
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p1, p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$500(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 225
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p1, p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$600(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    return-void
.end method
