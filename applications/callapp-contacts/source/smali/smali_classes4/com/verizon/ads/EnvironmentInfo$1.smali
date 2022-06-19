.class Lcom/verizon/ads/EnvironmentInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/verizon/ads/EnvironmentInfo;


# direct methods
.method constructor <init>(Lcom/verizon/ads/EnvironmentInfo;Landroid/content/Context;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/verizon/ads/EnvironmentInfo$1;->b:Lcom/verizon/ads/EnvironmentInfo;

    iput-object p2, p0, Lcom/verizon/ads/EnvironmentInfo$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/verizon/ads/EnvironmentInfo;->a(Landroid/content/Context;)V

    return-void
.end method
