.class Lcom/callapp/contacts/activity/analytics/graph/DecoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/graph/DecoView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/DecoView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView$1;->a:Lcom/callapp/contacts/activity/analytics/graph/DecoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView$1;->a:Lcom/callapp/contacts/activity/analytics/graph/DecoView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->invalidate()V

    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView$1;->a:Lcom/callapp/contacts/activity/analytics/graph/DecoView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->invalidate()V

    return-void
.end method
