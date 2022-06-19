.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->c(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->d(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
