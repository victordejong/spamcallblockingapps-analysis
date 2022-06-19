.class Lcom/callapp/contacts/activity/EditUserProfileActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->sendChangedDataToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$15;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1695
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$15;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2900(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    move-result-object p1

    .line 2149
    iget-object p1, p1, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->clear()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
