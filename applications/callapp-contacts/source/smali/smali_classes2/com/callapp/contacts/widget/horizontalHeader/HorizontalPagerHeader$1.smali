.class Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$1;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder<",
        "Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$1;->b:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public getPageTransformer()Landroidx/viewpager/widget/ViewPager$f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
