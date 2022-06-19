.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$2;
.super Landroidx/viewpager/widget/ViewPager$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$2;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$h;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$2;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->c(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Lcom/callapp/contacts/widget/CirclePaginationContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->setCheckedPosition(I)V

    return-void
.end method
