.class final Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/objectbox/a;


# direct methods
.method constructor <init>(Lio/objectbox/a;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$4;->a:Lio/objectbox/a;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$4;->a:Lio/objectbox/a;

    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Lio/objectbox/a;)V

    return-void
.end method
