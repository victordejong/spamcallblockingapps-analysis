.class Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9$1;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    return-void
.end method
