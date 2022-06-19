.class public Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$d;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;


# direct methods
.method public constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$d;->a:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$d;->a:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->g(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V

    return-void
.end method
