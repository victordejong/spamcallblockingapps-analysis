.class Lcom/callapp/contacts/CallAppApplication$32;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V
    .locals 0

    .line 1778
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$32;->b:Lcom/callapp/contacts/CallAppApplication;

    iput-object p2, p0, Lcom/callapp/contacts/CallAppApplication$32;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$32;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->safeRun(Ljava/lang/Runnable;)V

    return-void
.end method
