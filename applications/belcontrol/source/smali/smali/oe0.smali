.class public final synthetic Loe0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcarbon/widget/RecyclerView$d;


# instance fields
.field public final synthetic a:Lcarbon/widget/AutoCompleteLayout;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/AutoCompleteLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe0;->a:Lcarbon/widget/AutoCompleteLayout;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Loe0;->a:Lcarbon/widget/AutoCompleteLayout;

    check-cast p2, Lcarbon/widget/AutoCompleteEditText$c;

    invoke-virtual {v0, p1, p2, p3}, Lcarbon/widget/AutoCompleteLayout;->w(Landroid/view/View;Lcarbon/widget/AutoCompleteEditText$c;I)V

    return-void
.end method
