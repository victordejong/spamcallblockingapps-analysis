.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;
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

    .line 203
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$1;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$1;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$102(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z

    return-void
.end method
