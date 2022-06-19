.class Lcom/callapp/contacts/CallAppApplication$27;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$27;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    const/4 v0, 0x1

    .line 1424
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Z)V

    .line 1425
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->e()V

    .line 1426
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->f()V

    return-void
.end method
