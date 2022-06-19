.class public Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$c;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;


# direct methods
.method public constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->i(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)V

    return-void
.end method
