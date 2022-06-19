.class final Lcom/criteo/publisher/advancednative/f$a;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/advancednative/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 0

    .line 55
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/f$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/f$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdClicked()V

    return-void
.end method
