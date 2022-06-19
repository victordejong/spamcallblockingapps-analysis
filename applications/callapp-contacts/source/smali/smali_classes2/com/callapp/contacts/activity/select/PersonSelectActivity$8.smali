.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$8;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/PersonData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$8;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0, v0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Landroid/app/Activity;Lcom/callapp/contacts/model/PersonData;)V

    :cond_0
    return-void
.end method
