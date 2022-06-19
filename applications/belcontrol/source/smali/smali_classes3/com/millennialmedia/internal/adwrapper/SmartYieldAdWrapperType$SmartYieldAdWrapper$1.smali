.class public Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->fireWinUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;

.field public final synthetic val$winUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper$1;->this$0:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper$1;->val$winUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing smart yield win url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper$1;->val$winUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper$1;->val$winUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    return-void
.end method
