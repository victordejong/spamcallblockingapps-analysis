.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Filter$FilterResults;

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter$1;->a:Landroid/widget/Filter$FilterResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter$1;->a:Landroid/widget/Filter$FilterResults;

    iget-object v1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->setData(Ljava/util/List;)V

    return-void
.end method
