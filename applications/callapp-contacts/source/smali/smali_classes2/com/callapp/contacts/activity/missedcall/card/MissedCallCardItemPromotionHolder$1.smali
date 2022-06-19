.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;

.field final synthetic b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$1;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$1;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$1;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;->r_()V

    :cond_0
    return-void
.end method
