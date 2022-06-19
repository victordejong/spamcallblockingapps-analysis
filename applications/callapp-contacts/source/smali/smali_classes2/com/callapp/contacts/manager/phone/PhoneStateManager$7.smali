.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->retryRequestAudioFocusIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 1193
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$7;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$7;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    return-void
.end method
