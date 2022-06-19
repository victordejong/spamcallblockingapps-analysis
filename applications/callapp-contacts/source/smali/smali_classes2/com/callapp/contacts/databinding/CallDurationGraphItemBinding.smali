.class public final Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

.field private final b:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->b:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->a:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;
    .locals 2

    const v0, 0x7f0d006d

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "rootView"

    .line 1052
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1055
    check-cast p0, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    .line 1057
    new-instance p1, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;

    invoke-direct {p1, p0, p0}, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;-><init>(Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;)V

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->getRoot()Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CallDurationGraphItemBinding;->b:Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;

    return-object v0
.end method
