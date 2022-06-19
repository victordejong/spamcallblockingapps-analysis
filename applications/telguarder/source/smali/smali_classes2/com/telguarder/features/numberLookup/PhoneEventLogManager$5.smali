.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$5;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->preloadFinalPhoneCallLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$5;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$5;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$5;->val$context:Landroid/content/Context;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getMergedCallLookupResultsFromCache(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->loadCallLogWitResultsFromBackend(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void
.end method
