.class Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;
.super Lcom/callapp/contacts/manager/task/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:D

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->f:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->d:D

    iput-object p7, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->e:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->f:Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->d:D

    iget-object v6, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$1;->e:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
