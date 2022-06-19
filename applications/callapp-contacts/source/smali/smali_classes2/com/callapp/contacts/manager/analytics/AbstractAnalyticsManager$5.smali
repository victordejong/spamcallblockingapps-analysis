.class Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$5;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$5;->a:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$5;->a:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->i()V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
