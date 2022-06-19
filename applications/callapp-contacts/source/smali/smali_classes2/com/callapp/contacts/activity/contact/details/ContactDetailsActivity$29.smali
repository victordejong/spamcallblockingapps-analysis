.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->toggleDialpad(ZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ZII)V
    .locals 0

    .line 1962
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->d:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->a:Z

    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->b:I

    iput p4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1965
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->d:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->a:Z

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3802(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z

    .line 1967
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->d:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    .line 1968
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->d:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1970
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->b:I

    iget v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->c:I

    invoke-static {v3, v1, v4, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(ZIII)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    move-result-object v1

    .line 1972
    :cond_0
    iget-boolean v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->a:Z

    if-eqz v4, :cond_1

    const v3, 0x7f0a0547

    .line 1973
    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->d()V

    return-void

    .line 1975
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->d:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1977
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;->d:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    move-result-object v2

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;Landroidx/fragment/app/s;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V

    invoke-interface {v2, v3, v4}, Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;->a(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method
