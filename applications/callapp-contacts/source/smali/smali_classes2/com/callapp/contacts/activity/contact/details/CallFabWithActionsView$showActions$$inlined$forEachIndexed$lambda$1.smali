.class final Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:J


# direct methods
.method constructor <init>(ILcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;J)V
    .locals 0

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;->a:I

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;->b:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;->c:Ljava/util/List;

    iput-wide p4, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 212
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;->a:I

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;->b:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->f(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;->b:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->g(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V

    :cond_0
    return-void
.end method
