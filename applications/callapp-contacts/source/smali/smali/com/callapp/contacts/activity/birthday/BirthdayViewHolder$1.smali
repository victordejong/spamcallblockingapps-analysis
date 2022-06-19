.class Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

.field final synthetic b:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;)V

    return-void
.end method
