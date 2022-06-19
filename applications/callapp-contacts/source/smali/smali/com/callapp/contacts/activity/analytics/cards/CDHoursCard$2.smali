.class Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V

    return-void
.end method
