.class public Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "IdentifyContactsTaskManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 36
    new-instance v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$1;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
