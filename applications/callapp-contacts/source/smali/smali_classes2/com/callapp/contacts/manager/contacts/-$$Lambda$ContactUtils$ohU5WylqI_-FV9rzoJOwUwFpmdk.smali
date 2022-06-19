.class public final synthetic Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$ohU5WylqI_-FV9rzoJOwUwFpmdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# direct methods
.method public synthetic constructor <init>(JLcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$ohU5WylqI_-FV9rzoJOwUwFpmdk;->f$0:J

    iput-object p3, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$ohU5WylqI_-FV9rzoJOwUwFpmdk;->f$1:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

    return-void
.end method


# virtual methods
.method public final onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 3

    iget-wide v0, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$ohU5WylqI_-FV9rzoJOwUwFpmdk;->f$0:J

    iget-object v2, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$ohU5WylqI_-FV9rzoJOwUwFpmdk;->f$1:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->lambda$ohU5WylqI_-FV9rzoJOwUwFpmdk(JLcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;Lcom/callapp/framework/phone/Phone;Z)V

    return-void
.end method
