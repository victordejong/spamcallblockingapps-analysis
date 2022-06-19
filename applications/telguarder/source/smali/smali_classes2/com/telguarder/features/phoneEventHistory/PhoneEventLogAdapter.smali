.class public Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PhoneEventLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;,
        Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final clickListener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

.field private detailLoading:Z

.field private focusedPosition:I

.field private mActionDownHandler:Landroid/os/Handler;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->detailLoading:Z

    .line 56
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->values:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->clickListener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->values:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->mActionDownHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->mActionDownHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->detailLoading:Z

    return p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->focusedPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->applyTypeFaceOnViews(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->setCallType(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->setCallTime(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    return-void
.end method

.method private applyTypeFaceOnViews(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;)V
    .locals 3

    .line 70
    iget-object v0, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    iget-object v1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/telguarder/helpers/ui/FontManager;->getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    iget-object v1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->phoneNumber:Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/telguarder/helpers/ui/FontManager;->getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->dateTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/helpers/ui/FontManager;->getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private setCallTime(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 3

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 277
    iget-wide v1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 279
    invoke-static {v0}, Lcom/telguarder/helpers/dateUtils/DateUtils;->isToday(Ljava/util/Calendar;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 280
    iget-object p2, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->dateTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/telguarder/helpers/dateUtils/DateTimeFormatter;->getTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {v0}, Lcom/telguarder/helpers/dateUtils/DateUtils;->isCurrentWeek(Ljava/util/Calendar;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 282
    invoke-static {v0}, Lcom/telguarder/helpers/dateUtils/DateTimeFormatter;->getDayName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 284
    :cond_1
    iget-object p2, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->dateTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/telguarder/helpers/dateUtils/DateTimeFormatter;->getDate(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    .line 286
    :goto_0
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->dateTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCallType(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 3

    .line 251
    iget p2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    const v1, 0x7f070072

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    const v2, 0x7f070073

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const-string p2, "Unhandled call actorType!"

    .line 268
    invoke-static {p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    .line 269
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    const p2, 0x7f070071

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 253
    :cond_4
    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    const p2, 0x7f070070

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public add(ILcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->values:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hideItemDetailLoadingProgress()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->detailLoading:Z

    .line 240
    invoke-virtual {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->onBindViewHolder(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->clickListener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->bind(ILcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;
    .locals 2

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b005b

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public remove(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public showItemDetailLoadingProgress(I)V
    .locals 1

    .line 232
    iput p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->focusedPosition:I

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->detailLoading:Z

    .line 234
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyItemChanged(I)V

    return-void
.end method
