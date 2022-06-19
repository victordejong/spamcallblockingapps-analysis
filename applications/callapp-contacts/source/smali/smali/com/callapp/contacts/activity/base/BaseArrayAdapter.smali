.class public abstract Lcom/callapp/contacts/activity/base/BaseArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;I)Landroid/view/View;
.end method

.method protected abstract a(Landroid/view/View;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITT;)V"
        }
    .end annotation
.end method

.method protected abstract getLayoutResourceId(I)I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 33
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->getLayoutResourceId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 34
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->a(Landroid/view/View;ILjava/lang/Object;)V

    return-object p2
.end method
