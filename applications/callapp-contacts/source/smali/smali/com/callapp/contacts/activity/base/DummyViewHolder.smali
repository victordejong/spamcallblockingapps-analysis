.class public Lcom/callapp/contacts/activity/base/DummyViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2

    const v0, 0x7f0d00f7

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 0

    return-void
.end method
