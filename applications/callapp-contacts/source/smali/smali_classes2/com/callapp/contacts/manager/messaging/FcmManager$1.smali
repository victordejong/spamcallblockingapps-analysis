.class Lcom/callapp/contacts/manager/messaging/FcmManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/messaging/FcmManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/f<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/messaging/FcmManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/messaging/FcmManager;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/manager/messaging/FcmManager$1;->a:Lcom/callapp/contacts/manager/messaging/FcmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 55
    check-cast p1, Ljava/lang/String;

    .line 1058
    new-instance v0, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;-><init>(Lcom/callapp/contacts/manager/messaging/FcmManager$1;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
