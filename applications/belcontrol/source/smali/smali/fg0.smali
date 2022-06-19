.class public final synthetic Lfg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Llh0;


# instance fields
.field public final synthetic a:Lcarbon/widget/PagerTabStrip;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/PagerTabStrip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfg0;->a:Lcarbon/widget/PagerTabStrip;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lfg0;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {v0, p1}, Lcarbon/widget/PagerTabStrip;->m(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
