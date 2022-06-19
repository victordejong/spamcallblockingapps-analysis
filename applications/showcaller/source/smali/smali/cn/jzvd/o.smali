.class public final synthetic Lcn/jzvd/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcn/jzvd/JzvdStd;

.field public final synthetic e:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcn/jzvd/JzvdStd;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jzvd/o;->d:Lcn/jzvd/JzvdStd;

    iput-object p2, p0, Lcn/jzvd/o;->e:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/jzvd/o;->d:Lcn/jzvd/JzvdStd;

    iget-object v1, p0, Lcn/jzvd/o;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p1}, Lcn/jzvd/JzvdStd;->l0(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method
