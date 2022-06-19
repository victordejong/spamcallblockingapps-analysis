.class Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$2;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$2;->b:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$2;->b:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
