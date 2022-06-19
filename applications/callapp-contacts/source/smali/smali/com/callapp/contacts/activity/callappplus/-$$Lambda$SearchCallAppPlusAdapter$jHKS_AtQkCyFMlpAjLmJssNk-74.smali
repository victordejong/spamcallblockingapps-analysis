.class public final synthetic Lcom/callapp/contacts/activity/callappplus/-$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk-74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk-74;->f$0:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk-74;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk-74;->f$0:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk-74;->f$1:Z

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;->lambda$jHKS_AtQkCyFMlpAjLmJssNk-74(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V

    return-void
.end method
