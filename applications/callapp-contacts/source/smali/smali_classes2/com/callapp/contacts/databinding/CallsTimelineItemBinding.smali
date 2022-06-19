.class public final Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

.field private final b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;


# direct methods
.method private constructor <init>(Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->a:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;
    .locals 1

    const-string v0, "rootView"

    .line 52
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    check-cast p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    .line 57
    new-instance v0, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

    invoke-direct {v0, p0, p0}, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;-><init>(Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->getRoot()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    return-object v0
.end method
