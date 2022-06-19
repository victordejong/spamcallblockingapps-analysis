.class Lcom/applovin/impl/adview/activity/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/t;Lcom/applovin/impl/adview/a;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/t;

.field public final synthetic b:J

.field public final synthetic c:Lcom/applovin/impl/adview/activity/a/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/activity/a/c;Lcom/applovin/impl/adview/t;J)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/a/c$3;->c:Lcom/applovin/impl/adview/activity/a/c;

    iput-object p2, p0, Lcom/applovin/impl/adview/activity/a/c$3;->a:Lcom/applovin/impl/adview/t;

    iput-wide p3, p0, Lcom/applovin/impl/adview/activity/a/c$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/c$3;->a:Lcom/applovin/impl/adview/t;

    iget-wide v1, p0, Lcom/applovin/impl/adview/activity/a/c$3;->b:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/p;->b(Landroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method
