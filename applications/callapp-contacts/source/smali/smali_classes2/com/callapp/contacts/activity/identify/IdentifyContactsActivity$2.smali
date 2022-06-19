.class Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;Landroid/view/View;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 149
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 151
    new-instance v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2$1;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
