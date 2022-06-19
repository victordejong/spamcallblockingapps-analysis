.class final Lcom/callapp/contacts/util/ListsUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/action/ActionDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ListsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$1;->a:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ListsUtils$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ListsUtils$1$1;-><init>(Lcom/callapp/contacts/util/ListsUtils$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method
