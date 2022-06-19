.class public final synthetic Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;

.field public final synthetic f$1:Landroid/telecom/Call;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;Landroid/telecom/Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E;->f$0:Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E;->f$1:Landroid/telecom/Call;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E;->f$0:Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E;->f$1:Landroid/telecom/Call;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->lambda$t7foFZ7JjfLPhMlvTK4Ey78n90E(Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;Landroid/telecom/Call;)V

    return-void
.end method
